; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_AddIndexRoot.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_AddIndexRoot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, i64, i32, %struct.TYPE_14__, i64, i64 }
%struct.TYPE_14__ = type { i64, i64 }

@NTFS_ATTR_RECORD = common dso_local global i32 0, align 4
@Resident = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@AttributeEnd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"FIXME: Can only add $DATA attribute to the end of a file record.\0A\00", align 1
@STATUS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@VALUE_OFFSET_ALIGNMENT = common dso_local global i32 0, align 4
@ATTR_RECORD_ALIGNMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"FIXME: Not enough room in file record for index allocation attribute!\0A\00", align 1
@AttributeIndexRoot = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AddIndexRoot(%struct.TYPE_15__* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2, i32 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load i32, i32* @NTFS_ATTR_RECORD, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @Resident, i32 0, i32 0), align 4
  %24 = call i64 @FIELD_OFFSET(i32 %22, i32 %23)
  %25 = add i64 %24, 4
  store i64 %25, i64* %17, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %18, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AttributeEnd, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %7
  %35 = call i32 @DPRINT1(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %36, i32* %8, align 4
  br label %127

37:                                               ; preds = %7
  %38 = load i64, i64* %17, align 8
  store i64 %38, i64* %19, align 8
  %39 = load i64, i64* %19, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = add i64 %39, %42
  %44 = load i32, i32* @VALUE_OFFSET_ALIGNMENT, align 4
  %45 = call i64 @ALIGN_UP_BY(i64 %43, i32 %44)
  store i64 %45, i64* %20, align 8
  %46 = load i64, i64* %20, align 8
  %47 = load i64, i64* %13, align 8
  %48 = add nsw i64 %46, %47
  store i64 %48, i64* %16, align 8
  %49 = load i64, i64* %16, align 8
  %50 = load i32, i32* @ATTR_RECORD_ALIGNMENT, align 4
  %51 = call i64 @ALIGN_UP_BY(i64 %49, i32 %50)
  store i64 %51, i64* %16, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  store i64 %59, i64* %21, align 8
  %60 = load i64, i64* %21, align 8
  %61 = load i64, i64* %16, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %37
  %64 = call i32 @DPRINT1(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %65, i32* %8, align 4
  br label %127

66:                                               ; preds = %37
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %68 = load i64, i64* %16, align 8
  %69 = call i32 @RtlZeroMemory(%struct.TYPE_16__* %67, i64 %68)
  %70 = load i64, i64* @AttributeIndexRoot, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i64, i64* %19, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 5
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = sext i32 %84 to i64
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 4
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  store i64 %89, i64* %92, align 8
  %93 = load i64, i64* %20, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %98 = ptrtoint %struct.TYPE_16__* %97 to i64
  %99 = load i64, i64* %19, align 8
  %100 = add nsw i64 %98, %99
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = call i32 @RtlCopyMemory(i32 %101, i32 %102, i64 %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %108 = ptrtoint %struct.TYPE_16__* %107 to i64
  %109 = load i64, i64* %20, align 8
  %110 = add nsw i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* %12, align 4
  %113 = load i64, i64* %13, align 8
  %114 = call i32 @RtlCopyMemory(i32 %111, i32 %112, i64 %113)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %116 = ptrtoint %struct.TYPE_16__* %115 to i64
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = inttoptr i64 %120 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %121, %struct.TYPE_16__** %11, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %124 = load i64, i64* %18, align 8
  %125 = call i32 @SetFileRecordEnd(%struct.TYPE_17__* %122, %struct.TYPE_16__* %123, i64 %124)
  %126 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %66, %63, %34
  %128 = load i32, i32* %8, align 4
  ret i32 %128
}

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i64 @ALIGN_UP_BY(i64, i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i64) #1

declare dso_local i32 @SetFileRecordEnd(%struct.TYPE_17__*, %struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
