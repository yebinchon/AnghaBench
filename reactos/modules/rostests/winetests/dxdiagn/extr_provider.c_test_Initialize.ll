; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dxdiagn/extr_provider.c_test_Initialize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dxdiagn/extr_provider.c_test_Initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i8*, i8* }

@CLSID_DxDiagProvider = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IDxDiagProvider = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@REGDB_E_CLASSNOTREG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Creating a IDxDiagProvider instance failed with %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to create a IDxDiagProvider instance\0A\00", align 1
@E_POINTER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"Expected IDxDiagProvider::Initialize to return E_POINTER, got %x\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [69 x i8] c"Expected IDxDiagProvider::Initialize to return E_INVALIDARG, got %x\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@DXDIAG_DX9_SDK_VERSION = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [61 x i8] c"Expected IDxDiagProvider::Initialize to return S_OK, got %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Initialize() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %5 = bitcast i32** %2 to i32*
  %6 = call i64 @CoCreateInstance(i32* @CLSID_DxDiagProvider, i32* null, i32 %4, i32* @IID_IDxDiagProvider, i32* %5)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %0
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @broken(i32 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %10, %0
  %18 = phi i1 [ true, %0 ], [ %16, %10 ]
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %1, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %1, align 8
  %23 = call i64 @FAILED(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 @skip(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %90

27:                                               ; preds = %17
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @IDxDiagProvider_Initialize(i32* %28, %struct.TYPE_3__* null)
  store i64 %29, i64* %1, align 8
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* @E_POINTER, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %1, align 8
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i32*, i32** %2, align 8
  %38 = call i64 @IDxDiagProvider_Initialize(i32* %37, %struct.TYPE_3__* %3)
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* %1, align 8
  %40 = load i64, i64* @E_INVALIDARG, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %1, align 8
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i64 %43)
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 33, i32* %45, align 8
  %46 = load i32*, i32** %2, align 8
  %47 = call i64 @IDxDiagProvider_Initialize(i32* %46, %struct.TYPE_3__* %3)
  store i64 %47, i64* %1, align 8
  %48 = load i64, i64* %1, align 8
  %49 = load i64, i64* @E_INVALIDARG, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %1, align 8
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i64 %52)
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 32, i32* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i8* null, i8** %55, align 8
  %56 = load i8*, i8** @FALSE, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load i32*, i32** %2, align 8
  %60 = call i64 @IDxDiagProvider_Initialize(i32* %59, %struct.TYPE_3__* %3)
  store i64 %60, i64* %1, align 8
  %61 = load i64, i64* %1, align 8
  %62 = load i64, i64* @E_INVALIDARG, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %1, align 8
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  %67 = load i8*, i8** @DXDIAG_DX9_SDK_VERSION, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i8* %67, i8** %68, align 8
  %69 = load i8*, i8** @FALSE, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i8* %69, i8** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load i32*, i32** %2, align 8
  %73 = call i64 @IDxDiagProvider_Initialize(i32* %72, %struct.TYPE_3__* %3)
  store i64 %73, i64* %1, align 8
  %74 = load i64, i64* %1, align 8
  %75 = load i64, i64* @S_OK, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %1, align 8
  %79 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %78)
  %80 = load i32*, i32** %2, align 8
  %81 = call i64 @IDxDiagProvider_Initialize(i32* %80, %struct.TYPE_3__* %3)
  store i64 %81, i64* %1, align 8
  %82 = load i64, i64* %1, align 8
  %83 = load i64, i64* @S_OK, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %1, align 8
  %87 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %86)
  %88 = load i32*, i32** %2, align 8
  %89 = call i32 @IDxDiagProvider_Release(i32* %88)
  br label %90

90:                                               ; preds = %27, %25
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @IDxDiagProvider_Initialize(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @IDxDiagProvider_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
