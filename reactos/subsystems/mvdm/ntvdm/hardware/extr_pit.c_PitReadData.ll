; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/hardware/extr_pit.c_PitReadData.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/hardware/extr_pit.c_PitReadData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@PitChannels = common dso_local global %struct.TYPE_2__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @PitReadData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @PitReadData(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PitChannels, align 8
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load i32, i32* @FALSE, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PitChannels, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PitChannels, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %2, align 8
  br label %77

23:                                               ; preds = %1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PitChannels, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @PitLatchChannelCount(i64 %31)
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PitChannels, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PitChannels, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = bitcast i64* %45 to i32*
  store i32* %46, i32** %4, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PitChannels, align 8
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i32* %50, i32** %5, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %33
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, -2
  store i32 %58, i32* %56, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @LOBYTE(i32 %60)
  store i64 %61, i64* %2, align 8
  br label %77

62:                                               ; preds = %33
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 2
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, -3
  store i32 %70, i32* %68, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @HIBYTE(i32 %72)
  store i64 %73, i64* %2, align 8
  br label %77

74:                                               ; preds = %62
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i32 @ASSERT(i32 %75)
  store i64 0, i64* %2, align 8
  br label %77

77:                                               ; preds = %74, %67, %55, %12
  %78 = load i64, i64* %2, align 8
  ret i64 %78
}

declare dso_local i32 @PitLatchChannelCount(i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @LOBYTE(i32) #1

declare dso_local i64 @HIBYTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
