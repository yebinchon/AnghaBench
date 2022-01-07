; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_prof.c_prof_tdata_destroy_locked.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_prof.c_prof_tdata_destroy_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_6__* }

@tdatas_mtx = common dso_local global i32 0, align 4
@tdatas = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i32)* @prof_tdata_destroy_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prof_tdata_destroy_locked(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @tsd_tsdn(i32* %7)
  %9 = call i32 @malloc_mutex_assert_owner(i32 %8, i32* @tdatas_mtx)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = call i32 @tdata_tree_remove(i32* @tdatas, %struct.TYPE_6__* %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @prof_tdata_should_destroy_unlocked(%struct.TYPE_6__* %12, i32 %13)
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @tsd_tsdn(i32* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call i32 @idalloctm(i32 %22, %struct.TYPE_6__* %25, i32* null, i32* null, i32 1, i32 1)
  br label %27

27:                                               ; preds = %20, %3
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = call i32 @ckh_delete(i32* %28, i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @tsd_tsdn(i32* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = call i32 @idalloctm(i32 %33, %struct.TYPE_6__* %34, i32* null, i32* null, i32 1, i32 1)
  ret void
}

declare dso_local i32 @malloc_mutex_assert_owner(i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @tdata_tree_remove(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @prof_tdata_should_destroy_unlocked(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @idalloctm(i32, %struct.TYPE_6__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @ckh_delete(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
