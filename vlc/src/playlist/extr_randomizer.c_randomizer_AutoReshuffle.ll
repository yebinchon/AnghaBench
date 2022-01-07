; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_AutoReshuffle.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_AutoReshuffle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.randomizer = type { %struct.TYPE_2__, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@NOT_SAME_BEFORE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.randomizer*)* @randomizer_AutoReshuffle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @randomizer_AutoReshuffle(%struct.randomizer* %0) #0 {
  %2 = alloca %struct.randomizer*, align 8
  %3 = alloca i64, align 8
  store %struct.randomizer* %0, %struct.randomizer** %2, align 8
  %4 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %5 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sgt i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %12 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %14 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %16 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i64, i64* @NOT_SAME_BEFORE, align 8
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %20 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 %18, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %28 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %26, %1
  br label %34

34:                                               ; preds = %37, %33
  %35 = load i64, i64* %3, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.randomizer*, %struct.randomizer** %2, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %3, align 8
  %41 = trunc i64 %39 to i32
  %42 = call i32 @randomizer_DetermineOne_(%struct.randomizer* %38, i32 %41)
  br label %34

43:                                               ; preds = %34
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @randomizer_DetermineOne_(%struct.randomizer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
