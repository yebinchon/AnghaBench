; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_automation.c_get_program_files_dir.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_automation.c_get_program_files_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_EXPAND_SZ = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Software\\Microsoft\\Windows\\CurrentVersion\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ProgramFilesDir (x86)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ProgramFilesDir\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @get_program_files_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_program_files_dir(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i32, i32* @REG_EXPAND_SZ, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %9 = call i64 @RegOpenKeyA(i32 %8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32* %4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load i32, i32* @MAX_PATH, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i64, i64* %3, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i64 @RegQueryValueExA(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %5, i32 %17, i32* %6)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = load i64, i64* %3, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i64 @RegQueryValueExA(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* %5, i32 %23, i32* %6)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %20, %13
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @RegCloseKey(i32 %29)
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %26, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @RegOpenKeyA(i32, i8*, i32*) #1

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
