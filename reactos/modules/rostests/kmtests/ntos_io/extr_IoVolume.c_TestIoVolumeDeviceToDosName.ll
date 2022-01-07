; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_io/extr_IoVolume.c_TestIoVolumeDeviceToDosName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_io/extr_IoVolume.c_TestIoVolumeDeviceToDosName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32* }

@.str = private unnamed_addr constant [11 x i32] [i32 92, i32 92, i32 63, i32 92, i32 86, i32 111, i32 108, i32 117, i32 109, i32 101, i32 0], align 4
@STATUS_SUCCESS = common dso_local global %struct.TYPE_20__* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"GetNextVolumeDevice(0x%lx) failed with %lx\0A\00", align 1
@READ_CONTROL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"IoGetDeviceObjectPointer(%wZ) failed with %lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"No DOS name\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"DOS name for %wZ is %wZ\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Unexpected drive letter: %wZ\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Unexpected volume path: %wZ\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"No volumes found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @TestIoVolumeDeviceToDosName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TestIoVolumeDeviceToDosName() #0 {
  %1 = alloca %struct.TYPE_20__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [32 x i32], align 16
  %4 = alloca %struct.TYPE_20__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__, align 8
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = call { i32, i32* } @RTL_CONSTANT_STRING(i8* bitcast ([11 x i32]* @.str to i8*))
  %10 = bitcast %struct.TYPE_20__* %8 to { i32, i32* }*
  %11 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %10, i32 0, i32 0
  %12 = extractvalue { i32, i32* } %9, 0
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %10, i32 0, i32 1
  %14 = extractvalue { i32, i32* } %9, 1
  store i32* %14, i32** %13, align 8
  %15 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %16 = call i32 @RtlInitEmptyUnicodeString(%struct.TYPE_20__* %4, i32* %15, i32 128)
  store i32 0, i32* %2, align 4
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** @STATUS_SUCCESS, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %1, align 8
  br label %18

18:                                               ; preds = %0, %36, %83
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %20 = call %struct.TYPE_20__* @GetNextVolumeDevice(%struct.TYPE_20__* %4, i32* %2, %struct.TYPE_20__* %19)
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %1, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %22 = call i32 @NT_SUCCESS(%struct.TYPE_20__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %27 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %25, %struct.TYPE_20__* %26)
  br label %87

28:                                               ; preds = %18
  %29 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %30 = call i32 @RtlInitUnicodeString(%struct.TYPE_20__* %4, i32* %29)
  %31 = load i32, i32* @READ_CONTROL, align 4
  %32 = call %struct.TYPE_20__* @IoGetDeviceObjectPointer(%struct.TYPE_20__* %4, i32 %31, i32* %5, i32* %6)
  store %struct.TYPE_20__* %32, %struct.TYPE_20__** %1, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %34 = call i32 @NT_SUCCESS(%struct.TYPE_20__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %38 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_20__* %4, %struct.TYPE_20__* %37)
  br label %18

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = call %struct.TYPE_20__* @IoVolumeDeviceToDosName(i32 %40, %struct.TYPE_20__* %7)
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %1, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** @STATUS_SUCCESS, align 8
  %44 = call i32 @ok_eq_hex(%struct.TYPE_20__* %42, %struct.TYPE_20__* %43)
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %46 = call i32 @NT_SUCCESS(%struct.TYPE_20__* %45)
  %47 = call i32 @skip(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %83, label %49

49:                                               ; preds = %39
  %50 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_20__* %4, %struct.TYPE_20__* %7)
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = icmp eq i64 %53, 8
  br i1 %54, label %55, label %77

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %59, 65
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sle i32 %65, 90
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 58
  br label %73

73:                                               ; preds = %67, %61, %55
  %74 = phi i1 [ false, %61 ], [ false, %55 ], [ %72, %67 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_20__* %7)
  br label %81

77:                                               ; preds = %49
  %78 = load i32, i32* @FALSE, align 4
  %79 = call i32 @RtlPrefixUnicodeString(%struct.TYPE_20__* %8, %struct.TYPE_20__* %7, i32 %78)
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_20__* %7)
  br label %81

81:                                               ; preds = %77, %73
  %82 = call i32 @RtlFreeUnicodeString(%struct.TYPE_20__* %7)
  br label %83

83:                                               ; preds = %81, %39
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @ObDereferenceObject(i32 %84)
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** @STATUS_SUCCESS, align 8
  store %struct.TYPE_20__* %86, %struct.TYPE_20__** %1, align 8
  br label %18

87:                                               ; preds = %24
  %88 = load i32, i32* %2, align 4
  %89 = icmp sgt i32 %88, 1
  %90 = zext i1 %89 to i32
  %91 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local { i32, i32* } @RTL_CONSTANT_STRING(i8*) #1

declare dso_local i32 @RtlInitEmptyUnicodeString(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local %struct.TYPE_20__* @GetNextVolumeDevice(%struct.TYPE_20__*, i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @NT_SUCCESS(%struct.TYPE_20__*) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_20__*, i32*) #1

declare dso_local %struct.TYPE_20__* @IoGetDeviceObjectPointer(%struct.TYPE_20__*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_20__* @IoVolumeDeviceToDosName(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @ok_eq_hex(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @skip(i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @RtlPrefixUnicodeString(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @RtlFreeUnicodeString(%struct.TYPE_20__*) #1

declare dso_local i32 @ObDereferenceObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
