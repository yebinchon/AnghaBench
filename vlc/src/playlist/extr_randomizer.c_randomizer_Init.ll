; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_Init.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.randomizer = type { i32, i64, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @randomizer_Init(%struct.randomizer* %0) #0 {
  %2 = alloca %struct.randomizer*, align 8
  store %struct.randomizer* %0, %struct.randomizer** %2, align 8
  %3 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %4 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %3, i32 0, i32 5
  %5 = call i32 @vlc_vector_init(i32* %4)
  %6 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %7 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @vlc_rand_bytes(i32 %8, i32 4)
  %10 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %11 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %13 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %15 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %17 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  ret void
}

declare dso_local i32 @vlc_vector_init(i32*) #1

declare dso_local i32 @vlc_rand_bytes(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
