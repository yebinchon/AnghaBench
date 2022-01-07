; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_Add.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_Add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.randomizer = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @randomizer_Add(%struct.randomizer* %0, i32** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.randomizer*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  store %struct.randomizer* %0, %struct.randomizer** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.randomizer*, %struct.randomizer** %5, align 8
  %9 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %8, i32 0, i32 2
  %10 = load %struct.randomizer*, %struct.randomizer** %5, align 8
  %11 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32**, i32*** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @vlc_vector_insert_all(i32* %9, i64 %12, i32** %13, i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.randomizer*, %struct.randomizer** %5, align 8
  %20 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.randomizer*, %struct.randomizer** %5, align 8
  %23 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.randomizer*, %struct.randomizer** %5, align 8
  %29 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, %27
  store i64 %31, i64* %29, align 8
  br label %32

32:                                               ; preds = %26, %18
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.randomizer*, %struct.randomizer** %5, align 8
  %35 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, %33
  store i64 %37, i64* %35, align 8
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %32, %17
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @vlc_vector_insert_all(i32*, i64, i32**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
