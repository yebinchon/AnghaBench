; ModuleID = '/home/carl/AnghaBench/redis/src/extr_lolwut6.c_generateSkyline.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_lolwut6.c_generateSkyline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.skyscraper = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generateSkyline(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.skyscraper, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 2, i32* %4, align 4
  br label %7

7:                                                ; preds = %78, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 1
  br i1 %9, label %10, label %81

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  store i32 -10, i32* %5, align 4
  br label %13

13:                                               ; preds = %76, %10
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %77

19:                                               ; preds = %13
  %20 = call i32 (...) @rand()
  %21 = srem i32 %20, 8
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = call i32 (...) @rand()
  %27 = srem i32 %26, 9
  %28 = add nsw i32 10, %27
  %29 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %45

32:                                               ; preds = %19
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 2
  %37 = call i32 (...) @rand()
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = srem i32 %37, %40
  %42 = sdiv i32 %41, 2
  %43 = add nsw i32 %36, %42
  %44 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  br label %58

45:                                               ; preds = %19
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 2
  %50 = call i32 (...) @rand()
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %50, %53
  %55 = sdiv i32 %54, 3
  %56 = add nsw i32 %49, %55
  %57 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %45, %32
  %59 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 4
  store i32 0, i32* %59, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = call i32 @generateSkyscraper(%struct.TYPE_4__* %60, %struct.skyscraper* %3)
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %66, 2
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %76

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %70, %64
  br label %13

77:                                               ; preds = %13
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %4, align 4
  br label %7

81:                                               ; preds = %7
  %82 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 0
  store i32 0, i32* %82, align 4
  store i32 -10, i32* %6, align 4
  br label %83

83:                                               ; preds = %111, %81
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %132

89:                                               ; preds = %83
  %90 = call i32 (...) @rand()
  %91 = srem i32 %90, 8
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  %96 = call i32 (...) @rand()
  %97 = srem i32 %96, 14
  %98 = add nsw i32 5, %97
  %99 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 2
  store i32 %98, i32* %99, align 4
  %100 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = srem i32 %101, 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %89
  %105 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = srem i32 %106, 3
  %108 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %107
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %104, %89
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sdiv i32 %114, 3
  %116 = call i32 (...) @rand()
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = srem i32 %116, %119
  %121 = sdiv i32 %120, 2
  %122 = add nsw i32 %115, %121
  %123 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 3
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 4
  store i32 1, i32* %124, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %126 = call i32 @generateSkyscraper(%struct.TYPE_4__* %125, %struct.skyscraper* %3)
  %127 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 5
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %6, align 4
  br label %83

132:                                              ; preds = %83
  ret void
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @generateSkyscraper(%struct.TYPE_4__*, %struct.skyscraper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
