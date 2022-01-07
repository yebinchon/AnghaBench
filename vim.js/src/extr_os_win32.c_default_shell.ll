; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_default_shell.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_default_shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_PlatformId = common dso_local global i64 0, align 8
@VER_PLATFORM_WIN32_NT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"cmd.exe\00", align 1
@VER_PLATFORM_WIN32_WINDOWS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"command.com\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @default_shell() #0 {
  %1 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  %2 = call i32 (...) @PlatformId()
  %3 = load i64, i64* @g_PlatformId, align 8
  %4 = load i64, i64* @VER_PLATFORM_WIN32_NT, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %13

7:                                                ; preds = %0
  %8 = load i64, i64* @g_PlatformId, align 8
  %9 = load i64, i64* @VER_PLATFORM_WIN32_WINDOWS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %12

12:                                               ; preds = %11, %7
  br label %13

13:                                               ; preds = %12, %6
  %14 = load i8*, i8** %1, align 8
  ret i8* %14
}

declare dso_local i32 @PlatformId(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
