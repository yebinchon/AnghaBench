; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_mmap-cache.c_mmap_cache_free_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_mmap-cache.c_mmap_cache_free_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmap_cache_free_fd(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_10__* %5)
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_10__* %7)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = call i32 @mmap_cache_process_sigbus(%struct.TYPE_10__* %9)
  br label %11

11:                                               ; preds = %16, %2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @window_free(i64 %19)
  br label %11

21:                                               ; preds = %11
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @FD_TO_PTR(i32 %34)
  %36 = call i32 @hashmap_remove(i32 %31, i32 %35)
  %37 = call i32 @assert_se(i32 %36)
  br label %38

38:                                               ; preds = %26, %21
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = call i32 @free(%struct.TYPE_10__* %39)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @mmap_cache_process_sigbus(%struct.TYPE_10__*) #1

declare dso_local i32 @window_free(i64) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @hashmap_remove(i32, i32) #1

declare dso_local i32 @FD_TO_PTR(i32) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
