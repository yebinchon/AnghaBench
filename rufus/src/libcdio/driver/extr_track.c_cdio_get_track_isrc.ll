; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_track.c_cdio_get_track_isrc.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_track.c_cdio_get_track_isrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* (i32, i64)* }

@.str = private unnamed_addr constant [25 x i8] c"Null CdIo object passed\0A\00", align 1
@CDIO_LOG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Number of tracks exceeds maximum (%d vs. %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cdio_get_track_isrc(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = icmp eq %struct.TYPE_6__* null, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @cdio_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %39

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = call i64 @cdio_get_last_track_num(%struct.TYPE_6__* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i32, i32* @CDIO_LOG_WARN, align 4
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @cdio_log(i32 %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %19, i64 %20)
  store i8* null, i8** %3, align 8
  br label %39

22:                                               ; preds = %11
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i8* (i32, i64)*, i8* (i32, i64)** %25, align 8
  %27 = icmp ne i8* (i32, i64)* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i8* (i32, i64)*, i8* (i32, i64)** %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i8* %32(i32 %35, i64 %36)
  store i8* %37, i8** %3, align 8
  br label %39

38:                                               ; preds = %22
  store i8* null, i8** %3, align 8
  br label %39

39:                                               ; preds = %38, %28, %17, %9
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i32 @cdio_info(i8*) #1

declare dso_local i64 @cdio_get_last_track_num(%struct.TYPE_6__*) #1

declare dso_local i32 @cdio_log(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
