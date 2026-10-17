# إنشاء نسخة احتياطية (ZIP) في كل تغيير
$src = "C:\تغلم الوضوء و الصلاة للأطفال"
$backupDir = "C:\Users\ALMO\Backups\wudu-prayer-site"
New-Item -ItemType Directory -Force -Path $backupDir | Out-Null
$date = Get-Date -Format "yyyy-MM-dd_HH-mm"
$zip = "$backupDir\snapshot_$date.zip"
Compress-Archive -Path "$src\*" -DestinationPath $zip -Force
Write-Host "✅ تم إنشاء نسخة احتياطية: $zip"
