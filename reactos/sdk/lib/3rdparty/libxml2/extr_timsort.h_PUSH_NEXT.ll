; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_timsort.h_PUSH_NEXT.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_timsort.h_PUSH_NEXT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.TYPE_8__*, i64, %struct.TYPE_7__*, i64*, i64*)* @PUSH_NEXT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PUSH_NEXT(i32* %0, i64 %1, %struct.TYPE_8__* %2, i64 %3, %struct.TYPE_7__* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i64*, i64** %15, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i64 @COUNT_RUN(i32* %18, i64 %20, i64 %21)
  store i64 %22, i64* %16, align 8
  %23 = load i64, i64* %12, align 8
  store i64 %23, i64* %17, align 8
  %24 = load i64, i64* %17, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64*, i64** %15, align 8
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %25, %27
  %29 = icmp ugt i64 %24, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %7
  %31 = load i64, i64* %10, align 8
  %32 = load i64*, i64** %15, align 8
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %31, %33
  store i64 %34, i64* %17, align 8
  br label %35

35:                                               ; preds = %30, %7
  %36 = load i64, i64* %17, align 8
  %37 = load i64, i64* %16, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32*, i32** %9, align 8
  %41 = load i64*, i64** %15, align 8
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i64, i64* %16, align 8
  %45 = load i64, i64* %17, align 8
  %46 = call i32 @BINARY_INSERTION_SORT_START(i32* %43, i64 %44, i64 %45)
  %47 = load i64, i64* %17, align 8
  store i64 %47, i64* %16, align 8
  br label %48

48:                                               ; preds = %39, %35
  %49 = load i64*, i64** %15, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %52 = load i64*, i64** %14, align 8
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i64 %50, i64* %55, align 8
  %56 = load i64, i64* %16, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %58 = load i64*, i64** %14, align 8
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i64 %56, i64* %61, align 8
  %62 = load i64*, i64** %14, align 8
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load i64*, i64** %15, align 8
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, %65
  store i64 %68, i64* %66, align 8
  %69 = load i64*, i64** %15, align 8
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %116

73:                                               ; preds = %48
  br label %74

74:                                               ; preds = %78, %73
  %75 = load i64*, i64** %14, align 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ugt i64 %76, 1
  br i1 %77, label %78, label %103

78:                                               ; preds = %74
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %81 = load i64*, i64** %14, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %84 = call i32 @TIM_SORT_MERGE(i32* %79, %struct.TYPE_7__* %80, i64 %82, %struct.TYPE_8__* %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %86 = load i64*, i64** %14, align 8
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %87, 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %93 = load i64*, i64** %14, align 8
  %94 = load i64, i64* %93, align 8
  %95 = sub i64 %94, 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, %91
  store i64 %99, i64* %97, align 8
  %100 = load i64*, i64** %14, align 8
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, -1
  store i64 %102, i64* %100, align 8
  br label %74

103:                                              ; preds = %74
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @free(i32* %111)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  store i32* null, i32** %114, align 8
  br label %115

115:                                              ; preds = %108, %103
  store i32 0, i32* %8, align 4
  br label %117

116:                                              ; preds = %48
  store i32 1, i32* %8, align 4
  br label %117

117:                                              ; preds = %116, %115
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

declare dso_local i64 @COUNT_RUN(i32*, i64, i64) #1

declare dso_local i32 @BINARY_INSERTION_SORT_START(i32*, i64, i64) #1

declare dso_local i32 @TIM_SORT_MERGE(i32*, %struct.TYPE_7__*, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
