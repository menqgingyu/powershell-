#
#

<#
用管理员权限的cmd命令行中，运行下列命令，开启powershell的.ps1脚本运行权限：
"C:\WINDOWS\system32\windowspowershell\v1.0\powershell.exe" -command "Set-ExecutionPolicy -ExecutionPolicy  bypass"
"C:\WINDOWS\syswow64\windowspowershell\v1.0\powershell.exe" -command "Set-ExecutionPolicy -ExecutionPolicy  bypass"

#>


[int32]$script:低阶晶石 = 0
[int32]$script:中阶晶石 = 0
[int32]$script:高阶晶石 = 0
[int32]$script:极品晶石 = 0
write-host 'CPU单核性能测试小程序，数字跑到1000结束。根据CPU性能不同，程序耗时2---10分钟不等，请等待。。。'
write-host 'Linux-MIY' -ForegroundColor Yellow

$开始时间 = Get-Date
for ([uint64]$i = 0; $i -lt 18446744073709551614 ;$i++ )
{
    $script:低阶晶石++
#    write-host "$script:低阶晶石 `r" -NoNewline

    if  ($script:低阶晶石 -gt 100)
    {
        
        $script:低阶晶石 = $script:低阶晶石 - 100
        $script:中阶晶石++
		if  ($script:中阶晶石 -gt 1000)
        {
            $script:中阶晶石 = $script:中阶晶石 - 1000
            $script:高阶晶石++
            write-host "$script:高阶晶石 `r" -NoNewline
            if  ($script:高阶晶石 -gt 1000)
            {
                $i
                break
            } 
        }
    
    }



}



$结束时间 = Get-Date
$计算耗时 = $结束时间 - $开始时间
$计算耗时



