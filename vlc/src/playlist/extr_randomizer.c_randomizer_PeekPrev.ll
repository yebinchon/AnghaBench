; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_PeekPrev.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_PeekPrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.randomizer = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @randomizer_PeekPrev(%struct.randomizer* %0) #0 {
  %2 = alloca %struct.randomizer*, align 8
  %3 = alloca i64, align 8
  store %struct.randomizer* %0, %struct.randomizer** %2, align 8
  %4 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %5 = call i32 @randomizer_HasPrev(%struct.randomizer* %4)
  %6 = call i32 @assert(i32 %5)
  %7 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %8 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %11 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %9, %13
  %15 = sub nsw i32 %14, 2
  %16 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %17 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = srem i32 %15, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %3, align 8
  %22 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %23 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds i32*, i32** %25, i64 %26
  %28 = load i32*, i32** %27, align 8
  ret i32* %28
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @randomizer_HasPrev(%struct.randomizer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
