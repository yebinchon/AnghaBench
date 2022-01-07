; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_spa_stats.c_spa_iostats_trim_add.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_spa_stats.c_spa_iostats_trim_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }

@TRIM_TYPE_MANUAL = common dso_local global i64 0, align 8
@trim_extents_written = common dso_local global i32 0, align 4
@trim_bytes_written = common dso_local global i32 0, align 4
@trim_extents_skipped = common dso_local global i32 0, align 4
@trim_bytes_skipped = common dso_local global i32 0, align 4
@trim_extents_failed = common dso_local global i32 0, align 4
@trim_bytes_failed = common dso_local global i32 0, align 4
@autotrim_extents_written = common dso_local global i32 0, align 4
@autotrim_bytes_written = common dso_local global i32 0, align 4
@autotrim_extents_skipped = common dso_local global i32 0, align 4
@autotrim_bytes_skipped = common dso_local global i32 0, align 4
@autotrim_extents_failed = common dso_local global i32 0, align 4
@autotrim_bytes_failed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_iostats_trim_add(%struct.TYPE_7__* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %17, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %18, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %27 = icmp eq %struct.TYPE_9__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %8
  br label %74

29:                                               ; preds = %8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %19, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @TRIM_TYPE_MANUAL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %29
  %37 = load i32, i32* @trim_extents_written, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @SPA_IOSTATS_ADD(i32 %37, i32 %38)
  %40 = load i32, i32* @trim_bytes_written, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @SPA_IOSTATS_ADD(i32 %40, i32 %41)
  %43 = load i32, i32* @trim_extents_skipped, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @SPA_IOSTATS_ADD(i32 %43, i32 %44)
  %46 = load i32, i32* @trim_bytes_skipped, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @SPA_IOSTATS_ADD(i32 %46, i32 %47)
  %49 = load i32, i32* @trim_extents_failed, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @SPA_IOSTATS_ADD(i32 %49, i32 %50)
  %52 = load i32, i32* @trim_bytes_failed, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @SPA_IOSTATS_ADD(i32 %52, i32 %53)
  br label %74

55:                                               ; preds = %29
  %56 = load i32, i32* @autotrim_extents_written, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @SPA_IOSTATS_ADD(i32 %56, i32 %57)
  %59 = load i32, i32* @autotrim_bytes_written, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @SPA_IOSTATS_ADD(i32 %59, i32 %60)
  %62 = load i32, i32* @autotrim_extents_skipped, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @SPA_IOSTATS_ADD(i32 %62, i32 %63)
  %65 = load i32, i32* @autotrim_bytes_skipped, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @SPA_IOSTATS_ADD(i32 %65, i32 %66)
  %68 = load i32, i32* @autotrim_extents_failed, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @SPA_IOSTATS_ADD(i32 %68, i32 %69)
  %71 = load i32, i32* @autotrim_bytes_failed, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @SPA_IOSTATS_ADD(i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %28, %55, %36
  ret void
}

declare dso_local i32 @SPA_IOSTATS_ADD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
