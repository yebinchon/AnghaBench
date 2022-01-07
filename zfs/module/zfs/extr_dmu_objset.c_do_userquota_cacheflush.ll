; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_do_userquota_cacheflush.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_do_userquota_cacheflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@DMU_USERUSED_OBJECT = common dso_local global i32 0, align 4
@DMU_GROUPUSED_OBJECT = common dso_local global i32 0, align 4
@DMU_PROJECTUSED_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*)* @do_userquota_cacheflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_userquota_cacheflush(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @dmu_tx_is_syncing(i32* %9)
  %11 = call i32 @ASSERT(i32 %10)
  store i8* null, i8** %7, align 8
  br label %12

12:                                               ; preds = %17, %3
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = call %struct.TYPE_10__* @avl_destroy_nodes(i32* %14, i8** %7)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %8, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = call i32 @mutex_enter(i32* %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = load i32, i32* @DMU_USERUSED_OBJECT, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @zap_increment(%struct.TYPE_12__* %21, i32 %22, i32 %25, i32 %28, i32* %29)
  %31 = call i32 @VERIFY0(i32 %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = call i32 @mutex_exit(i32* %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = call i32 @kmem_free(%struct.TYPE_10__* %35, i32 8)
  br label %12

37:                                               ; preds = %12
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = call i32 @avl_destroy(i32* %39)
  store i8* null, i8** %7, align 8
  br label %41

41:                                               ; preds = %46, %37
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = call %struct.TYPE_10__* @avl_destroy_nodes(i32* %43, i8** %7)
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %8, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %41
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = call i32 @mutex_enter(i32* %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = load i32, i32* @DMU_GROUPUSED_OBJECT, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @zap_increment(%struct.TYPE_12__* %50, i32 %51, i32 %54, i32 %57, i32* %58)
  %60 = call i32 @VERIFY0(i32 %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = call i32 @mutex_exit(i32* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = call i32 @kmem_free(%struct.TYPE_10__* %64, i32 8)
  br label %41

66:                                               ; preds = %41
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = call i32 @avl_destroy(i32* %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = call i64 @dmu_objset_projectquota_enabled(%struct.TYPE_12__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %66
  store i8* null, i8** %7, align 8
  br label %74

74:                                               ; preds = %79, %73
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = call %struct.TYPE_10__* @avl_destroy_nodes(i32* %76, i8** %7)
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %8, align 8
  %78 = icmp ne %struct.TYPE_10__* %77, null
  br i1 %78, label %79, label %99

79:                                               ; preds = %74
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = call i32 @mutex_enter(i32* %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = load i32, i32* @DMU_PROJECTUSED_OBJECT, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @zap_increment(%struct.TYPE_12__* %83, i32 %84, i32 %87, i32 %90, i32* %91)
  %93 = call i32 @VERIFY0(i32 %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = call i32 @mutex_exit(i32* %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = call i32 @kmem_free(%struct.TYPE_10__* %97, i32 8)
  br label %74

99:                                               ; preds = %74
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = call i32 @avl_destroy(i32* %101)
  br label %103

103:                                              ; preds = %99, %66
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(i32*) #1

declare dso_local %struct.TYPE_10__* @avl_destroy_nodes(i32*, i8**) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_increment(%struct.TYPE_12__*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @avl_destroy(i32*) #1

declare dso_local i64 @dmu_objset_projectquota_enabled(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
