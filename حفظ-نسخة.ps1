# حفظ نسخة (commit) عند أي تغيير
Set-Location "C:\تغلم الوضوء و الصلاة للأطفال"
git add -A
$changes = git status --porcelain
if ($changes) {
    $msg = "تحديث: $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
    git commit -m $msg
    Write-Host "✅ تم حفظ نسخة جديدة: $msg"
} else {
    Write-Host "ℹ️ لا توجد تغييرات لحفظها."
}
