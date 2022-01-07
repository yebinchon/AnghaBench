; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_volinfo.c_NtfsQueryVolumeInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_volinfo.c_NtfsQueryVolumeInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"NtfsQueryVolumeInformation() called\0A\00", align 1
@IRPCONTEXT_CANWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"FsInformationClass %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"SystemBuffer %p\0A\00", align 1
@STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsQueryVolumeInformation(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %12 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %12, i32* %8, align 4
  %13 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %15 = call i32 @ASSERT(%struct.TYPE_21__* %14)
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %4, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  store %struct.TYPE_24__* %21, %struct.TYPE_24__** %5, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  store %struct.TYPE_25__* %24, %struct.TYPE_25__** %11, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  store %struct.TYPE_23__* %27, %struct.TYPE_23__** %7, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IRPCONTEXT_CANWAIT, align 4
  %34 = call i32 @BooleanFlagOn(i32 %32, i32 %33)
  %35 = call i32 @ExAcquireResourceSharedLite(i32* %29, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %39 = call i32 @NtfsMarkIrpContextForQueue(%struct.TYPE_21__* %38)
  store i32 %39, i32* %2, align 4
  br label %107

40:                                               ; preds = %1
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %6, align 4
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %10, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @RtlZeroMemory(i32 %55, i64 %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %6, align 4
  switch i32 %62, label %81 [
    i32 128, label %63
    i32 131, label %67
    i32 129, label %73
    i32 130, label %77
  ]

63:                                               ; preds = %40
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @NtfsGetFsVolumeInformation(%struct.TYPE_24__* %64, i32 %65, i64* %10)
  store i32 %66, i32* %8, align 4
  br label %83

67:                                               ; preds = %40
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @NtfsGetFsAttributeInformation(%struct.TYPE_25__* %70, i32 %71, i64* %10)
  store i32 %72, i32* %8, align 4
  br label %83

73:                                               ; preds = %40
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @NtfsGetFsSizeInformation(%struct.TYPE_24__* %74, i32 %75, i64* %10)
  store i32 %76, i32* %8, align 4
  br label %83

77:                                               ; preds = %40
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @NtfsGetFsDeviceInformation(%struct.TYPE_24__* %78, i32 %79, i64* %10)
  store i32 %80, i32* %8, align 4
  br label %83

81:                                               ; preds = %40
  %82 = load i32, i32* @STATUS_NOT_SUPPORTED, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %77, %73, %67, %63
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 0
  %86 = call i32 @ExReleaseResourceLite(i32* %85)
  %87 = load i32, i32* %8, align 4
  %88 = call i64 @NT_SUCCESS(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %83
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = sub nsw i64 %95, %96
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  store i64 %97, i64* %100, align 8
  br label %105

101:                                              ; preds = %83
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %101, %90
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %37
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @ASSERT(%struct.TYPE_21__*) #1

declare dso_local i32 @ExAcquireResourceSharedLite(i32*, i32) #1

declare dso_local i32 @BooleanFlagOn(i32, i32) #1

declare dso_local i32 @NtfsMarkIrpContextForQueue(%struct.TYPE_21__*) #1

declare dso_local i32 @RtlZeroMemory(i32, i64) #1

declare dso_local i32 @NtfsGetFsVolumeInformation(%struct.TYPE_24__*, i32, i64*) #1

declare dso_local i32 @NtfsGetFsAttributeInformation(%struct.TYPE_25__*, i32, i64*) #1

declare dso_local i32 @NtfsGetFsSizeInformation(%struct.TYPE_24__*, i32, i64*) #1

declare dso_local i32 @NtfsGetFsDeviceInformation(%struct.TYPE_24__*, i32, i64*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
