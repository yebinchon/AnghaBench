; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_CreateZoneEnumerator.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_CreateZoneEnumerator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"testing zone enumerator...\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"CoInternetCreateZoneManager result: 0x%x\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"got 0x%x with 0x%x (expected E_INVALIDARG with 0xdeadbeef)\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"got 0x%x and 0x%x (expected E_INVALIDARG and 0xdeadbeef)\0A\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"got 0x%x with 0x%x and 0x%x (expected E_INVALIDARG with 0xdeadbeef and 0xdeadbeef)\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"got 0x%x (expected S_OK)\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"got 0x%x (expected E_INVALIDARG)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateZoneEnumerator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateZoneEnumerator() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %7 = call i32 @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = call i64 @pCoInternetCreateZoneManager(i32* null, i32** %1, i32 0)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %2, align 8
  %14 = call i32 (i32, i8*, i64, ...) @ok(i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %2, align 8
  %16 = call i64 @FAILED(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  br label %145

19:                                               ; preds = %0
  store i32 -559038737, i32* %3, align 4
  %20 = load i32*, i32** %1, align 8
  %21 = call i64 @IInternetZoneManager_CreateZoneEnumerator(i32* %20, i32* %3, i32* null, i32 0)
  store i64 %21, i64* %2, align 8
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @E_INVALIDARG, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, -559038737
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i1 [ false, %19 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 (i32, i8*, i64, ...) @ok(i32 %30, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i64 %31, i32 %32)
  store i32 -559038737, i32* %5, align 4
  %34 = load i32*, i32** %1, align 8
  %35 = call i64 @IInternetZoneManager_CreateZoneEnumerator(i32* %34, i32* null, i32* %5, i32 0)
  store i64 %35, i64* %2, align 8
  %36 = load i64, i64* %2, align 8
  %37 = load i64, i64* @E_INVALIDARG, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, -559038737
  br label %42

42:                                               ; preds = %39, %28
  %43 = phi i1 [ false, %28 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i32, i8*, i64, ...) @ok(i32 %44, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i64 %45, i32 %46)
  store i32 -559038737, i32* %3, align 4
  store i32 -559038737, i32* %5, align 4
  %48 = load i32*, i32** %1, align 8
  %49 = call i64 @IInternetZoneManager_CreateZoneEnumerator(i32* %48, i32* %3, i32* %5, i32 -1)
  store i64 %49, i64* %2, align 8
  %50 = load i64, i64* %2, align 8
  %51 = load i64, i64* @E_INVALIDARG, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load i32, i32* %3, align 4
  %55 = icmp eq i32 %54, -559038737
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, -559038737
  br label %59

59:                                               ; preds = %56, %53, %42
  %60 = phi i1 [ false, %53 ], [ false, %42 ], [ %58, %56 ]
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (i32, i8*, i64, ...) @ok(i32 %61, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i64 %62, i32 %63, i32 %64)
  store i32 -559038737, i32* %3, align 4
  store i32 -559038737, i32* %5, align 4
  %66 = load i32*, i32** %1, align 8
  %67 = call i64 @IInternetZoneManager_CreateZoneEnumerator(i32* %66, i32* %3, i32* %5, i32 1)
  store i64 %67, i64* %2, align 8
  %68 = load i64, i64* %2, align 8
  %69 = load i64, i64* @E_INVALIDARG, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %59
  %72 = load i32, i32* %3, align 4
  %73 = icmp eq i32 %72, -559038737
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, -559038737
  br label %77

77:                                               ; preds = %74, %71, %59
  %78 = phi i1 [ false, %71 ], [ false, %59 ], [ %76, %74 ]
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %2, align 8
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i32, i8*, i64, ...) @ok(i32 %79, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i64 %80, i32 %81, i32 %82)
  store i32 -559038737, i32* %3, align 4
  store i32 -559038737, i32* %5, align 4
  %84 = load i32*, i32** %1, align 8
  %85 = call i64 @IInternetZoneManager_CreateZoneEnumerator(i32* %84, i32* %3, i32* %5, i32 0)
  store i64 %85, i64* %2, align 8
  %86 = load i64, i64* %2, align 8
  %87 = load i64, i64* @S_OK, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %2, align 8
  %91 = call i32 (i32, i8*, i64, ...) @ok(i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %90)
  %92 = load i64, i64* %2, align 8
  %93 = call i64 @SUCCEEDED(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %136

95:                                               ; preds = %77
  store i32 -559038737, i32* %4, align 4
  store i32 -559038737, i32* %6, align 4
  %96 = load i32*, i32** %1, align 8
  %97 = call i64 @IInternetZoneManager_CreateZoneEnumerator(i32* %96, i32* %4, i32* %6, i32 0)
  store i64 %97, i64* %2, align 8
  %98 = load i64, i64* %2, align 8
  %99 = load i64, i64* @S_OK, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i64, i64* %2, align 8
  %103 = call i32 (i32, i8*, i64, ...) @ok(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %102)
  %104 = load i64, i64* %2, align 8
  %105 = call i64 @SUCCEEDED(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %95
  %108 = load i32*, i32** %1, align 8
  %109 = load i32, i32* %4, align 4
  %110 = call i64 @IInternetZoneManager_DestroyZoneEnumerator(i32* %108, i32 %109)
  store i64 %110, i64* %2, align 8
  %111 = load i64, i64* %2, align 8
  %112 = load i64, i64* @S_OK, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i64, i64* %2, align 8
  %116 = call i32 (i32, i8*, i64, ...) @ok(i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %115)
  br label %117

117:                                              ; preds = %107, %95
  %118 = load i32*, i32** %1, align 8
  %119 = load i32, i32* %3, align 4
  %120 = call i64 @IInternetZoneManager_DestroyZoneEnumerator(i32* %118, i32 %119)
  store i64 %120, i64* %2, align 8
  %121 = load i64, i64* %2, align 8
  %122 = load i64, i64* @S_OK, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i64, i64* %2, align 8
  %126 = call i32 (i32, i8*, i64, ...) @ok(i32 %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %125)
  %127 = load i32*, i32** %1, align 8
  %128 = load i32, i32* %3, align 4
  %129 = call i64 @IInternetZoneManager_DestroyZoneEnumerator(i32* %127, i32 %128)
  store i64 %129, i64* %2, align 8
  %130 = load i64, i64* %2, align 8
  %131 = load i64, i64* @E_INVALIDARG, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i64, i64* %2, align 8
  %135 = call i32 (i32, i8*, i64, ...) @ok(i32 %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 %134)
  br label %136

136:                                              ; preds = %117, %77
  %137 = load i32*, i32** %1, align 8
  %138 = call i64 @IInternetZoneManager_Release(i32* %137)
  store i64 %138, i64* %2, align 8
  %139 = load i64, i64* %2, align 8
  %140 = load i64, i64* @S_OK, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i64, i64* %2, align 8
  %144 = call i32 (i32, i8*, i64, ...) @ok(i32 %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %143)
  br label %145

145:                                              ; preds = %136, %18
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i64 @pCoInternetCreateZoneManager(i32*, i32**, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IInternetZoneManager_CreateZoneEnumerator(i32*, i32*, i32*, i32) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IInternetZoneManager_DestroyZoneEnumerator(i32*, i32) #1

declare dso_local i64 @IInternetZoneManager_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
