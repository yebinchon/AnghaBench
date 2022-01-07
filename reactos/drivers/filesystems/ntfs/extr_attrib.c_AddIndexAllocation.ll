; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_AddIndexAllocation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_AddIndexAllocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, i64, i32, %struct.TYPE_14__, i64, i64, i32 }
%struct.TYPE_14__ = type { i64, i64 }

@AttributeEnd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"FIXME: Can only add $INDEX_ALLOCATION attribute to the end of a file record.\0A\00", align 1
@STATUS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@NTFS_ATTR_RECORD = common dso_local global i32 0, align 4
@NonResident = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@DATA_RUN_ALIGNMENT = common dso_local global i32 0, align 4
@ATTR_RECORD_ALIGNMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"FIXME: Not enough room in file record for index allocation attribute!\0A\00", align 1
@AttributeIndexAllocation = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AddIndexAllocation(%struct.TYPE_15__* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AttributeEnd, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = call i32 @DPRINT1(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %24, i32* %6, align 4
  br label %115

25:                                               ; preds = %5
  %26 = load i32, i32* @NTFS_ATTR_RECORD, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @NonResident, i32 0, i32 0), align 4
  %28 = call i64 @FIELD_OFFSET(i32 %26, i32 %27)
  store i64 %28, i64* %14, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = load i64, i64* %14, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load i32, i32* @DATA_RUN_ALIGNMENT, align 4
  %36 = call i64 @ALIGN_UP_BY(i64 %34, i32 %35)
  store i64 %36, i64* %15, align 8
  %37 = load i64, i64* %15, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i32, i32* @ATTR_RECORD_ALIGNMENT, align 4
  %41 = call i64 @ALIGN_UP_BY(i64 %39, i32 %40)
  store i64 %41, i64* %12, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %13, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %25
  %57 = call i32 @DPRINT1(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %58, i32* %6, align 4
  br label %115

59:                                               ; preds = %25
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @RtlZeroMemory(%struct.TYPE_16__* %60, i64 %61)
  %63 = load i64, i64* @AttributeIndexAllocation, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* @TRUE, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 5
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = sext i32 %80 to i64
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 4
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  store i64 %85, i64* %88, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  store i64 -1, i64* %91, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %93 = ptrtoint %struct.TYPE_16__* %92 to i64
  %94 = load i64, i64* %14, align 8
  %95 = add nsw i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 4
  %101 = trunc i64 %100 to i32
  %102 = call i32 @RtlCopyMemory(i32 %96, i32 %97, i32 %101)
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %104 = ptrtoint %struct.TYPE_16__* %103 to i64
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = inttoptr i64 %108 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %9, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %112 = load i64, i64* %13, align 8
  %113 = call i32 @SetFileRecordEnd(%struct.TYPE_17__* %110, %struct.TYPE_16__* %111, i64 %112)
  %114 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %59, %56, %22
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

declare dso_local i64 @ALIGN_UP_BY(i64, i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i32) #1

declare dso_local i32 @SetFileRecordEnd(%struct.TYPE_17__*, %struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
