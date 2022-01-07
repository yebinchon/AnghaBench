; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_InternalSetResidentAttributeLength.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_InternalSetResidentAttributeLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@.str = private unnamed_addr constant [60 x i8] c"InternalSetResidentAttributeLength( %p, %p, %p, %lu, %lu )\0A\00", align 1
@ATTR_RECORD_ALIGNMENT = common dso_local global i64 0, align 8
@TAG_NTFS = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to allocate memory for attribute!\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@AttributeEnd = common dso_local global i64 0, align 8
@FILE_RECORD_END = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InternalSetResidentAttributeLength(i32 %0, %struct.TYPE_16__* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = add nsw i64 %17, %18
  %20 = inttoptr i64 %19 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %12, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %22 = ptrtoint %struct.TYPE_15__* %21 to i64
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = inttoptr i64 %26 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %13, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %15, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %31, %struct.TYPE_16__* %32, i64 %33, i64 %34, i64 %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %50, %56
  %58 = load i64, i64* @ATTR_RECORD_ALIGNMENT, align 8
  %59 = call i64 @ALIGN_UP_BY(i64 %57, i64 %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  store i64 %66, i64* %16, align 8
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* @ATTR_RECORD_ALIGNMENT, align 8
  %69 = srem i64 %67, %68
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %15, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %119

78:                                               ; preds = %5
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = load i32, i32* @TAG_NTFS, align 4
  %83 = call i32 @ExFreePoolWithTag(%struct.TYPE_17__* %81, i32 %82)
  %84 = load i32, i32* @NonPagedPool, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @TAG_NTFS, align 4
  %89 = call %struct.TYPE_17__* @ExAllocatePoolWithTag(i32 %84, i64 %87, i32 %88)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  store %struct.TYPE_17__* %89, %struct.TYPE_17__** %91, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = icmp ne %struct.TYPE_17__* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %78
  %97 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %98, i32* %6, align 4
  br label %165

99:                                               ; preds = %78
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = ptrtoint %struct.TYPE_17__* %102 to i64
  %104 = load i64, i64* %15, align 8
  %105 = add nsw i64 %103, %104
  %106 = trunc i64 %105 to i32
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %15, align 8
  %111 = sub nsw i64 %109, %110
  %112 = call i32 @RtlZeroMemory(i32 %106, i64 %111)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %117 = load i64, i64* %15, align 8
  %118 = call i32 @RtlCopyMemory(%struct.TYPE_17__* %115, %struct.TYPE_15__* %116, i64 %117)
  br label %119

119:                                              ; preds = %99, %5
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @AttributeEnd, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %119
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %128 = load i64, i64* %16, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %130 = ptrtoint %struct.TYPE_15__* %129 to i64
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %130, %133
  %135 = call %struct.TYPE_15__* @MoveAttributes(i32 %126, %struct.TYPE_15__* %127, i64 %128, i64 %134)
  store %struct.TYPE_15__* %135, %struct.TYPE_15__** %14, align 8
  br label %146

136:                                              ; preds = %119
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %138 = ptrtoint %struct.TYPE_15__* %137 to i64
  %139 = load i64, i64* %15, align 8
  %140 = sub nsw i64 %138, %139
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %140, %143
  %145 = inttoptr i64 %144 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %145, %struct.TYPE_15__** %14, align 8
  br label %146

146:                                              ; preds = %136, %125
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  store i64 %149, i64* %153, align 8
  %154 = load i64, i64* %11, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  store i64 %154, i64* %159, align 8
  %160 = load i64, i64* %9, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %162 = load i32, i32* @FILE_RECORD_END, align 4
  %163 = call i32 @SetFileRecordEnd(i64 %160, %struct.TYPE_15__* %161, i32 %162)
  %164 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %146, %96
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @ALIGN_UP_BY(i64, i64) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_17__* @ExAllocatePoolWithTag(i32, i64, i32) #1

declare dso_local i32 @RtlZeroMemory(i32, i64) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_17__*, %struct.TYPE_15__*, i64) #1

declare dso_local %struct.TYPE_15__* @MoveAttributes(i32, %struct.TYPE_15__*, i64, i64) #1

declare dso_local i32 @SetFileRecordEnd(i64, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
