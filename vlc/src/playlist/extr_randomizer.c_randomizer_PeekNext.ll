; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_PeekNext.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_PeekNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.randomizer = type { i64, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @randomizer_PeekNext(%struct.randomizer* %0) #0 {
  %2 = alloca %struct.randomizer*, align 8
  store %struct.randomizer* %0, %struct.randomizer** %2, align 8
  %3 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %4 = call i32 @randomizer_HasNext(%struct.randomizer* %3)
  %5 = call i32 @assert(i32 %4)
  %6 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %7 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %10 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %8, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %16 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %19 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %24 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %28 = call i32 @randomizer_AutoReshuffle(%struct.randomizer* %27)
  br label %29

29:                                               ; preds = %22, %14, %1
  %30 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %31 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %34 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %39 = call i32 @randomizer_DetermineOne(%struct.randomizer* %38)
  br label %40

40:                                               ; preds = %37, %29
  %41 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %42 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32**, i32*** %43, align 8
  %45 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %46 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32*, i32** %44, i64 %47
  %49 = load i32*, i32** %48, align 8
  ret i32* %49
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @randomizer_HasNext(%struct.randomizer*) #1

declare dso_local i32 @randomizer_AutoReshuffle(%struct.randomizer*) #1

declare dso_local i32 @randomizer_DetermineOne(%struct.randomizer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
