; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_win32.c_GetWindowsFontPath.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_win32.c_GetWindowsFontPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@CSIDL_FONTS = common dso_local global i32 0, align 4
@SHGFP_TYPE_CURRENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\\fonts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @GetWindowsFontPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @GetWindowsFontPath() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @MAX_PATH, align 4
  %4 = zext i32 %3 to i64
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %1, align 8
  %6 = alloca i32, i64 %4, align 16
  store i64 %4, i64* %2, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = load i32, i32* @CSIDL_FONTS, align 4
  %9 = load i32, i32* @SHGFP_TYPE_CURRENT, align 4
  %10 = call i64 @SHGetFolderPathW(i32* null, i32 %8, i32* null, i32 %9, i32* %6)
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %0
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = call i32 @GetWindowsDirectoryW(i32* %6, i32 %13)
  %15 = call i32 @TEXT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @wcscat(i32* %6, i32 %15)
  br label %17

17:                                               ; preds = %12, %0
  %18 = call i8* @FromWide(i32* %6)
  %19 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %19)
  ret i8* %18
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SHGetFolderPathW(i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @GetWindowsDirectoryW(i32*, i32) #2

declare dso_local i32 @wcscat(i32*, i32) #2

declare dso_local i32 @TEXT(i8*) #2

declare dso_local i8* @FromWide(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
