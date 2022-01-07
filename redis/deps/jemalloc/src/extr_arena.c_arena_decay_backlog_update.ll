; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_arena.c_arena_decay_backlog_update.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_arena.c_arena_decay_backlog_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@SMOOTHSTEP_NSTEPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i64)* @arena_decay_backlog_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arena_decay_backlog_update(%struct.TYPE_4__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @SMOOTHSTEP_NSTEPS, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* @SMOOTHSTEP_NSTEPS, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = call i32 @memset(i32* %14, i32 0, i64 %18)
  br label %60

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* @SMOOTHSTEP_NSTEPS, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %7, align 8
  %40 = sub i64 %38, %39
  %41 = mul i64 %40, 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memmove(i32* %31, i32* %36, i32 %42)
  %44 = load i64, i64* %7, align 8
  %45 = icmp ugt i64 %44, 1
  br i1 %45, label %46, label %59

46:                                               ; preds = %20
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @SMOOTHSTEP_NSTEPS, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %7, align 8
  %53 = sub i64 %51, %52
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i64, i64* %7, align 8
  %56 = sub i64 %55, 1
  %57 = mul i64 %56, 8
  %58 = call i32 @memset(i32* %54, i32 0, i64 %57)
  br label %59

59:                                               ; preds = %46, %20
  br label %60

60:                                               ; preds = %59, %11
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @arena_decay_backlog_update_last(%struct.TYPE_4__* %61, i64 %62)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @arena_decay_backlog_update_last(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
