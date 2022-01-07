; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dxdiagn/extr_container.c_test_DxDiag_SoundCaptureDevices.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dxdiagn/extr_container.c_test_DxDiag_SoundCaptureDevices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property_test = type { i8*, i32 }

@test_DxDiag_SoundCaptureDevices.szDescription = internal constant [14 x i8] c"szDescription\00", align 1
@test_DxDiag_SoundCaptureDevices.szGuidDeviceID = internal constant [15 x i8] c"szGuidDeviceID\00", align 1
@test_DxDiag_SoundCaptureDevices.szDriverPath = internal constant [13 x i8] c"szDriverPath\00", align 1
@test_DxDiag_SoundCaptureDevices.szDriverName = internal constant [13 x i8] c"szDriverName\00", align 1
@test_DxDiag_SoundCaptureDevices.property_tests = internal constant [4 x %struct.property_test] [%struct.property_test { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_DxDiag_SoundCaptureDevices.szDescription, i32 0, i32 0), i32 128 }, %struct.property_test { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_DxDiag_SoundCaptureDevices.szGuidDeviceID, i32 0, i32 0), i32 128 }, %struct.property_test { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_DxDiag_SoundCaptureDevices.szDriverName, i32 0, i32 0), i32 128 }, %struct.property_test { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_DxDiag_SoundCaptureDevices.szDriverPath, i32 0, i32 0), i32 128 }], align 16
@.str = private unnamed_addr constant [44 x i8] c"Unable to create the root IDxDiagContainer\0A\00", align 1
@pddc = common dso_local global i32* null, align 8
@DxDiag_SoundCaptureDevices = common dso_local global i8* null, align 8
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"Expected IDxDiagContainer::GetChildContainer to return S_OK, got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"Expected IDxDiagContainer::GetNumberOfProps to return S_OK, got 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Expected count to be 0, got %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [82 x i8] c"Expected IDxDiagContainer::GetNumberOfChildContainers to return S_OK, got 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"Expected IDxDiagContainer::EnumChildContainerNames to return S_OK, got 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Testing container %s\0A\00", align 1
@pddp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DxDiag_SoundCaptureDevices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DxDiag_SoundCaptureDevices() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  %7 = call i32 (...) @create_root_IDxDiagContainer()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 @skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %108

11:                                               ; preds = %0
  %12 = load i32*, i32** @pddc, align 8
  %13 = load i8*, i8** @DxDiag_SoundCaptureDevices, align 8
  %14 = call i64 @IDxDiagContainer_GetChildContainer(i32* %12, i8* %13, i32** %1)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  br label %97

25:                                               ; preds = %11
  %26 = load i32*, i32** %1, align 8
  %27 = call i64 @IDxDiagContainer_GetNumberOfProps(i32* %26, i64* %2)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load i64, i64* %2, align 8
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %2, align 8
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %37, %25
  %44 = load i32*, i32** %1, align 8
  %45 = call i64 @IDxDiagContainer_GetNumberOfChildContainers(i32* %44, i64* %2)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %97

56:                                               ; preds = %43
  store i64 0, i64* %3, align 8
  br label %57

57:                                               ; preds = %93, %56
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* %2, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %96

61:                                               ; preds = %57
  %62 = load i32*, i32** %1, align 8
  %63 = load i64, i64* %3, align 8
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %65 = call i64 @IDxDiagContainer_EnumChildContainerNames(i32* %62, i64 %63, i8* %64, i32 256)
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @S_OK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i64 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %74 = call i64 @IDxDiagContainer_GetChildContainer(i32* %72, i8* %73, i32** %6)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @S_OK, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* @S_OK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %61
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %86 = call i32 @wine_dbgstr_w(i8* %85)
  %87 = call i32 @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @test_container_properties(i32* %88, %struct.property_test* getelementptr inbounds ([4 x %struct.property_test], [4 x %struct.property_test]* @test_DxDiag_SoundCaptureDevices.property_tests, i64 0, i64 0), i32 4)
  br label %90

90:                                               ; preds = %84, %61
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @IDxDiagContainer_Release(i32* %91)
  br label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %3, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %3, align 8
  br label %57

96:                                               ; preds = %57
  br label %97

97:                                               ; preds = %96, %55, %24
  %98 = load i32*, i32** %1, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32*, i32** %1, align 8
  %102 = call i32 @IDxDiagContainer_Release(i32* %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32*, i32** @pddc, align 8
  %105 = call i32 @IDxDiagContainer_Release(i32* %104)
  %106 = load i32, i32* @pddp, align 4
  %107 = call i32 @IDxDiagProvider_Release(i32 %106)
  br label %108

108:                                              ; preds = %103, %9
  ret void
}

declare dso_local i32 @create_root_IDxDiagContainer(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @IDxDiagContainer_GetChildContainer(i32*, i8*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IDxDiagContainer_GetNumberOfProps(i32*, i64*) #1

declare dso_local i64 @IDxDiagContainer_GetNumberOfChildContainers(i32*, i64*) #1

declare dso_local i64 @IDxDiagContainer_EnumChildContainerNames(i32*, i64, i8*, i32) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

declare dso_local i32 @test_container_properties(i32*, %struct.property_test*, i32) #1

declare dso_local i32 @IDxDiagContainer_Release(i32*) #1

declare dso_local i32 @IDxDiagProvider_Release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
