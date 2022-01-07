; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_DetermineOne_.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_DetermineOne_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.randomizer = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.randomizer*, i64)* @randomizer_DetermineOne_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @randomizer_DetermineOne_(%struct.randomizer* %0, i64 %1) #0 {
  %3 = alloca %struct.randomizer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.randomizer* %0, %struct.randomizer** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %8 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %11 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %9, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %18 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %22 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub i64 %20, %23
  %25 = load i64, i64* %4, align 8
  %26 = icmp ugt i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %30 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %34 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %32, %35
  %37 = load i64, i64* %4, align 8
  %38 = sub i64 %36, %37
  store i64 %38, i64* %5, align 8
  %39 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %40 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %43 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @nrand48(i32 %44)
  %46 = load i64, i64* %5, align 8
  %47 = urem i64 %45, %46
  %48 = add i64 %41, %47
  store i64 %48, i64* %6, align 8
  %49 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %50 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %51 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @swap_items(%struct.randomizer* %49, i64 %52, i64 %53)
  %55 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %56 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %59 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %2
  %63 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %64 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %62, %2
  %68 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %69 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %69, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @nrand48(i32) #1

declare dso_local i32 @swap_items(%struct.randomizer*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
