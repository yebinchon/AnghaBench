; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/skiplist/extr_skiplist.c_LookupElementSkiplist.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/skiplist/extr_skiplist.c_LookupElementSkiplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 (i32*, i32*)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_4__**, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @LookupElementSkiplist(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %11, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %8, align 8
  br label %18

18:                                               ; preds = %74, %3
  %19 = load i64, i64* %8, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %8, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %81

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %57, %22
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %23
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = icmp ne %struct.TYPE_4__* %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %31
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64 (i32*, i32*)*, i64 (i32*, i32*)** %42, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i64 %43(i32* %51, i32* %52)
  %54 = icmp slt i64 %53, 0
  br label %55

55:                                               ; preds = %40, %31, %23
  %56 = phi i1 [ false, %31 ], [ false, %23 ], [ %54, %40 ]
  br i1 %56, label %57, label %74

57:                                               ; preds = %55
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %9, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %70, i64 %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  store %struct.TYPE_4__* %73, %struct.TYPE_4__** %11, align 8
  br label %23

74:                                               ; preds = %55
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %77, i64 %78
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  store %struct.TYPE_4__* %80, %struct.TYPE_4__** %10, align 8
  br label %18

81:                                               ; preds = %18
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %84, i64 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  store %struct.TYPE_4__* %86, %struct.TYPE_4__** %11, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %88 = icmp ne %struct.TYPE_4__* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %81
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i64 (i32*, i32*)*, i64 (i32*, i32*)** %91, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = call i64 %92(i32* %95, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89, %81
  store i32* null, i32** %4, align 8
  br label %110

100:                                              ; preds = %89
  %101 = load i32*, i32** %7, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = load i32*, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  store i32* %109, i32** %4, align 8
  br label %110

110:                                              ; preds = %106, %99
  %111 = load i32*, i32** %4, align 8
  ret i32* %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
