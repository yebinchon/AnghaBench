; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_hdr_l2hdr_destroy.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_hdr_l2hdr_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@arcstat_l2_psize = common dso_local global i32 0, align 4
@arcstat_l2_lsize = common dso_local global i32 0, align 4
@ARC_FLAG_HAS_L2HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @arc_hdr_l2hdr_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_hdr_l2hdr_destroy(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = call i32 @HDR_GET_PSIZE(%struct.TYPE_14__* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @vdev_psize_to_asize(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  %21 = call i32 @MUTEX_HELD(i32* %20)
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = call i32 @HDR_HAS_L2HDR(%struct.TYPE_14__* %23)
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %29 = call i32 @list_remove(i32* %27, %struct.TYPE_14__* %28)
  %30 = load i32, i32* @arcstat_l2_psize, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i32 @ARCSTAT_INCR(i32 %30, i32 %32)
  %34 = load i32, i32* @arcstat_l2_lsize, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = call i32 @HDR_GET_LSIZE(%struct.TYPE_14__* %35)
  %37 = sub nsw i32 0, %36
  %38 = call i32 @ARCSTAT_INCR(i32 %34, i32 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32 @vdev_space_update(i32 %41, i32 %43, i32 0, i32 0)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %48 = call i32 @arc_hdr_size(%struct.TYPE_14__* %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %50 = call i32 @zfs_refcount_remove_many(i32* %46, i32 %48, %struct.TYPE_14__* %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %52 = load i32, i32* @ARC_FLAG_HAS_L2HDR, align 4
  %53 = call i32 @arc_hdr_clear_flags(%struct.TYPE_14__* %51, i32 %52)
  ret void
}

declare dso_local i32 @HDR_GET_PSIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @vdev_psize_to_asize(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @HDR_HAS_L2HDR(%struct.TYPE_14__*) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @ARCSTAT_INCR(i32, i32) #1

declare dso_local i32 @HDR_GET_LSIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @vdev_space_update(i32, i32, i32, i32) #1

declare dso_local i32 @zfs_refcount_remove_many(i32*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @arc_hdr_size(%struct.TYPE_14__*) #1

declare dso_local i32 @arc_hdr_clear_flags(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
