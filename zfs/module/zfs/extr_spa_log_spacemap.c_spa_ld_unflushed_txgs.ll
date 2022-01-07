; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_log_spacemap.c_spa_ld_unflushed_txgs.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_log_spacemap.c_spa_ld_unflushed_txgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_13__**, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }

@VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"spa_ld_unflushed_txgs(): failed at zap_lookup(vdev_top_zap=%llu) [error %d]\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"spa_ld_unflushed_txgs(): failed at dmu_read(obj=%llu) [error %d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @spa_ld_unflushed_txgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_ld_unflushed_txgs(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %4, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = call i32* @spa_meta_objset(%struct.TYPE_11__* %16)
  store i32* %17, i32** %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %109

23:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS, align 4
  %29 = call i32 @zap_lookup(i32* %24, i64 %27, i32 %28, i32 8, i32 1, i64* %6)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @ENOENT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %109

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @spa_load_failed(%struct.TYPE_11__* %38, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %109

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  store i64 0, i64* %8, align 8
  br label %48

48:                                               ; preds = %105, %47
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %108

54:                                               ; preds = %48
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %57, i64 %58
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %9, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = icmp ne %struct.TYPE_13__* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @ASSERT(i32 %63)
  store i64 8, i64* %11, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = mul i64 %67, %68
  store i64 %69, i64* %12, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @dmu_read(i32* %70, i64 %71, i64 %72, i64 %73, %struct.TYPE_12__* %10, i32 0)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %54
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = load i64, i64* %6, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @spa_load_failed(%struct.TYPE_11__* %78, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %109

84:                                               ; preds = %54
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %84
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = call i32 @mutex_enter(i32* %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %100 = call i32 @avl_add(i32* %98, %struct.TYPE_13__* %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = call i32 @mutex_exit(i32* %102)
  br label %104

104:                                              ; preds = %93, %84
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %8, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %8, align 8
  br label %48

108:                                              ; preds = %48
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %77, %37, %33, %22
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32* @spa_meta_objset(%struct.TYPE_11__*) #1

declare dso_local i32 @zap_lookup(i32*, i64, i32, i32, i32, i64*) #1

declare dso_local i32 @spa_load_failed(%struct.TYPE_11__*, i8*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_read(i32*, i64, i64, i64, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @avl_add(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
