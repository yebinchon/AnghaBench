; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_Prev.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_Prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.randomizer = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @randomizer_Prev(%struct.randomizer* %0) #0 {
  %2 = alloca %struct.randomizer*, align 8
  %3 = alloca i32*, align 8
  store %struct.randomizer* %0, %struct.randomizer** %2, align 8
  %4 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %5 = call i32 @randomizer_HasPrev(%struct.randomizer* %4)
  %6 = call i32 @assert(i32 %5)
  %7 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %8 = call i32* @randomizer_PeekPrev(%struct.randomizer* %7)
  store i32* %8, i32** %3, align 8
  %9 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %10 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %15 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %20 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi i32 [ %17, %13 ], [ %23, %18 ]
  %26 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %27 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %3, align 8
  ret i32* %28
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @randomizer_HasPrev(%struct.randomizer*) #1

declare dso_local i32* @randomizer_PeekPrev(%struct.randomizer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
