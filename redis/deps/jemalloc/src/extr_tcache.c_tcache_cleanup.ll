; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_tcache.c_tcache_cleanup.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_tcache.c_tcache_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@config_debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcache_cleanup(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32* @tsd_tcachep_get(i32* %4)
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @tcache_available(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @tsd_tcache_enabled_get(i32* %10)
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* @config_debug, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %9
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_2__* @tcache_small_bin_get(i32* %18, i32 0)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  br label %25

25:                                               ; preds = %17, %9
  br label %46

26:                                               ; preds = %1
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @tsd_tcache_enabled_get(i32* %27)
  %29 = call i32 @assert(i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call %struct.TYPE_2__* @tcache_small_bin_get(i32* %30, i32 0)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @tcache_destroy(i32* %37, i32* %38, i32 1)
  %40 = load i64, i64* @config_debug, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %26
  %43 = load i32*, i32** %3, align 8
  %44 = call %struct.TYPE_2__* @tcache_small_bin_get(i32* %43, i32 0)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %25, %42, %26
  ret void
}

declare dso_local i32* @tsd_tcachep_get(i32*) #1

declare dso_local i32 @tcache_available(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tsd_tcache_enabled_get(i32*) #1

declare dso_local %struct.TYPE_2__* @tcache_small_bin_get(i32*, i32) #1

declare dso_local i32 @tcache_destroy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
