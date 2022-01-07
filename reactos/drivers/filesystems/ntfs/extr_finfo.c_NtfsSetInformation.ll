; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_finfo.c_NtfsSetInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_finfo.c_NtfsSetInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_18__*, %struct.TYPE_26__*, %struct.TYPE_25__* }
%struct.TYPE_27__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_22__, i32, %struct.TYPE_19__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@STATUS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"NtfsSetInformation(%p)\0A\00", align 1
@IRPCONTEXT_CANWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"FIXME: Using hacky method of setting FileAllocationInformation.\0A\00", align 1
@SL_CASE_SENSITIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"FIXME: Unimplemented information class: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsSetInformation(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %15 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %17 = call i32 @DPRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.TYPE_23__* %16)
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %11, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %5, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %12, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %4, align 4
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %36, align 8
  store %struct.TYPE_27__* %37, %struct.TYPE_27__** %7, align 8
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %39, align 8
  store %struct.TYPE_24__* %40, %struct.TYPE_24__** %8, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %10, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IRPCONTEXT_CANWAIT, align 4
  %56 = call i32 @BooleanFlagOn(i32 %54, i32 %55)
  %57 = call i32 @ExAcquireResourceSharedLite(i32* %51, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %1
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %61 = call i32 @NtfsMarkIrpContextForQueue(%struct.TYPE_23__* %60)
  store i32 %61, i32* %2, align 4
  br label %113

62:                                               ; preds = %1
  %63 = load i32, i32* %4, align 4
  switch i32 %63, label %84 [
    i32 129, label %64
    i32 128, label %66
  ]

64:                                               ; preds = %62
  %65 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %64
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %69, %struct.TYPE_17__** %14, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SL_CASE_SENSITIVE, align 4
  %80 = call i32 @BooleanFlagOn(i32 %78, i32 %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = call i32 @NtfsSetEndOfFile(%struct.TYPE_24__* %70, %struct.TYPE_27__* %71, i32 %72, i32 %75, i32 %80, i32* %82)
  store i32 %83, i32* %13, align 4
  br label %89

84:                                               ; preds = %62
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @GetInfoClassName(i32 %85)
  %87 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %84, %66
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = call i32 @ExReleaseResourceLite(i32* %91)
  %93 = load i32, i32* %13, align 4
  %94 = call i64 @NT_SUCCESS(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %89
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = sub nsw i64 %101, %102
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  br label %111

107:                                              ; preds = %89
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %107, %96
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %59
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_23__*) #1

declare dso_local i32 @ExAcquireResourceSharedLite(i32*, i32) #1

declare dso_local i32 @BooleanFlagOn(i32, i32) #1

declare dso_local i32 @NtfsMarkIrpContextForQueue(%struct.TYPE_23__*) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @NtfsSetEndOfFile(%struct.TYPE_24__*, %struct.TYPE_27__*, i32, i32, i32, i32*) #1

declare dso_local i32 @GetInfoClassName(i32) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
