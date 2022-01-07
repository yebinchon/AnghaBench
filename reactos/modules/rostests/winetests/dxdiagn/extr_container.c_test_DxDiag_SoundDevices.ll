; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dxdiagn/extr_container.c_test_DxDiag_SoundDevices.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dxdiagn/extr_container.c_test_DxDiag_SoundDevices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property_test = type { i8*, i32 }

@test_DxDiag_SoundDevices.szDescription = internal constant [14 x i8] c"szDescription\00", align 1
@test_DxDiag_SoundDevices.szGuidDeviceID = internal constant [15 x i8] c"szGuidDeviceID\00", align 1
@test_DxDiag_SoundDevices.szDriverPath = internal constant [13 x i8] c"szDriverPath\00", align 1
@test_DxDiag_SoundDevices.szDriverName = internal constant [13 x i8] c"szDriverName\00", align 1
@test_DxDiag_SoundDevices.empty = internal constant [1 x i8] zeroinitializer, align 1
@test_DxDiag_SoundDevices.property_tests = internal constant [4 x %struct.property_test] [%struct.property_test { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_DxDiag_SoundDevices.szDescription, i32 0, i32 0), i32 128 }, %struct.property_test { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_DxDiag_SoundDevices.szGuidDeviceID, i32 0, i32 0), i32 128 }, %struct.property_test { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_DxDiag_SoundDevices.szDriverName, i32 0, i32 0), i32 128 }, %struct.property_test { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_DxDiag_SoundDevices.szDriverPath, i32 0, i32 0), i32 128 }], align 16
@.str = private unnamed_addr constant [44 x i8] c"Unable to create the root IDxDiagContainer\0A\00", align 1
@pddc = common dso_local global i32* null, align 8
@DxDiag_SoundDevices = common dso_local global i8* null, align 8
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"Expected IDxDiagContainer::GetChildContainer to return S_OK, got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"Expected IDxDiagContainer::GetNumberOfProps to return S_OK, got 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Expected count to be 0, got %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [82 x i8] c"Expected IDxDiagContainer::GetNumberOfChildContainers to return S_OK, got 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"Expected IDxDiagContainer::EnumChildContainerNames to return S_OK, got 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Testing container %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Expected child2 != NULL\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Expected child != child2\0A\00", align 1
@pddp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DxDiag_SoundDevices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DxDiag_SoundDevices() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  %8 = call i32 (...) @create_root_IDxDiagContainer()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i32 @skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %133

12:                                               ; preds = %0
  %13 = load i32*, i32** @pddc, align 8
  %14 = load i8*, i8** @DxDiag_SoundDevices, align 8
  %15 = call i64 @IDxDiagContainer_GetChildContainer(i32* %13, i8* %14, i32** %1)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %4, align 8
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %122

26:                                               ; preds = %12
  %27 = load i32*, i32** %1, align 8
  %28 = call i64 @IDxDiagContainer_GetNumberOfProps(i32* %27, i64* %2)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %4, align 8
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load i64, i64* %2, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %2, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %38, %26
  %45 = load i32*, i32** %1, align 8
  %46 = call i64 @IDxDiagContainer_GetNumberOfChildContainers(i32* %45, i64* %2)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %4, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0), i64 %51)
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %122

57:                                               ; preds = %44
  store i64 0, i64* %3, align 8
  br label %58

58:                                               ; preds = %118, %57
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* %2, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %121

62:                                               ; preds = %58
  %63 = load i32*, i32** %1, align 8
  %64 = load i64, i64* %3, align 8
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %66 = call i64 @IDxDiagContainer_EnumChildContainerNames(i32* %63, i64 %64, i8* %65, i32 256)
  store i64 %66, i64* %4, align 8
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @S_OK, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %4, align 8
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i64 %71)
  %73 = load i32*, i32** %1, align 8
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %75 = call i64 @IDxDiagContainer_GetChildContainer(i32* %73, i8* %74, i32** %6)
  store i64 %75, i64* %4, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @S_OK, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %4, align 8
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @S_OK, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %62
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %87 = call i32 @wine_dbgstr_w(i8* %86)
  %88 = call i32 @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @test_container_properties(i32* %89, %struct.property_test* getelementptr inbounds ([4 x %struct.property_test], [4 x %struct.property_test]* @test_DxDiag_SoundDevices.property_tests, i64 0, i64 0), i32 4)
  br label %91

91:                                               ; preds = %85, %62
  store i32* null, i32** %7, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = call i64 @IDxDiagContainer_GetChildContainer(i32* %92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_DxDiag_SoundDevices.empty, i64 0, i64 0), i32** %7)
  store i64 %93, i64* %4, align 8
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* @S_OK, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %4, align 8
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %98)
  %100 = load i32*, i32** %7, align 8
  %101 = icmp ne i32* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %104 = load i32*, i32** %7, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = icmp ne i32* %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %109 = load i64, i64* %4, align 8
  %110 = load i64, i64* @S_OK, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %91
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @IDxDiagContainer_Release(i32* %113)
  br label %115

115:                                              ; preds = %112, %91
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @IDxDiagContainer_Release(i32* %116)
  br label %118

118:                                              ; preds = %115
  %119 = load i64, i64* %3, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %3, align 8
  br label %58

121:                                              ; preds = %58
  br label %122

122:                                              ; preds = %121, %56, %25
  %123 = load i32*, i32** %1, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32*, i32** %1, align 8
  %127 = call i32 @IDxDiagContainer_Release(i32* %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32*, i32** @pddc, align 8
  %130 = call i32 @IDxDiagContainer_Release(i32* %129)
  %131 = load i32, i32* @pddp, align 4
  %132 = call i32 @IDxDiagProvider_Release(i32 %131)
  br label %133

133:                                              ; preds = %128, %10
  ret void
}

declare dso_local i32 @create_root_IDxDiagContainer(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @IDxDiagContainer_GetChildContainer(i32*, i8*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

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
