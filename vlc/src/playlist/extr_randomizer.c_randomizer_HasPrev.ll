; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_HasPrev.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_HasPrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.randomizer = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @randomizer_HasPrev(%struct.randomizer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.randomizer*, align 8
  store %struct.randomizer* %0, %struct.randomizer** %3, align 8
  %4 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %5 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %10 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 1
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %16 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %41

21:                                               ; preds = %14
  %22 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %23 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %26 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %24, %28
  %30 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %31 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  %34 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %35 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = srem i32 %33, %37
  %39 = icmp ne i32 %38, 1
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %21, %20, %8
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
