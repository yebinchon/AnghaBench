; ModuleID = '/home/carl/AnghaBench/vlc/src/win32/extr_dirs.c_config_GetUserDir.c'
source_filename = "/home/carl/AnghaBench/vlc/src/win32/extr_dirs.c_config_GetUserDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CSIDL_PERSONAL = common dso_local global i32 0, align 4
@CSIDL_MYMUSIC = common dso_local global i32 0, align 4
@CSIDL_MYPICTURES = common dso_local global i32 0, align 4
@CSIDL_MYVIDEO = common dso_local global i32 0, align 4
@CSIDL_LOCAL_APPDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @config_GetUserDir(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %23 [
    i32 134, label %5
    i32 138, label %8
    i32 129, label %8
    i32 139, label %10
    i32 137, label %12
    i32 135, label %12
    i32 130, label %12
    i32 131, label %12
    i32 136, label %12
    i32 133, label %14
    i32 132, label %17
    i32 128, label %20
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @CSIDL_PERSONAL, align 4
  %7 = call i8* @config_GetShellDir(i32 %6)
  store i8* %7, i8** %2, align 8
  br label %25

8:                                                ; preds = %1, %1
  %9 = call i8* (...) @config_GetAppDir()
  store i8* %9, i8** %2, align 8
  br label %25

10:                                               ; preds = %1
  %11 = call i8* (...) @config_GetAppDir()
  store i8* %11, i8** %2, align 8
  br label %25

12:                                               ; preds = %1, %1, %1, %1, %1
  %13 = call i8* @config_GetUserDir(i32 134)
  store i8* %13, i8** %2, align 8
  br label %25

14:                                               ; preds = %1
  %15 = load i32, i32* @CSIDL_MYMUSIC, align 4
  %16 = call i8* @config_GetShellDir(i32 %15)
  store i8* %16, i8** %2, align 8
  br label %25

17:                                               ; preds = %1
  %18 = load i32, i32* @CSIDL_MYPICTURES, align 4
  %19 = call i8* @config_GetShellDir(i32 %18)
  store i8* %19, i8** %2, align 8
  br label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @CSIDL_MYVIDEO, align 4
  %22 = call i8* @config_GetShellDir(i32 %21)
  store i8* %22, i8** %2, align 8
  br label %25

23:                                               ; preds = %1
  %24 = call i32 (...) @vlc_assert_unreachable()
  br label %25

25:                                               ; preds = %23, %20, %17, %14, %12, %10, %8, %5
  %26 = load i8*, i8** %2, align 8
  ret i8* %26
}

declare dso_local i8* @config_GetShellDir(i32) #1

declare dso_local i8* @config_GetAppDir(...) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
