; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stats.c_input_stats_Compute.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stats.c_input_stats_Compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32, i32 }

@memory_order_relaxed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_stats_Compute(%struct.input_stats* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.input_stats*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.input_stats* %0, %struct.input_stats** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load %struct.input_stats*, %struct.input_stats** %3, align 8
  %6 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %5, i32 0, i32 9
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = call i32 @vlc_mutex_lock(i32* %7)
  %9 = load %struct.input_stats*, %struct.input_stats** %3, align 8
  %10 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 12
  store i32 %12, i32* %14, align 4
  %15 = load %struct.input_stats*, %struct.input_stats** %3, align 8
  %16 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 11
  store i32 %18, i32* %20, align 8
  %21 = load %struct.input_stats*, %struct.input_stats** %3, align 8
  %22 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %21, i32 0, i32 9
  %23 = call i8* @stats_GetRate(%struct.TYPE_5__* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 10
  store i8* %23, i8** %25, align 8
  %26 = load %struct.input_stats*, %struct.input_stats** %3, align 8
  %27 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %26, i32 0, i32 9
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @vlc_mutex_unlock(i32* %28)
  %30 = load %struct.input_stats*, %struct.input_stats** %3, align 8
  %31 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %30, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @vlc_mutex_lock(i32* %32)
  %34 = load %struct.input_stats*, %struct.input_stats** %3, align 8
  %35 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  %40 = load %struct.input_stats*, %struct.input_stats** %3, align 8
  %41 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %40, i32 0, i32 8
  %42 = call i8* @stats_GetRate(%struct.TYPE_5__* %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 8
  store i8* %42, i8** %44, align 8
  %45 = load %struct.input_stats*, %struct.input_stats** %3, align 8
  %46 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @vlc_mutex_unlock(i32* %47)
  %49 = load %struct.input_stats*, %struct.input_stats** %3, align 8
  %50 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %49, i32 0, i32 7
  %51 = load i32, i32* @memory_order_relaxed, align 4
  %52 = call i8* @atomic_load_explicit(i32* %50, i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 7
  store i8* %52, i8** %54, align 8
  %55 = load %struct.input_stats*, %struct.input_stats** %3, align 8
  %56 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %55, i32 0, i32 6
  %57 = load i32, i32* @memory_order_relaxed, align 4
  %58 = call i8* @atomic_load_explicit(i32* %56, i32 %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  store i8* %58, i8** %60, align 8
  %61 = load %struct.input_stats*, %struct.input_stats** %3, align 8
  %62 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %61, i32 0, i32 5
  %63 = load i32, i32* @memory_order_relaxed, align 4
  %64 = call i8* @atomic_load_explicit(i32* %62, i32 %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load %struct.input_stats*, %struct.input_stats** %3, align 8
  %68 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %67, i32 0, i32 4
  %69 = load i32, i32* @memory_order_relaxed, align 4
  %70 = call i8* @atomic_load_explicit(i32* %68, i32 %69)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load %struct.input_stats*, %struct.input_stats** %3, align 8
  %74 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %73, i32 0, i32 3
  %75 = load i32, i32* @memory_order_relaxed, align 4
  %76 = call i8* @atomic_load_explicit(i32* %74, i32 %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load %struct.input_stats*, %struct.input_stats** %3, align 8
  %80 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %79, i32 0, i32 2
  %81 = load i32, i32* @memory_order_relaxed, align 4
  %82 = call i8* @atomic_load_explicit(i32* %80, i32 %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.input_stats*, %struct.input_stats** %3, align 8
  %86 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %85, i32 0, i32 1
  %87 = load i32, i32* @memory_order_relaxed, align 4
  %88 = call i8* @atomic_load_explicit(i32* %86, i32 %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.input_stats*, %struct.input_stats** %3, align 8
  %92 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %91, i32 0, i32 0
  %93 = load i32, i32* @memory_order_relaxed, align 4
  %94 = call i8* @atomic_load_explicit(i32* %92, i32 %93)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i8* @stats_GetRate(%struct.TYPE_5__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i8* @atomic_load_explicit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
