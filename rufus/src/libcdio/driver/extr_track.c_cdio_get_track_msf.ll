; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_track.c_cdio_get_track_msf.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_track.c_cdio_get_track_msf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i32, i32*)*, i64 (i32, i32)* }

@CDIO_INVALID_LBA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdio_get_track_msf(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

12:                                               ; preds = %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %15, align 8
  %17 = icmp ne i32 (i32, i32, i32*)* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 %22(i32 %25, i32 %26, i32* %27)
  store i32 %28, i32* %4, align 4
  br label %54

29:                                               ; preds = %12
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64 (i32, i32)*, i64 (i32, i32)** %32, align 8
  %34 = icmp ne i64 (i32, i32)* %33, null
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64 (i32, i32)*, i64 (i32, i32)** %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 %39(i32 %42, i32 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @CDIO_INVALID_LBA, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %54

49:                                               ; preds = %35
  %50 = load i64, i64* %8, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @cdio_lba_to_msf(i64 %50, i32* %51)
  store i32 1, i32* %4, align 4
  br label %54

53:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %49, %48, %18, %11
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @cdio_lba_to_msf(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
