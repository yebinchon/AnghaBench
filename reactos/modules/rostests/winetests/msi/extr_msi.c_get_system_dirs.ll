; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_get_system_dirs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_get_system_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Software\\Microsoft\\Windows\\CurrentVersion\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ProgramFilesDir (x86)\00", align 1
@PROG_FILES_DIR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"ProgramFilesDir\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"CommonFilesDir (x86)\00", align 1
@COMMON_FILES_DIR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"CommonFilesDir\00", align 1
@PROG_FILES_DIR_NATIVE = common dso_local global i64 0, align 8
@WINDOWS_DIR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_system_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_system_dirs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %6 = call i64 @RegOpenKeyA(i32 %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32* %2)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %1, align 4
  br label %66

10:                                               ; preds = %0
  %11 = load i32, i32* @MAX_PATH, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i64, i64* @PROG_FILES_DIR, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i64 @RegQueryValueExA(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %3, i32 %14, i32* %4)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load i32, i32* %2, align 4
  %19 = load i64, i64* @PROG_FILES_DIR, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i64 @RegQueryValueExA(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* %3, i32 %20, i32* %4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @RegCloseKey(i32 %24)
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %1, align 4
  br label %66

27:                                               ; preds = %17, %10
  %28 = load i32, i32* @MAX_PATH, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i64, i64* @COMMON_FILES_DIR, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i64 @RegQueryValueExA(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* %3, i32 %31, i32* %4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load i32, i32* %2, align 4
  %36 = load i64, i64* @COMMON_FILES_DIR, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i64 @RegQueryValueExA(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* %3, i32 %37, i32* %4)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @RegCloseKey(i32 %41)
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %1, align 4
  br label %66

44:                                               ; preds = %34, %27
  %45 = load i32, i32* @MAX_PATH, align 4
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %2, align 4
  %47 = load i64, i64* @PROG_FILES_DIR_NATIVE, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i64 @RegQueryValueExA(i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* %3, i32 %48, i32* %4)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @RegCloseKey(i32 %52)
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %1, align 4
  br label %66

55:                                               ; preds = %44
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @RegCloseKey(i32 %56)
  %58 = load i32, i32* @WINDOWS_DIR, align 4
  %59 = load i32, i32* @MAX_PATH, align 4
  %60 = call i32 @GetWindowsDirectoryA(i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %1, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %1, align 4
  br label %66

66:                                               ; preds = %64, %62, %51, %40, %23, %8
  %67 = load i32, i32* %1, align 4
  ret i32 %67
}

declare dso_local i64 @RegOpenKeyA(i32, i8*, i32*) #1

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @GetWindowsDirectoryA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
