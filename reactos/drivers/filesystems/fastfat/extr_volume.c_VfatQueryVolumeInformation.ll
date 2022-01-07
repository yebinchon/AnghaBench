; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_volume.c_VfatQueryVolumeInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_volume.c_VfatQueryVolumeInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__*, %struct.TYPE_19__*, %struct.TYPE_16__*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_24__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"VfatQueryVolumeInformation(IrpContext %p)\0A\00", align 1
@IRPCONTEXT_CANWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"DirResource failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"FsInformationClass %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"SystemBuffer %p\0A\00", align 1
@STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VfatQueryVolumeInformation(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %8 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %10 = call i32 @ASSERT(%struct.TYPE_23__* %9)
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.TYPE_23__* %11)
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_24__*
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IRPCONTEXT_CANWAIT, align 4
  %24 = call i32 @BooleanFlagOn(i32 %22, i32 %23)
  %25 = call i32 @ExAcquireResourceSharedLite(i32* %19, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %1
  %28 = call i32 @DPRINT1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %30 = call i32 @VfatMarkIrpContextForQueue(%struct.TYPE_23__* %29)
  store i32 %30, i32* %2, align 4
  br label %115

31:                                               ; preds = %1
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %4, align 4
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %7, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %4, align 4
  switch i32 %56, label %89 [
    i32 128, label %57
    i32 132, label %63
    i32 129, label %71
    i32 131, label %77
    i32 130, label %83
  ]

57:                                               ; preds = %31
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @FsdGetFsVolumeInformation(%struct.TYPE_16__* %60, i32 %61, i64* %7)
  store i32 %62, i32* %5, align 4
  br label %91

63:                                               ; preds = %31
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @FsdGetFsAttributeInformation(i64 %68, i32 %69, i64* %7)
  store i32 %70, i32* %5, align 4
  br label %91

71:                                               ; preds = %31
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @FsdGetFsSizeInformation(%struct.TYPE_16__* %74, i32 %75, i64* %7)
  store i32 %76, i32* %5, align 4
  br label %91

77:                                               ; preds = %31
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @FsdGetFsDeviceInformation(%struct.TYPE_16__* %80, i32 %81, i64* %7)
  store i32 %82, i32* %5, align 4
  br label %91

83:                                               ; preds = %31
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @FsdGetFsFullSizeInformation(%struct.TYPE_16__* %86, i32 %87, i64* %7)
  store i32 %88, i32* %5, align 4
  br label %91

89:                                               ; preds = %31
  %90 = load i32, i32* @STATUS_NOT_SUPPORTED, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %83, %77, %71, %63, %57
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.TYPE_24__*
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = call i32 @ExReleaseResourceLite(i32* %98)
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = sub nsw i64 %106, %107
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  store i64 %108, i64* %113, align 8
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %91, %27
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @ASSERT(%struct.TYPE_23__*) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @ExAcquireResourceSharedLite(i32*, i32) #1

declare dso_local i32 @BooleanFlagOn(i32, i32) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @VfatMarkIrpContextForQueue(%struct.TYPE_23__*) #1

declare dso_local i32 @FsdGetFsVolumeInformation(%struct.TYPE_16__*, i32, i64*) #1

declare dso_local i32 @FsdGetFsAttributeInformation(i64, i32, i64*) #1

declare dso_local i32 @FsdGetFsSizeInformation(%struct.TYPE_16__*, i32, i64*) #1

declare dso_local i32 @FsdGetFsDeviceInformation(%struct.TYPE_16__*, i32, i64*) #1

declare dso_local i32 @FsdGetFsFullSizeInformation(%struct.TYPE_16__*, i32, i64*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
