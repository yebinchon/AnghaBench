; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stats.c_input_stats_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stats.c_input_stats_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.input_stats* @input_stats_Create() #0 {
  %1 = alloca %struct.input_stats*, align 8
  %2 = alloca %struct.input_stats*, align 8
  %3 = call %struct.input_stats* @malloc(i32 40)
  store %struct.input_stats* %3, %struct.input_stats** %2, align 8
  %4 = load %struct.input_stats*, %struct.input_stats** %2, align 8
  %5 = icmp eq %struct.input_stats* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store %struct.input_stats* null, %struct.input_stats** %1, align 8
  br label %42

10:                                               ; preds = %0
  %11 = load %struct.input_stats*, %struct.input_stats** %2, align 8
  %12 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %11, i32 0, i32 9
  %13 = call i32 @input_rate_Init(i32* %12)
  %14 = load %struct.input_stats*, %struct.input_stats** %2, align 8
  %15 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %14, i32 0, i32 8
  %16 = call i32 @input_rate_Init(i32* %15)
  %17 = load %struct.input_stats*, %struct.input_stats** %2, align 8
  %18 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %17, i32 0, i32 7
  %19 = call i32 @atomic_init(i32* %18, i32 0)
  %20 = load %struct.input_stats*, %struct.input_stats** %2, align 8
  %21 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %20, i32 0, i32 6
  %22 = call i32 @atomic_init(i32* %21, i32 0)
  %23 = load %struct.input_stats*, %struct.input_stats** %2, align 8
  %24 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %23, i32 0, i32 5
  %25 = call i32 @atomic_init(i32* %24, i32 0)
  %26 = load %struct.input_stats*, %struct.input_stats** %2, align 8
  %27 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %26, i32 0, i32 4
  %28 = call i32 @atomic_init(i32* %27, i32 0)
  %29 = load %struct.input_stats*, %struct.input_stats** %2, align 8
  %30 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %29, i32 0, i32 3
  %31 = call i32 @atomic_init(i32* %30, i32 0)
  %32 = load %struct.input_stats*, %struct.input_stats** %2, align 8
  %33 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %32, i32 0, i32 2
  %34 = call i32 @atomic_init(i32* %33, i32 0)
  %35 = load %struct.input_stats*, %struct.input_stats** %2, align 8
  %36 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %35, i32 0, i32 1
  %37 = call i32 @atomic_init(i32* %36, i32 0)
  %38 = load %struct.input_stats*, %struct.input_stats** %2, align 8
  %39 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %38, i32 0, i32 0
  %40 = call i32 @atomic_init(i32* %39, i32 0)
  %41 = load %struct.input_stats*, %struct.input_stats** %2, align 8
  store %struct.input_stats* %41, %struct.input_stats** %1, align 8
  br label %42

42:                                               ; preds = %10, %9
  %43 = load %struct.input_stats*, %struct.input_stats** %1, align 8
  ret %struct.input_stats* %43
}

declare dso_local %struct.input_stats* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @input_rate_Init(i32*) #1

declare dso_local i32 @atomic_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
