; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_AddBitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_AddBitmap.c"
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
@.str = private unnamed_addr constant [68 x i8] c"FIXME: Can only add $BITMAP attribute to the end of a file record.\0A\00", align 1
@STATUS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@VALUE_OFFSET_ALIGNMENT = common dso_local global i32 0, align 4
@ATTR_RECORD_ALIGNMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"FIXME: Not enough room in file record for index allocation attribute!\0A\00", align 1
@AttributeBitmap = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AddBitmap(%struct.TYPE_15__* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2, i32 %3, i32 %4) #0 {
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
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @NTFS_ATTR_RECORD, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @Resident, i32 0, i32 0), align 4
  %21 = call i64 @FIELD_OFFSET(i32 %19, i32 %20)
  %22 = add i64 %21, 4
  store i64 %22, i64* %13, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %14, align 8
  store i64 8, i64* %17, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AttributeEnd, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = call i32 @DPRINT1(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %33, i32* %6, align 4
  br label %117

34:                                               ; preds = %5
  %35 = load i64, i64* %13, align 8
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = add i64 %36, %39
  %41 = load i32, i32* @VALUE_OFFSET_ALIGNMENT, align 4
  %42 = call i64 @ALIGN_UP_BY(i64 %40, i32 %41)
  store i64 %42, i64* %16, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* %17, align 8
  %45 = add nsw i64 %43, %44
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i32, i32* @ATTR_RECORD_ALIGNMENT, align 4
  %48 = call i64 @ALIGN_UP_BY(i64 %46, i32 %47)
  store i64 %48, i64* %12, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  store i64 %56, i64* %18, align 8
  %57 = load i64, i64* %18, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %34
  %61 = call i32 @DPRINT1(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %62, i32* %6, align 4
  br label %117

63:                                               ; preds = %34
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @RtlZeroMemory(%struct.TYPE_16__* %64, i64 %65)
  %67 = load i64, i64* @AttributeBitmap, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i64, i64* %15, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 5
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = sext i32 %81 to i64
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 4
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %17, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  store i64 %86, i64* %89, align 8
  %90 = load i64, i64* %16, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  store i64 %90, i64* %93, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %95 = ptrtoint %struct.TYPE_16__* %94 to i64
  %96 = load i64, i64* %15, align 8
  %97 = add nsw i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i32 @RtlCopyMemory(i32 %98, i32 %99, i32 %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %106 = ptrtoint %struct.TYPE_16__* %105 to i64
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = inttoptr i64 %110 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %111, %struct.TYPE_16__** %9, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %114 = load i64, i64* %14, align 8
  %115 = call i32 @SetFileRecordEnd(%struct.TYPE_17__* %112, %struct.TYPE_16__* %113, i64 %114)
  %116 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %63, %60, %31
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

declare dso_local i32 @DPRINT1(i8*) #1

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
