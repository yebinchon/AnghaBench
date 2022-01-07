; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_kstat_update.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_kstat_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@KSTAT_WRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@arc_anon = common dso_local global i32 0, align 4
@arc_mru = common dso_local global i32 0, align 4
@arc_mru_ghost = common dso_local global i32 0, align 4
@arc_mfu = common dso_local global i32 0, align 4
@arc_mfu_ghost = common dso_local global i32 0, align 4
@arc_size = common dso_local global i32 0, align 4
@arc_meta_used = common dso_local global i32 0, align 4
@astat_data_size = common dso_local global i32 0, align 4
@astat_metadata_size = common dso_local global i32 0, align 4
@astat_hdr_size = common dso_local global i32 0, align 4
@astat_l2_hdr_size = common dso_local global i32 0, align 4
@astat_dbuf_size = common dso_local global i32 0, align 4
@astat_dnode_size = common dso_local global i32 0, align 4
@astat_bonus_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32)* @arc_kstat_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_kstat_update(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @KSTAT_WRITE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EACCES, align 4
  %24 = call i32 @SET_ERROR(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %91

25:                                               ; preds = %2
  %26 = load i32, i32* @arc_anon, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 17
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 16
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 15
  %33 = call i32 @arc_kstat_update_state(i32 %26, i32* %28, i32* %30, i32* %32)
  %34 = load i32, i32* @arc_mru, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 14
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 13
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 12
  %41 = call i32 @arc_kstat_update_state(i32 %34, i32* %36, i32* %38, i32* %40)
  %42 = load i32, i32* @arc_mru_ghost, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 11
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 10
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 9
  %49 = call i32 @arc_kstat_update_state(i32 %42, i32* %44, i32* %46, i32* %48)
  %50 = load i32, i32* @arc_mfu, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 7
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 6
  %57 = call i32 @arc_kstat_update_state(i32 %50, i32* %52, i32* %54, i32* %56)
  %58 = load i32, i32* @arc_mfu_ghost, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 3
  %65 = call i32 @arc_kstat_update_state(i32 %58, i32* %60, i32* %62, i32* %64)
  %66 = call i32 @aggsum_value(i32* @arc_size)
  store i32 %66, i32* %7, align 4
  %67 = call i32 @aggsum_value(i32* @arc_meta_used)
  store i32 %67, i32* %8, align 4
  %68 = call i32 @aggsum_value(i32* @astat_data_size)
  store i32 %68, i32* %9, align 4
  %69 = call i32 @aggsum_value(i32* @astat_metadata_size)
  store i32 %69, i32* %10, align 4
  %70 = call i32 @aggsum_value(i32* @astat_hdr_size)
  store i32 %70, i32* %11, align 4
  %71 = call i32 @aggsum_value(i32* @astat_l2_hdr_size)
  store i32 %71, i32* %12, align 4
  %72 = call i32 @aggsum_value(i32* @astat_dbuf_size)
  store i32 %72, i32* %13, align 4
  %73 = call i32 @aggsum_value(i32* @astat_dnode_size)
  store i32 %73, i32* %14, align 4
  %74 = call i32 @aggsum_value(i32* @astat_bonus_size)
  store i32 %74, i32* %15, align 4
  %75 = call i32 (...) @arc_all_memory()
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 4
  %80 = call i32 (...) @arc_free_memory()
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 4
  %85 = call i32 (...) @arc_available_memory()
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %22
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @arc_kstat_update_state(i32, i32*, i32*, i32*) #1

declare dso_local i32 @aggsum_value(i32*) #1

declare dso_local i32 @arc_all_memory(...) #1

declare dso_local i32 @arc_free_memory(...) #1

declare dso_local i32 @arc_available_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
