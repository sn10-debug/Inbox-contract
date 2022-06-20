let assert=require('assert')
let ganache=require('ganache-cli')
let Web3=require('web3')
let web3=new Web3(ganache.provider)

let {[":Inbox"] :{bytecode,interface} }=require('../compile')

let accounts,depployed_contract;
beforeEach(async function(){
accounts=await web3.eth.getAccounts()
depployed_contract=await new web3.eth.Contract(JSON.parse(interface)).deploy({data:bytecode,arguments:["Hello this Contract is compiled using  updated version of Solidity"]}).send({from:accounts[0],gas:'1000000'})

})


describe(()=>{
    it(function(){
        console.log(`Account Address : `,accounts[0])
        
    })
})