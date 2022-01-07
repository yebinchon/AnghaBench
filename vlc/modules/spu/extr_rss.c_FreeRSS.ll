; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_rss.c_FreeRSS.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_rss.c_FreeRSS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @FreeRSS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FreeRSS(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %81, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %84

13:                                               ; preds = %9
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %16
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %43, %13
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %18
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 7
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %8, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = call i32 @free(%struct.TYPE_5__* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = call i32 @free(%struct.TYPE_5__* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = call i32 @free(%struct.TYPE_5__* %41)
  br label %43

43:                                               ; preds = %24
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %18

46:                                               ; preds = %18
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 7
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = call i32 @free(%struct.TYPE_5__* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 6
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = call i32 @free(%struct.TYPE_5__* %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = call i32 @free(%struct.TYPE_5__* %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = call i32 @free(%struct.TYPE_5__* %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = call i32 @free(%struct.TYPE_5__* %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %46
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @picture_Release(i32* %74)
  br label %76

76:                                               ; preds = %71, %46
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = call i32 @free(%struct.TYPE_5__* %79)
  br label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %9

84:                                               ; preds = %9
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = call i32 @free(%struct.TYPE_5__* %85)
  ret void
}

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @picture_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
