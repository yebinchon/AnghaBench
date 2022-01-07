; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_read.c_cdio_read_audio_sectors.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_read.c_cdio_read_audio_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i8*, i32, i64)* }

@DRIVER_OP_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Reading audio sector(s) lsn %u for %d blocks\00", align 1
@DRIVER_OP_UNSUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdio_read_audio_sectors(%struct.TYPE_5__* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = load i64, i64* %9, align 8
  %12 = call i32 @check_lsn_blocks(i32 %10, i64 %11)
  %13 = load i64, i64* %9, align 8
  %14 = icmp eq i64 0, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @DRIVER_OP_SUCCESS, align 4
  store i32 %16, i32* %5, align 4
  br label %40

17:                                               ; preds = %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (i32, i8*, i32, i64)*, i32 (i32, i8*, i32, i64)** %20, align 8
  %22 = icmp ne i32 (i32, i8*, i32, i64)* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @cdio_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (i32, i8*, i32, i64)*, i32 (i32, i8*, i32, i64)** %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i64, i64* %9, align 8
  %37 = call i32 %30(i32 %33, i8* %34, i32 %35, i64 %36)
  store i32 %37, i32* %5, align 4
  br label %40

38:                                               ; preds = %17
  %39 = load i32, i32* @DRIVER_OP_UNSUPPORTED, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %23, %15
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @check_lsn_blocks(i32, i64) #1

declare dso_local i32 @cdio_debug(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
