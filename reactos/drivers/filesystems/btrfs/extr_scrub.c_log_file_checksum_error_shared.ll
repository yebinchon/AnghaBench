; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_scrub.c_log_file_checksum_error_shared.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_scrub.c_log_file_checksum_error_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64, i64 }

@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@NormalPagePriority = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"read_data returned %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"tree level was %x, expected 0\0A\00", align 1
@TYPE_EXTENT_DATA = common dso_local global i64 0, align 8
@EXTENT_TYPE_REGULAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i64, i64, i64, i64)* @log_file_checksum_error_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_file_checksum_error_shared(%struct.TYPE_17__* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load i32, i32* @PagedPool, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ALLOC_TAG, align 4
  %23 = call %struct.TYPE_15__* @ExAllocatePoolWithTag(i32 %17, i32 %21, i32 %22)
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %11, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %25 = icmp ne %struct.TYPE_15__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %5
  %27 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %147

28:                                               ; preds = %5
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %36 = bitcast %struct.TYPE_15__* %35 to i32*
  %37 = load i32, i32* @NormalPagePriority, align 4
  %38 = call i64 @read_data(%struct.TYPE_17__* %29, i64 %30, i32 %34, i32* null, i32 1, i32* %36, i32* null, i32* null, i32* null, i32 0, i32 0, i32 %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @NT_SUCCESS(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %28
  %43 = load i64, i64* %12, align 8
  %44 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  br label %144

45:                                               ; preds = %28
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  br label %144

55:                                               ; preds = %45
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i64 1
  %58 = bitcast %struct.TYPE_15__* %57 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %58, %struct.TYPE_16__** %13, align 8
  store i64 0, i64* %14, align 8
  br label %59

59:                                               ; preds = %140, %55
  %60 = load i64, i64* %14, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %143

65:                                               ; preds = %59
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %67 = load i64, i64* %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TYPE_EXTENT_DATA, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %139

74:                                               ; preds = %65
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %76 = load i64, i64* %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = icmp uge i64 %80, 31
  br i1 %81, label %82, label %139

82:                                               ; preds = %74
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %84 = bitcast %struct.TYPE_15__* %83 to i32*
  %85 = getelementptr inbounds i32, i32* %84, i64 24
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %85, i64 %91
  %93 = bitcast i32* %92 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %93, %struct.TYPE_19__** %15, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %97, %struct.TYPE_18__** %16, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @EXTENT_TYPE_REGULAR, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %138

103:                                              ; preds = %82
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %138

108:                                              ; preds = %103
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %8, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %138

114:                                              ; preds = %108
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %122 = load i64, i64* %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %8, align 8
  %134 = add nsw i64 %132, %133
  %135 = load i64, i64* %10, align 8
  %136 = sub nsw i64 %134, %135
  %137 = call i32 @log_file_checksum_error(%struct.TYPE_17__* %115, i64 %116, i64 %117, i32 %120, i32 %126, i64 %136)
  br label %138

138:                                              ; preds = %114, %108, %103, %82
  br label %139

139:                                              ; preds = %138, %74, %65
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %14, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %14, align 8
  br label %59

143:                                              ; preds = %59
  br label %144

144:                                              ; preds = %143, %50, %42
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %146 = call i32 @ExFreePool(%struct.TYPE_15__* %145)
  br label %147

147:                                              ; preds = %144, %26
  ret void
}

declare dso_local %struct.TYPE_15__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @read_data(%struct.TYPE_17__*, i64, i32, i32*, i32, i32*, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @log_file_checksum_error(%struct.TYPE_17__*, i64, i64, i32, i32, i64) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
