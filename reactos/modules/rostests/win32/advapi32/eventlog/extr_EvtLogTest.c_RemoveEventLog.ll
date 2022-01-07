; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/advapi32/eventlog/extr_EvtLogTest.c_RemoveEventLog.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/advapi32/eventlog/extr_EvtLogTest.c_RemoveEventLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i32] [i32 68, i32 101, i32 108, i32 101, i32 116, i32 105, i32 110, i32 103, i32 32, i32 108, i32 111, i32 103, i32 32, i32 37, i32 115, i32 46, i32 46, i32 46, i32 0], align 4
@HKEY_LOCAL_MACHINE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i32] [i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 115, i32 92, i32 69, i32 118, i32 101, i32 110, i32 116, i32 108, i32 111, i32 103, i32 0], align 4
@KEY_CREATE_SUB_KEY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@KEY_ENUMERATE_SUB_KEYS = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i32] [i32 83, i32 117, i32 99, i32 99, i32 101, i32 115, i32 115, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [9 x i32] [i32 70, i32 97, i32 105, i32 108, i32 117, i32 114, i32 101, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RemoveEventLog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %3, align 8
  store i8* null, i8** %9, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 (i8*, ...) @wprintf(i8* bitcast ([19 x i32]* @.str to i8*), i8* %11)
  %13 = load i64, i64* @HKEY_LOCAL_MACHINE, align 8
  %14 = load i32, i32* @KEY_CREATE_SUB_KEY, align 4
  %15 = call i64 @RegOpenKeyExW(i64 %13, i8* bitcast ([43 x i32]* @.str.1 to i8*), i32 0, i32 %14, i64* %5)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %71

20:                                               ; preds = %1
  %21 = load i64, i64* %5, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = load i32, i32* @KEY_ENUMERATE_SUB_KEYS, align 4
  %24 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %25 = or i32 %23, %24
  %26 = call i64 @RegOpenKeyExW(i64 %21, i8* %22, i32 0, i32 %25, i64* %6)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @ERROR_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %71

31:                                               ; preds = %20
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @RegQueryInfoKeyW(i64 %32, i32* null, i32* null, i32* null, i32* null, i32* %7, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @ERROR_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %71

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i64 @HeapAlloc(i32 %41, i32 0, i32 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %38
  br label %71

51:                                               ; preds = %38
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %59, %51
  %54 = load i64, i64* %6, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i64 @RegEnumKeyExW(i64 %54, i32 0, i8* %55, i32* %8, i32* null, i32* null, i32* null, i32* null)
  %57 = load i64, i64* @ERROR_SUCCESS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i64, i64* %6, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @RegDeleteKeyW(i64 %60, i8* %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %8, align 4
  br label %53

64:                                               ; preds = %53
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @RegFlushKey(i64 %65)
  %67 = call i32 (...) @GetProcessHeap()
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @HeapFree(i32 %67, i32 0, i8* %68)
  %70 = load i64, i64* @TRUE, align 8
  store i64 %70, i64* %3, align 8
  br label %71

71:                                               ; preds = %64, %50, %37, %30, %19
  %72 = load i64, i64* %3, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @RegCloseKey(i64 %75)
  %77 = load i64, i64* %5, align 8
  %78 = load i8*, i8** %2, align 8
  %79 = call i32 @RegDeleteKeyW(i64 %77, i8* %78)
  %80 = call i32 (i8*, ...) @wprintf(i8* bitcast ([9 x i32]* @.str.2 to i8*))
  br label %89

81:                                               ; preds = %71
  %82 = load i64, i64* %6, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @RegCloseKey(i64 %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = call i32 (i8*, ...) @wprintf(i8* bitcast ([9 x i32]* @.str.3 to i8*))
  br label %89

89:                                               ; preds = %87, %74
  %90 = load i64, i64* %5, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @RegCloseKey(i64 %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i64, i64* %3, align 8
  ret i64 %96
}

declare dso_local i32 @wprintf(i8*, ...) #1

declare dso_local i64 @RegOpenKeyExW(i64, i8*, i32, i32, i64*) #1

declare dso_local i64 @RegQueryInfoKeyW(i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @RegEnumKeyExW(i64, i32, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegDeleteKeyW(i64, i8*) #1

declare dso_local i32 @RegFlushKey(i64) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @RegCloseKey(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
