; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/systeminfo/extr_systeminfo.c_RegGetDWORD.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/systeminfo/extr_systeminfo.c_RegGetDWORD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i32] [i32 87, i32 97, i32 114, i32 110, i32 105, i32 110, i32 103, i32 33, i32 32, i32 67, i32 97, i32 110, i32 110, i32 111, i32 116, i32 32, i32 111, i32 112, i32 101, i32 110, i32 32, i32 37, i32 115, i32 46, i32 32, i32 76, i32 97, i32 115, i32 116, i32 32, i32 101, i32 114, i32 114, i32 111, i32 114, i32 58, i32 32, i32 37, i32 108, i32 117, i32 46, i32 10, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i32] [i32 87, i32 97, i32 114, i32 110, i32 105, i32 110, i32 103, i32 33, i32 32, i32 67, i32 97, i32 110, i32 110, i32 111, i32 116, i32 32, i32 113, i32 117, i32 101, i32 114, i32 121, i32 32, i32 37, i32 115, i32 46, i32 32, i32 76, i32 97, i32 115, i32 116, i32 32, i32 101, i32 114, i32 114, i32 58, i32 32, i32 37, i32 108, i32 117, i32 44, i32 32, i32 116, i32 121, i32 112, i32 101, i32 58, i32 32, i32 37, i32 108, i32 117, i32 10, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i64*)* @RegGetDWORD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RegGetDWORD(i32 %0, i8* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 8, i64* %10, align 8
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %20 = call i64 @RegOpenKeyExW(i32 %17, i8* %18, i32 0, i32 %19, i32* %6)
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 (i8*, i8*, i32, ...) @wprintf(i8* bitcast ([43 x i32]* @.str to i8*), i8* %24, i32 %25)
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %5, align 4
  br label %55

28:                                               ; preds = %16, %4
  %29 = load i32, i32* %6, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i64*, i64** %9, align 8
  %32 = ptrtoint i64* %31 to i32
  %33 = call i64 @RegQueryValueExW(i32 %29, i8* %30, i32* null, i64* %11, i32 %32, i64* %10)
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @REG_DWORD, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36, %28
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 (...) @GetLastError()
  %43 = load i64, i64* %11, align 8
  %44 = call i32 (i8*, i8*, i32, ...) @wprintf(i8* bitcast ([52 x i32]* @.str.1 to i8*), i8* %41, i32 %42, i64 %43)
  %45 = load i64*, i64** %9, align 8
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %40, %36
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @RegCloseKey(i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %23
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @wprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i64*, i32, i64*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
