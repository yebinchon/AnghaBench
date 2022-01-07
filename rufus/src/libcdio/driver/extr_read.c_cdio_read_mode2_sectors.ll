; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_read.c_cdio_read_mode2_sectors.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_read.c_cdio_read_mode2_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i8*, i32, i32, i64)* }

@DRIVER_OP_SUCCESS = common dso_local global i32 0, align 4
@DRIVER_OP_UNSUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdio_read_mode2_sectors(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %12 = load i32, i32* %9, align 4
  %13 = load i64, i64* %11, align 8
  %14 = call i32 @check_lsn_blocks(i32 %12, i64 %13)
  %15 = load i64, i64* %11, align 8
  %16 = icmp eq i64 0, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @DRIVER_OP_SUCCESS, align 4
  store i32 %18, i32* %6, align 4
  br label %40

19:                                               ; preds = %5
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (i32, i8*, i32, i32, i64)*, i32 (i32, i8*, i32, i32, i64)** %22, align 8
  %24 = icmp ne i32 (i32, i8*, i32, i32, i64)* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (i32, i8*, i32, i32, i64)*, i32 (i32, i8*, i32, i32, i64)** %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i64, i64* %11, align 8
  %37 = call i32 %29(i32 %32, i8* %33, i32 %34, i32 %35, i64 %36)
  store i32 %37, i32* %6, align 4
  br label %40

38:                                               ; preds = %19
  %39 = load i32, i32* @DRIVER_OP_UNSUPPORTED, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %25, %17
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @check_lsn_blocks(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
