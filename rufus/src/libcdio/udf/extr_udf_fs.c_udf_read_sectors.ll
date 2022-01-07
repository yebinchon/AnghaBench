; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/udf/extr_udf_fs.c_udf_read_sectors.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/udf/extr_udf_fs.c_udf_read_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@UDF_BLOCKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Large File Support is required to access streams of 2 GB or more\00", align 1
@DRIVER_OP_BAD_PARAMETER = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@DRIVER_OP_SUCCESS = common dso_local global i64 0, align 8
@DRIVER_OP_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @udf_read_sectors(%struct.TYPE_3__* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %66

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @UDF_BLOCKSIZE, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = call i32 @cdio_warn(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* @DRIVER_OP_BAD_PARAMETER, align 8
  store i64 %25, i64* %5, align 8
  br label %66

26:                                               ; preds = %16
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @SEEK_SET, align 4
  %37 = call i64 @cdio_stream_seek(i32 %34, i32 %35, i32 %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* @DRIVER_OP_SUCCESS, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %5, align 8
  br label %66

43:                                               ; preds = %31
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* @UDF_BLOCKSIZE, align 4
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @cdio_stream_read(i32 %46, i8* %47, i32 %48, i64 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i64, i64* @DRIVER_OP_SUCCESS, align 8
  store i64 %54, i64* %5, align 8
  br label %66

55:                                               ; preds = %43
  %56 = load i64, i64* @DRIVER_OP_ERROR, align 8
  store i64 %56, i64* %5, align 8
  br label %66

57:                                               ; preds = %26
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* @UDF_BLOCKSIZE, align 4
  %64 = load i64, i64* %9, align 8
  %65 = call i64 @cdio_read_data_sectors(i32 %60, i8* %61, i64 %62, i32 %63, i64 %64)
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %57, %55, %53, %41, %23, %15
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local i32 @cdio_warn(i8*) #1

declare dso_local i64 @cdio_stream_seek(i32, i32, i32) #1

declare dso_local i64 @cdio_stream_read(i32, i8*, i32, i64) #1

declare dso_local i64 @cdio_read_data_sectors(i32, i8*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
