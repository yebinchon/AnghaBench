; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_TfGuidAtom.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_TfGuidAtom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_cm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ITfCategoryMgr_RegisterGUID failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"atoms do not match\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"ITfCategoryMgr_GetGUID should have failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ITfCategoryMgr_GetGUID failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"guids do not match\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"ITfCategoryMgr_IsEqualTfGuidAtom should have failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"ITfCategoryMgr_IsEqualTfGuidAtom failed\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"Equal value invalid\0A\00", align 1
@tid = common dso_local global i64 0, align 8
@CLSID_FakeService = common dso_local global i32 0, align 4
@cid = common dso_local global i64 0, align 8
@GUID_NULL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"guid should not be NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_TfGuidAtom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_TfGuidAtom() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = call i32 @CoCreateGuid(i32* %1)
  %8 = load i32, i32* @g_cm, align 4
  %9 = call i64 @ITfCategoryMgr_RegisterGUID(i32 %8, i32* %1, i64* %4)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @SUCCEEDED(i64 %10)
  %12 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @g_cm, align 4
  %14 = call i64 @ITfCategoryMgr_RegisterGUID(i32 %13, i32* %1, i64* %5)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @SUCCEEDED(i64 %15)
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @g_cm, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @ITfCategoryMgr_GetGUID(i32 %23, i64 %24, i32* null)
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @E_INVALIDARG, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @g_cm, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @ITfCategoryMgr_GetGUID(i32 %31, i64 %32, i32* %2)
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @SUCCEEDED(i64 %34)
  %36 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %37 = call i32 @IsEqualGUID(i32* %2, i32* %1)
  %38 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32, i32* @g_cm, align 4
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @ITfCategoryMgr_IsEqualTfGuidAtom(i32 %39, i64 %40, i32* %1, i64* null)
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @E_INVALIDARG, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %47 = load i32, i32* @g_cm, align 4
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @ITfCategoryMgr_IsEqualTfGuidAtom(i32 %47, i64 %48, i32* %1, i64* %6)
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @SUCCEEDED(i64 %50)
  %52 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @TRUE, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %58 = load i32, i32* @g_cm, align 4
  %59 = load i64, i64* @tid, align 8
  %60 = call i64 @ITfCategoryMgr_IsEqualTfGuidAtom(i32 %58, i64 %59, i32* @CLSID_FakeService, i64* %6)
  store i64 %60, i64* %3, align 8
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @SUCCEEDED(i64 %61)
  %63 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @TRUE, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %69 = load i32, i32* @g_cm, align 4
  %70 = load i64, i64* @cid, align 8
  %71 = call i64 @ITfCategoryMgr_GetGUID(i32 %69, i64 %70, i32* %2)
  store i64 %71, i64* %3, align 8
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @SUCCEEDED(i64 %72)
  %74 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %75 = call i32 @IsEqualGUID(i32* %2, i32* @GUID_NULL)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @CoCreateGuid(i32*) #1

declare dso_local i64 @ITfCategoryMgr_RegisterGUID(i32, i32*, i64*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i64 @ITfCategoryMgr_GetGUID(i32, i64, i32*) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i64 @ITfCategoryMgr_IsEqualTfGuidAtom(i32, i64, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
