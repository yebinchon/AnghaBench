; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_can_coalesce.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_can_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@extent_state_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*, i32*)* @extent_can_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extent_can_coalesce(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = call i32* @extent_arena_get(i32* %10)
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** %9, align 8
  %17 = call i32* @extent_arena_get(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %43

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @extent_state_get(i32* %22)
  %24 = load i64, i64* @extent_state_active, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32*, i32** %9, align 8
  %29 = call i64 @extent_state_get(i32* %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %43

35:                                               ; preds = %21
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 @extent_committed_get(i32* %36)
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @extent_committed_get(i32* %38)
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %43

42:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %41, %34, %20
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @extent_arena_get(i32*) #1

declare dso_local i64 @extent_state_get(i32*) #1

declare dso_local i64 @extent_committed_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
