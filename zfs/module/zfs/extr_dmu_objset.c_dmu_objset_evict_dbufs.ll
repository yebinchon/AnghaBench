; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_evict_dbufs.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_evict_dbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_objset_evict_dbufs(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load i32, i32* @KM_SLEEP, align 4
  %6 = call i32* @kmem_alloc(i32 4, i32 %5)
  store i32* %6, i32** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = call i32 @mutex_enter(i32* %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = call i32* @list_head(i32* %11)
  store i32* %12, i32** %4, align 8
  br label %13

13:                                               ; preds = %51, %1
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %52

16:                                               ; preds = %13
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @FTAG, align 4
  %19 = call i64 @dnode_add_ref(i32* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %16
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @list_insert_after(i32* %23, i32* %24, i32* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = call i32 @mutex_exit(i32* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @dnode_evict_dbufs(i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @FTAG, align 4
  %34 = call i32 @dnode_rele(i32* %32, i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i32 @mutex_enter(i32* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32*, i32** %3, align 8
  %41 = call i32* @list_next(i32* %39, i32* %40)
  store i32* %41, i32** %4, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @list_remove(i32* %43, i32* %44)
  br label %51

46:                                               ; preds = %16
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32*, i32** %4, align 8
  %50 = call i32* @list_next(i32* %48, i32* %49)
  store i32* %50, i32** %4, align 8
  br label %51

51:                                               ; preds = %46, %21
  br label %13

52:                                               ; preds = %13
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = call i32 @mutex_exit(i32* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @kmem_free(i32* %56, i32 4)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %59 = call i32* @DMU_USERUSED_DNODE(%struct.TYPE_7__* %58)
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %52
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = call i32* @DMU_PROJECTUSED_DNODE(%struct.TYPE_7__* %62)
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = call i32* @DMU_PROJECTUSED_DNODE(%struct.TYPE_7__* %66)
  %68 = call i32 @dnode_evict_dbufs(i32* %67)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = call i32* @DMU_GROUPUSED_DNODE(%struct.TYPE_7__* %70)
  %72 = call i32 @dnode_evict_dbufs(i32* %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = call i32* @DMU_USERUSED_DNODE(%struct.TYPE_7__* %73)
  %75 = call i32 @dnode_evict_dbufs(i32* %74)
  br label %76

76:                                               ; preds = %69, %52
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = call i32* @DMU_META_DNODE(%struct.TYPE_7__* %77)
  %79 = call i32 @dnode_evict_dbufs(i32* %78)
  ret void
}

declare dso_local i32* @kmem_alloc(i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32* @list_head(i32*) #1

declare dso_local i64 @dnode_add_ref(i32*, i32) #1

declare dso_local i32 @list_insert_after(i32*, i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dnode_evict_dbufs(i32*) #1

declare dso_local i32 @dnode_rele(i32*, i32) #1

declare dso_local i32* @list_next(i32*, i32*) #1

declare dso_local i32 @list_remove(i32*, i32*) #1

declare dso_local i32 @kmem_free(i32*, i32) #1

declare dso_local i32* @DMU_USERUSED_DNODE(%struct.TYPE_7__*) #1

declare dso_local i32* @DMU_PROJECTUSED_DNODE(%struct.TYPE_7__*) #1

declare dso_local i32* @DMU_GROUPUSED_DNODE(%struct.TYPE_7__*) #1

declare dso_local i32* @DMU_META_DNODE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
