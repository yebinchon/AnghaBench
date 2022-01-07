; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advpack/extr_advpack.c_get_progfiles_dir.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advpack/extr_advpack.c_get_progfiles_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Software\\Microsoft\\Windows\\CurrentVersion\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"ProgramFilesDir\00", align 1
@PROG_FILES_ROOT = common dso_local global i64 0, align 8
@PROG_FILES = common dso_local global i32 0, align 4
@APP_PATH = common dso_local global i32 0, align 4
@TEST_STRING1 = common dso_local global i32 0, align 4
@APP_PATH_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_progfiles_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_progfiles_dir() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @MAX_PATH, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %5 = call i32 @RegOpenKeyA(i32 %4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32* %1)
  %6 = load i32, i32* %1, align 4
  %7 = load i64, i64* @PROG_FILES_ROOT, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @RegQueryValueExA(i32 %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, i32 %8, i32* %2)
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @RegCloseKey(i32 %10)
  %12 = load i32, i32* @PROG_FILES, align 4
  %13 = load i64, i64* @PROG_FILES_ROOT, align 8
  %14 = add nsw i64 %13, 3
  %15 = call i32 @lstrcpyA(i32 %12, i64 %14)
  %16 = load i32, i32* @APP_PATH, align 4
  %17 = load i64, i64* @PROG_FILES_ROOT, align 8
  %18 = call i32 @lstrcpyA(i32 %16, i64 %17)
  %19 = load i32, i32* @APP_PATH, align 4
  %20 = load i32, i32* @TEST_STRING1, align 4
  %21 = call i32 @lstrcatA(i32 %19, i32 %20)
  %22 = load i32, i32* @APP_PATH, align 4
  %23 = call i64 @lstrlenA(i32 %22)
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* @APP_PATH_LEN, align 8
  ret void
}

declare dso_local i32 @RegOpenKeyA(i32, i8*, i32*) #1

declare dso_local i32 @RegQueryValueExA(i32, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @lstrcpyA(i32, i64) #1

declare dso_local i32 @lstrcatA(i32, i32) #1

declare dso_local i64 @lstrlenA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
