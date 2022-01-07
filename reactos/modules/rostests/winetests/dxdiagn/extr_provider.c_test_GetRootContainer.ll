; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dxdiagn/extr_provider.c_test_GetRootContainer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dxdiagn/extr_provider.c_test_GetRootContainer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32 }

@CLSID_DxDiagProvider = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IDxDiagProvider = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@REGDB_E_CLASSNOTREG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Creating a IDxDiagProvider instance failed with %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to create a IDxDiagProvider instance\0A\00", align 1
@CO_E_NOTINITIALIZED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [82 x i8] c"Expected IDxDiagProvider::GetRootContainer to return CO_E_NOTINITIALIZED, got %x\0A\00", align 1
@DXDIAG_DX9_SDK_VERSION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"Expected IDxDiagProvider::Initialize to return S_OK, got %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"IDxDiagProvider::Initialize failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"Expected IDxDiagProvider::GetRootContainer to return S_OK, got %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Expected the two pointers (%p vs. %p) to be unequal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetRootContainer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetRootContainer() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %7 = bitcast i32** %2 to i32*
  %8 = call i64 @CoCreateInstance(i32* @CLSID_DxDiagProvider, i32* null, i32 %6, i32* @IID_IDxDiagProvider, i32* %7)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %0
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @broken(i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %12, %0
  %20 = phi i1 [ true, %0 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %1, align 8
  %23 = call i32 (i32, i8*, i64, ...) @ok(i32 %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* %1, align 8
  %25 = call i64 @FAILED(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 @skip(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %98

29:                                               ; preds = %19
  %30 = load i32*, i32** %2, align 8
  %31 = call i64 @IDxDiagProvider_GetRootContainer(i32* %30, i32** null)
  store i64 %31, i64* %1, align 8
  %32 = load i64, i64* %1, align 8
  %33 = load i64, i64* @CO_E_NOTINITIALIZED, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %1, align 8
  %37 = call i32 (i32, i8*, i64, ...) @ok(i32 %35, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i64 @IDxDiagProvider_GetRootContainer(i32* %38, i32** %3)
  store i64 %39, i64* %1, align 8
  %40 = load i64, i64* %1, align 8
  %41 = load i64, i64* @CO_E_NOTINITIALIZED, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %1, align 8
  %45 = call i32 (i32, i8*, i64, ...) @ok(i32 %43, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 24, i32* %46, align 8
  %47 = load i32, i32* @DXDIAG_DX9_SDK_VERSION, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @FALSE, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load i32*, i32** %2, align 8
  %53 = call i64 @IDxDiagProvider_Initialize(i32* %52, %struct.TYPE_3__* %5)
  store i64 %53, i64* %1, align 8
  %54 = load i64, i64* %1, align 8
  %55 = load i64, i64* @S_OK, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %1, align 8
  %59 = call i32 (i32, i8*, i64, ...) @ok(i32 %57, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = load i64, i64* %1, align 8
  %61 = call i64 @FAILED(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %29
  %64 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @IDxDiagProvider_Release(i32* %65)
  br label %98

67:                                               ; preds = %29
  %68 = load i32*, i32** %2, align 8
  %69 = call i64 @IDxDiagProvider_GetRootContainer(i32* %68, i32** %3)
  store i64 %69, i64* %1, align 8
  %70 = load i64, i64* %1, align 8
  %71 = load i64, i64* @S_OK, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %1, align 8
  %75 = call i32 (i32, i8*, i64, ...) @ok(i32 %73, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i64 %74)
  %76 = load i32*, i32** %2, align 8
  %77 = call i64 @IDxDiagProvider_GetRootContainer(i32* %76, i32** %4)
  store i64 %77, i64* %1, align 8
  %78 = load i64, i64* %1, align 8
  %79 = load i64, i64* @S_OK, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %1, align 8
  %83 = call i32 (i32, i8*, i64, ...) @ok(i32 %81, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i64 %82)
  %84 = load i32*, i32** %3, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = icmp ne i32* %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32*, i32** %3, align 8
  %89 = ptrtoint i32* %88 to i64
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 (i32, i8*, i64, ...) @ok(i32 %87, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i64 %89, i32* %90)
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @IDxDiagContainer_Release(i32* %92)
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @IDxDiagContainer_Release(i32* %94)
  %96 = load i32*, i32** %2, align 8
  %97 = call i32 @IDxDiagProvider_Release(i32* %96)
  br label %98

98:                                               ; preds = %67, %63, %27
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @IDxDiagProvider_GetRootContainer(i32*, i32**) #1

declare dso_local i64 @IDxDiagProvider_Initialize(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @IDxDiagProvider_Release(i32*) #1

declare dso_local i32 @IDxDiagContainer_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
