; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/udf/extr_udf_file.c_udf_read_block.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/udf/extr_udf_file.c_udf_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@CDIO_INVALID_LBA = common dso_local global i64 0, align 8
@UDF_BLOCKSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"read count %u is larger than %u extent size.\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"read count truncated to %u\00", align 1
@DRIVER_OP_SUCCESS = common dso_local global i64 0, align 8
@DRIVER_OP_ERROR = common dso_local global i64 0, align 8
@i_lba = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @udf_read_block(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %73

17:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %10, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = bitcast i64* %11 to i32*
  %26 = call i64 @offset_to_lba(%struct.TYPE_7__* %21, i32 %24, i32* %25, i64* %9)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @CDIO_INVALID_LBA, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %17
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @UDF_BLOCKSIZE, align 8
  %33 = call i64 @CEILING(i64 %31, i64 %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i64, i64* %12, align 8
  %41 = call i32 (i8*, i32, ...) @cdio_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %40)
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, i32, ...) @cdio_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* %12, align 8
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %37, %30
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @udf_read_sectors(%struct.TYPE_6__* %47, i8* %48, i64 %49, i64 %50)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* @DRIVER_OP_SUCCESS, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %46
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @UDF_BLOCKSIZE, align 8
  %59 = mul i64 %57, %58
  %60 = call i64 @MIN(i64 %56, i64 %59)
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  %68 = load i64, i64* %13, align 8
  store i64 %68, i64* %4, align 8
  br label %73

69:                                               ; preds = %46
  %70 = load i64, i64* %8, align 8
  store i64 %70, i64* %4, align 8
  br label %73

71:                                               ; preds = %17
  %72 = load i64, i64* @DRIVER_OP_ERROR, align 8
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %71, %69, %55, %16
  %74 = load i64, i64* %4, align 8
  ret i64 %74
}

declare dso_local i64 @offset_to_lba(%struct.TYPE_7__*, i32, i32*, i64*) #1

declare dso_local i64 @CEILING(i64, i64) #1

declare dso_local i32 @cdio_warn(i8*, i32, ...) #1

declare dso_local i64 @udf_read_sectors(%struct.TYPE_6__*, i8*, i64, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
