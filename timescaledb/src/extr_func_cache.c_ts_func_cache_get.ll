; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_func_cache.c_ts_func_cache_get.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_func_cache.c_ts_func_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@func_hash = common dso_local global i32* null, align 8
@HASH_FIND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_func_cache_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @func_hash, align 8
  %5 = icmp eq i32* null, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (...) @initialize_func_info()
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32*, i32** @func_hash, align 8
  %10 = load i32, i32* @HASH_FIND, align 4
  %11 = call %struct.TYPE_3__* @hash_search(i32* %9, i32* %2, i32 %10, i32* null)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %3, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = icmp eq %struct.TYPE_3__* null, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %19

15:                                               ; preds = %8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi i32* [ null, %14 ], [ %18, %15 ]
  ret i32* %20
}

declare dso_local i32 @initialize_func_info(...) #1

declare dso_local %struct.TYPE_3__* @hash_search(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
