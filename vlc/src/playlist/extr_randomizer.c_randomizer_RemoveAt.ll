; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_RemoveAt.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_randomizer.c_randomizer_RemoveAt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.randomizer = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.randomizer*, i64)* @randomizer_RemoveAt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @randomizer_RemoveAt(%struct.randomizer* %0, i64 %1) #0 {
  %3 = alloca %struct.randomizer*, align 8
  %4 = alloca i64, align 8
  store %struct.randomizer* %0, %struct.randomizer** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %7 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %12 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %12, align 8
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %18 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  %22 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %23 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %29 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %36 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = sub i64 %37, %38
  %40 = sub i64 %39, 1
  %41 = mul i64 %40, 4
  %42 = call i32 @memmove(i32* %27, i32* %34, i64 %41)
  %43 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %44 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %48 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %21, %15
  %51 = load i64, i64* %4, align 8
  %52 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %53 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %50
  %57 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %58 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %62 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %63, 1
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %68 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %66, i32* %72, align 4
  %73 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %74 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = sub i64 %75, 1
  store i64 %76, i64* %4, align 8
  %77 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %78 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* %78, align 8
  br label %81

81:                                               ; preds = %56, %50
  %82 = load i64, i64* %4, align 8
  %83 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %84 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = icmp ult i64 %82, %88
  br i1 %89, label %90, label %114

90:                                               ; preds = %81
  %91 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %92 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %4, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %98 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %4, align 8
  %102 = add i64 %101, 1
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %105 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %4, align 8
  %110 = sub i64 %108, %109
  %111 = sub i64 %110, 1
  %112 = mul i64 %111, 4
  %113 = call i32 @memmove(i32* %96, i32* %103, i64 %112)
  br label %114

114:                                              ; preds = %90, %81
  %115 = load %struct.randomizer*, %struct.randomizer** %3, align 8
  %116 = getelementptr inbounds %struct.randomizer, %struct.randomizer* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %117, align 8
  ret void
}

declare dso_local i32 @memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
