; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_spill_hold_existing.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_spill_hold_existing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SPA_VERSION_SA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DB_RF_HAVESTRUCT = common dso_local global i32 0, align 4
@DB_RF_CANFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_spill_hold_existing(i32* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32** %2, i32*** %6, align 8
  %10 = load i32*, i32** %4, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @DB_DNODE_ENTER(i32* %11)
  %13 = load i32*, i32** %7, align 8
  %14 = call %struct.TYPE_6__* @DB_DNODE(i32* %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %8, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @spa_version(i32 %19)
  %21 = load i64, i64* @SPA_VERSION_SA, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = call i32 @SET_ERROR(i32 %24)
  store i32 %25, i32* %9, align 4
  br label %50

26:                                               ; preds = %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* @RW_READER, align 4
  %30 = call i32 @rw_enter(i32* %28, i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOENT, align 4
  %37 = call i32 @SET_ERROR(i32 %36)
  store i32 %37, i32* %9, align 4
  br label %46

38:                                               ; preds = %26
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = load i32, i32* @DB_RF_HAVESTRUCT, align 4
  %41 = load i32, i32* @DB_RF_CANFAIL, align 4
  %42 = or i32 %40, %41
  %43 = load i8*, i8** %5, align 8
  %44 = load i32**, i32*** %6, align 8
  %45 = call i32 @dmu_spill_hold_by_dnode(%struct.TYPE_6__* %39, i32 %42, i8* %43, i32** %44)
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %38, %35
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @rw_exit(i32* %48)
  br label %50

50:                                               ; preds = %46, %23
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @DB_DNODE_EXIT(i32* %51)
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local i32 @DB_DNODE_ENTER(i32*) #1

declare dso_local %struct.TYPE_6__* @DB_DNODE(i32*) #1

declare dso_local i64 @spa_version(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @dmu_spill_hold_by_dnode(%struct.TYPE_6__*, i32, i8*, i32**) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @DB_DNODE_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
