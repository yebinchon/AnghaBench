; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_fragments.c_MP4_Fragments_Index_Lookup.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_fragments.c_MP4_Fragments_Index_Lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i64*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MP4_Fragments_Index_Lookup(%struct.TYPE_3__* %0, i64* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64*, i64** %7, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp uge i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %17, %4
  store i32 0, i32* %5, align 4
  br label %112

29:                                               ; preds = %22
  store i64 1, i64* %10, align 8
  br label %30

30:                                               ; preds = %81, %29
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %84

37:                                               ; preds = %30
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = zext i32 %44 to i64
  %46 = mul i64 %41, %45
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = getelementptr inbounds i64, i64* %40, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %51, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %37
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = sub i64 %59, 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = zext i32 %63 to i64
  %65 = mul i64 %60, %64
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = add i64 %65, %67
  %69 = getelementptr inbounds i64, i64* %58, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %7, align 8
  store i64 %70, i64* %71, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = sub i64 %75, 1
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  store i32 %78, i32* %79, align 4
  store i32 1, i32* %5, align 4
  br label %112

80:                                               ; preds = %37
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %10, align 8
  br label %30

84:                                               ; preds = %30
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i64*, i64** %86, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = zext i32 %95 to i64
  %97 = mul i64 %92, %96
  %98 = getelementptr inbounds i64, i64* %87, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %7, align 8
  store i64 %99, i64* %100, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %8, align 8
  store i32 %110, i32* %111, align 4
  store i32 1, i32* %5, align 4
  br label %112

112:                                              ; preds = %84, %55, %28
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
