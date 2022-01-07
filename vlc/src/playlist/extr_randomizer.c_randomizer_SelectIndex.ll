; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_SelectIndex.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_SelectIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.randomizer = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.randomizer*, i64)* @randomizer_SelectIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @randomizer_SelectIndex(%struct.randomizer* %0, i64 %1) #0 {
  %3 = alloca %struct.randomizer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.randomizer* %0, %struct.randomizer** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %7 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32**, i32*** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds i32*, i32** %9, i64 %10
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %14 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %70

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %20 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %17
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %26 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ugt i64 %24, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %23
  %30 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %31 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32**, i32*** %32, align 8
  %34 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %35 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds i32*, i32** %33, i64 %37
  %39 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %40 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %44 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32*, i32** %42, i64 %45
  %47 = load i64, i64* %4, align 8
  %48 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %49 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %47, %50
  %52 = mul i64 %51, 8
  %53 = call i32 @memmove(i32** %38, i32** %46, i64 %52)
  %54 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %55 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %29, %23
  %58 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %59 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  %62 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %63 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = urem i64 %61, %66
  %68 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %69 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %57, %17, %2
  %71 = load i64, i64* %4, align 8
  %72 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %73 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp uge i64 %71, %74
  br i1 %75, label %76, label %105

76:                                               ; preds = %70
  %77 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %78 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32**, i32*** %79, align 8
  %81 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %82 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32*, i32** %80, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %87 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = load i64, i64* %4, align 8
  %91 = getelementptr inbounds i32*, i32** %89, i64 %90
  store i32* %85, i32** %91, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %94 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32**, i32*** %95, align 8
  %97 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %98 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32*, i32** %96, i64 %99
  store i32* %92, i32** %100, align 8
  %101 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %102 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %102, align 8
  br label %147

105:                                              ; preds = %70
  %106 = load i64, i64* %4, align 8
  %107 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %108 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = icmp ult i64 %106, %112
  br i1 %113, label %114, label %146

114:                                              ; preds = %105
  %115 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %116 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32**, i32*** %117, align 8
  %119 = load i64, i64* %4, align 8
  %120 = getelementptr inbounds i32*, i32** %118, i64 %119
  %121 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %122 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32**, i32*** %123, align 8
  %125 = load i64, i64* %4, align 8
  %126 = add i64 %125, 1
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %129 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %4, align 8
  %132 = sub i64 %130, %131
  %133 = sub i64 %132, 1
  %134 = mul i64 %133, 8
  %135 = call i32 @memmove(i32** %120, i32** %127, i64 %134)
  %136 = load i32*, i32** %5, align 8
  %137 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %138 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32**, i32*** %139, align 8
  %141 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %142 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = sub i64 %143, 1
  %145 = getelementptr inbounds i32*, i32** %140, i64 %144
  store i32* %136, i32** %145, align 8
  br label %146

146:                                              ; preds = %114, %105
  br label %147

147:                                              ; preds = %146, %76
  %148 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %149 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %153 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  ret void
}

declare dso_local i32 @memmove(i32**, i32**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
