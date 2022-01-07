; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_bonus_hold_by_dnode.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_bonus_hold_by_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }

@DB_RF_MUST_SUCCEED = common dso_local global i32 0, align 4
@DMU_READ_NO_PREFETCH = common dso_local global i32 0, align 4
@DB_RF_NOPREFETCH = common dso_local global i32 0, align 4
@DMU_READ_NO_DECRYPT = common dso_local global i32 0, align 4
@DB_RF_NO_DECRYPT = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_bonus_hold_by_dnode(%struct.TYPE_10__* %0, i8* %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @DB_RF_MUST_SUCCEED, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @DB_RF_NOPREFETCH, align 4
  %20 = load i32, i32* %12, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %18, %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @DMU_READ_NO_DECRYPT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @DB_RF_NO_DECRYPT, align 4
  %29 = load i32, i32* %12, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* @RW_READER, align 4
  %35 = call i32 @rw_enter(i32* %33, i32 %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = icmp eq %struct.TYPE_11__* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %31
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = call i32 @rw_exit(i32* %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* @RW_WRITER, align 4
  %47 = call i32 @rw_enter(i32* %45, i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = icmp eq %struct.TYPE_11__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = call i32 @dbuf_create_bonus(%struct.TYPE_10__* %53)
  br label %55

55:                                               ; preds = %52, %40
  br label %56

56:                                               ; preds = %55, %31
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %10, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @zfs_refcount_add(i32* %61, i8* %62)
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %68 = call i32 @dnode_add_ref(%struct.TYPE_10__* %66, %struct.TYPE_11__* %67)
  %69 = call i32 @VERIFY(i32 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = call i32 @atomic_inc_32(i32* %71)
  br label %73

73:                                               ; preds = %65, %56
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = call i32 @rw_exit(i32* %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @dbuf_read(%struct.TYPE_11__* %77, i32* null, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = call i32 @dnode_evict_bonus(%struct.TYPE_10__* %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @dbuf_rele(%struct.TYPE_11__* %85, i8* %86)
  %88 = load i32**, i32*** %8, align 8
  store i32* null, i32** %88, align 8
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %5, align 4
  br label %94

90:                                               ; preds = %73
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32**, i32*** %8, align 8
  store i32* %92, i32** %93, align 8
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %90, %82
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @dbuf_create_bonus(%struct.TYPE_10__*) #1

declare dso_local i32 @zfs_refcount_add(i32*, i8*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @dnode_add_ref(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @atomic_inc_32(i32*) #1

declare dso_local i32 @dbuf_read(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @dnode_evict_bonus(%struct.TYPE_10__*) #1

declare dso_local i32 @dbuf_rele(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
