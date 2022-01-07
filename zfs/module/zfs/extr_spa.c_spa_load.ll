; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_load.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }

@FM_EREPORT_ZFS_POOL = common dso_local global i8* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@SPA_LOAD_ERROR = common dso_local global i32 0, align 4
@SPA_LOAD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32)* @spa_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_load(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** @FM_EREPORT_ZFS_POOL, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = call i32 @spa_guid(%struct.TYPE_9__* %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = call i32 @spa_load_state(%struct.TYPE_9__* %15)
  %17 = call i32 @spa_import_progress_set_state(i32 %14, i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = call i32 @gethrestime(%struct.TYPE_10__* %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @spa_load_impl(%struct.TYPE_9__* %21, i32 %22, i8** %7)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = call i32 @spa_evicting_os_wait(%struct.TYPE_9__* %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = call i32 @zfs_refcount_count(i32* %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @EEXIST, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %37, %33
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @EBADF, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = call i32 @zfs_ereport_post(i8* %49, %struct.TYPE_9__* %50, i32* null, i32* null, i32* null, i32 0, i32 0)
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %3
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @SPA_LOAD_ERROR, align 4
  br label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @SPA_LOAD_NONE, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = call i32 @spa_guid(%struct.TYPE_9__* %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = call i32 @spa_load_state(%struct.TYPE_9__* %68)
  %70 = call i32 @spa_import_progress_set_state(i32 %67, i32 %69)
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32 @spa_import_progress_set_state(i32, i32) #1

declare dso_local i32 @spa_guid(%struct.TYPE_9__*) #1

declare dso_local i32 @spa_load_state(%struct.TYPE_9__*) #1

declare dso_local i32 @gethrestime(%struct.TYPE_10__*) #1

declare dso_local i32 @spa_load_impl(%struct.TYPE_9__*, i32, i8**) #1

declare dso_local i32 @spa_evicting_os_wait(%struct.TYPE_9__*) #1

declare dso_local i32 @zfs_refcount_count(i32*) #1

declare dso_local i32 @zfs_ereport_post(i8*, %struct.TYPE_9__*, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
