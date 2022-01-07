; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_GetZoneAt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_GetZoneAt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"testing GetZoneAt...\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"CoInternetCreateZoneManager result: 0x%x\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"got 0x%x with 0x%x (expected E_INVALIDARG)\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"#%d: got x%x with %d (expected S_OK)\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"got 0x%x (expected S_OK)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetZoneAt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetZoneAt() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  %7 = call i32 @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @pCoInternetCreateZoneManager(i32* null, i32** %1, i32 0)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @S_OK, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = call i32 (i32, i8*, i64, ...) @ok(i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %14)
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  br label %91

20:                                               ; preds = %0
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @IInternetZoneManager_CreateZoneEnumerator(i32* %21, i64* %3, i64* %4, i32 0)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %81

27:                                               ; preds = %20
  store i64 3735928559, i64* %5, align 8
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @IInternetZoneManager_GetZoneAt(i32* %28, i64 3735928559, i64 0, i64* %5)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @E_INVALIDARG, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %5, align 8
  %37 = call i32 (i32, i8*, i64, ...) @ok(i32 %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %35, i64 %36)
  store i64 0, i64* %6, align 8
  br label %38

38:                                               ; preds = %55, %27
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  store i64 3735928559, i64* %5, align 8
  %43 = load i32*, i32** %1, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @IInternetZoneManager_GetZoneAt(i32* %43, i64 %44, i64 %45, i64* %5)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @S_OK, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %6, align 8
  %52 = load i32, i32* %2, align 4
  %53 = load i64, i64* %5, align 8
  %54 = call i32 (i32, i8*, i64, ...) @ok(i32 %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %51, i32 %52, i64 %53)
  br label %55

55:                                               ; preds = %42
  %56 = load i64, i64* %6, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %38

58:                                               ; preds = %38
  store i64 3735928559, i64* %5, align 8
  %59 = load i32*, i32** %1, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @IInternetZoneManager_GetZoneAt(i32* %59, i64 %60, i64 %61, i64* %5)
  store i32 %62, i32* %2, align 4
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @E_INVALIDARG, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %5, align 8
  %70 = call i32 (i32, i8*, i64, ...) @ok(i32 %66, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %68, i64 %69)
  %71 = load i32*, i32** %1, align 8
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @IInternetZoneManager_DestroyZoneEnumerator(i32* %71, i64 %72)
  store i32 %73, i32* %2, align 4
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @S_OK, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %2, align 4
  %79 = sext i32 %78 to i64
  %80 = call i32 (i32, i8*, i64, ...) @ok(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %79)
  br label %81

81:                                               ; preds = %58, %26
  %82 = load i32*, i32** %1, align 8
  %83 = call i32 @IInternetZoneManager_Release(i32* %82)
  store i32 %83, i32* %2, align 4
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @S_OK, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = call i32 (i32, i8*, i64, ...) @ok(i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %89)
  br label %91

91:                                               ; preds = %81, %19
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @pCoInternetCreateZoneManager(i32*, i32**, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IInternetZoneManager_CreateZoneEnumerator(i32*, i64*, i64*, i32) #1

declare dso_local i32 @IInternetZoneManager_GetZoneAt(i32*, i64, i64, i64*) #1

declare dso_local i32 @IInternetZoneManager_DestroyZoneEnumerator(i32*, i64) #1

declare dso_local i32 @IInternetZoneManager_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
