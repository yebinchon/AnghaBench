; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_Next.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_Next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.randomizer = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @randomizer_Next(%struct.randomizer* %0) #0 {
  %2 = alloca %struct.randomizer*, align 8
  %3 = alloca i32*, align 8
  store %struct.randomizer* %0, %struct.randomizer** %2, align 8
  %4 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %5 = call i32 @randomizer_HasNext(%struct.randomizer* %4)
  %6 = call i32 @assert(i32 %5)
  %7 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %8 = call i32* @randomizer_PeekNext(%struct.randomizer* %7)
  store i32* %8, i32** %3, align 8
  %9 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %10 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %14 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %17 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %15, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %23 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %26 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %31 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %21, %1
  %33 = load i32*, i32** %3, align 8
  ret i32* %33
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @randomizer_HasNext(%struct.randomizer*) #1

declare dso_local i32* @randomizer_PeekNext(%struct.randomizer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
