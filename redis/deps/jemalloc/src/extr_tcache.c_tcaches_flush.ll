; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_tcache.c_tcaches_flush.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_tcache.c_tcaches_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tcaches_mtx = common dso_local global i32 0, align 4
@tcaches = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcaches_flush(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @tsd_tsdn(i32* %6)
  %8 = call i32 @malloc_mutex_lock(i32 %7, i32* @tcaches_mtx)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** @tcaches, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = call i32* @tcaches_elm_remove(i32* %9, i32* %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @tsd_tsdn(i32* %15)
  %17 = call i32 @malloc_mutex_unlock(i32 %16, i32* @tcaches_mtx)
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @tcache_destroy(i32* %21, i32* %22, i32 0)
  br label %24

24:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32* @tcaches_elm_remove(i32*, i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

declare dso_local i32 @tcache_destroy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
