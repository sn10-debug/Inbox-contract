let fs=require('fs')
let path=require('path')
let sol_compiler=require('solc')



let dir_path=path.resolve(__dirname,'contract','inbox.sol')
let code=fs.readFileSync(dir_path,'utf-8')

module.exports=sol_compiler.compile(code,2)
