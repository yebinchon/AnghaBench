; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_bstr_cache.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_bstr_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_bstr_cache.testW = internal constant [5 x i8] c"test\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"OANOCACHE\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"BSTR cache is disabled, some tests will be skipped.\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"unexpected len\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"string changed\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"str != str2\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"str != strs[0]\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"str2 != strs[1]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_bstr_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bstr_cache() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca [20 x i64], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = call i64 @GetEnvironmentVariableA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @skip(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %91

10:                                               ; preds = %0
  %11 = call i64 @SysAllocString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_bstr_cache.testW, i64 0, i64 0))
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @SysFreeString(i64 %12)
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @SysFreeString(i64 %14)
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @SysStringLen(i64 %16)
  %18 = icmp eq i32 %17, 4
  %19 = zext i1 %18 to i32
  %20 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @lstrcmpW(i64 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_bstr_cache.testW, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i64 @SysAllocString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_bstr_cache.testW, i64 0, i64 0))
  store i64 %27, i64* %2, align 8
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* %2, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %33 = load i64, i64* %2, align 8
  %34 = call i32 @SysFreeString(i64 %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %50, %10
  %36 = load i32, i32* %4, align 4
  %37 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i64 0, i64 0
  %38 = call i32 @ARRAY_SIZE(i64* %37)
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = call i64* @CoTaskMemAlloc(i32 64)
  store i64* %41, i64** %5, align 8
  %42 = load i64*, i64** %5, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  store i64 0, i64* %43, align 8
  %44 = load i64*, i64** %5, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = ptrtoint i64* %45 to i64
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i64 0, i64 %48
  store i64 %46, i64* %49, align 8
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %4, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %35

53:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %65, %53
  %55 = load i32, i32* %4, align 4
  %56 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i64 0, i64 0
  %57 = call i32 @ARRAY_SIZE(i64* %56)
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i64 0, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @SysFreeString(i64 %63)
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %54

68:                                               ; preds = %54
  %69 = call i64 @SysAllocStringLen(i32* null, i32 24)
  store i64 %69, i64* %1, align 8
  %70 = load i64, i64* %1, align 8
  %71 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i64 0, i64 0
  %72 = load i64, i64* %71, align 16
  %73 = icmp eq i64 %70, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %76 = call i64 @SysAllocStringLen(i32* null, i32 16)
  store i64 %76, i64* %2, align 8
  %77 = load i64, i64* %2, align 8
  %78 = getelementptr inbounds [20 x i64], [20 x i64]* %3, i64 0, i64 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %77, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %83 = load i64, i64* %1, align 8
  %84 = call i32 @SysFreeString(i64 %83)
  %85 = load i64, i64* %2, align 8
  %86 = call i32 @SysFreeString(i64 %85)
  %87 = load i64, i64* %1, align 8
  %88 = call i32 @SysFreeString(i64 %87)
  %89 = load i64, i64* %2, align 8
  %90 = call i32 @SysFreeString(i64 %89)
  br label %91

91:                                               ; preds = %68, %8
  ret void
}

declare dso_local i64 @GetEnvironmentVariableA(i8*, i32*, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @SysAllocString(i8*) #1

declare dso_local i32 @SysFreeString(i64) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SysStringLen(i64) #1

declare dso_local i32 @lstrcmpW(i64, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64* @CoTaskMemAlloc(i32) #1

declare dso_local i64 @SysAllocStringLen(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
