; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_diagnosis.c_zfs_case_unserialize.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_diagnosis.c_zfs_case_unserialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i64, i64 }

@FMD_SLEEP = common dso_local global i32 0, align 4
@CASE_DATA = common dso_local global i32 0, align 4
@CASE_DATA_VERSION_SERD = common dso_local global i64 0, align 8
@zfs_remove_timeout = common dso_local global i32 0, align 4
@zfs_case_pool = common dso_local global i32 0, align 4
@zfs_cases = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*, i32*)* @zfs_case_unserialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @zfs_case_unserialize(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @FMD_SLEEP, align 4
  %9 = call %struct.TYPE_10__* @fmd_hdl_zalloc(i32* %7, i32 32, i32 %8)
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  store i32* %10, i32** %12, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @CASE_DATA, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = call i32 @fmd_buf_read(i32* %13, i32* %14, i32 %15, %struct.TYPE_11__* %17, i32 16)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CASE_DATA_VERSION_SERD, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = call i32 @fmd_hdl_free(i32* %26, %struct.TYPE_10__* %27, i32 32)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %56

29:                                               ; preds = %2
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = load i32, i32* @zfs_remove_timeout, align 4
  %39 = call i32 @fmd_timer_install(i32* %36, %struct.TYPE_10__* %37, i32* null, i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* @zfs_case_pool, align 4
  %47 = call i32 @uu_list_node_init(%struct.TYPE_10__* %43, i32* %45, i32 %46)
  %48 = load i32, i32* @zfs_cases, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = call i32 @uu_list_insert_before(i32 %48, i32* null, %struct.TYPE_10__* %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = call i32 @fmd_case_setspecific(i32* %51, i32* %52, %struct.TYPE_10__* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %3, align 8
  br label %56

56:                                               ; preds = %42, %25
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %57
}

declare dso_local %struct.TYPE_10__* @fmd_hdl_zalloc(i32*, i32, i32) #1

declare dso_local i32 @fmd_buf_read(i32*, i32*, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @fmd_hdl_free(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @fmd_timer_install(i32*, %struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @uu_list_node_init(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @uu_list_insert_before(i32, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @fmd_case_setspecific(i32*, i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
