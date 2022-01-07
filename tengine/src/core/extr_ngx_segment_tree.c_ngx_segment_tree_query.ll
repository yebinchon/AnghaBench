; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_segment_tree.c_ngx_segment_tree_query.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_segment_tree.c_ngx_segment_tree_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 (i32*, i32*)*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ngx_segment_tree_query(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %13, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %6
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32* %25, i32** %7, align 8
  br label %102

26:                                               ; preds = %6
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %13, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %7, align 8
  br label %102

40:                                               ; preds = %30, %26
  %41 = load i64, i64* %9, align 8
  %42 = shl i64 %41, 1
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %43, %44
  %46 = lshr i64 %45, 1
  store i64 %46, i64* %15, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* %15, align 8
  %49 = icmp ule i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %13, align 8
  %57 = call i32* @ngx_segment_tree_query(%struct.TYPE_3__* %51, i64 %52, i64 %53, i64 %54, i64 %55, i64 %56)
  store i32* %57, i32** %7, align 8
  br label %102

58:                                               ; preds = %40
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %15, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = load i64, i64* %14, align 8
  %65 = add i64 %64, 1
  %66 = load i64, i64* %15, align 8
  %67 = add i64 %66, 1
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %13, align 8
  %71 = call i32* @ngx_segment_tree_query(%struct.TYPE_3__* %63, i64 %65, i64 %67, i64 %68, i64 %69, i64 %70)
  store i32* %71, i32** %7, align 8
  br label %102

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %15, align 8
  %80 = call i32* @ngx_segment_tree_query(%struct.TYPE_3__* %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79)
  store i32* %80, i32** %16, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %82 = load i64, i64* %14, align 8
  %83 = add i64 %82, 1
  %84 = load i64, i64* %15, align 8
  %85 = add i64 %84, 1
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %15, align 8
  %88 = add i64 %87, 1
  %89 = load i64, i64* %13, align 8
  %90 = call i32* @ngx_segment_tree_query(%struct.TYPE_3__* %81, i64 %83, i64 %85, i64 %86, i64 %88, i64 %89)
  store i32* %90, i32** %17, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64 (i32*, i32*)*, i64 (i32*, i32*)** %92, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = load i32*, i32** %17, align 8
  %96 = call i64 %93(i32* %94, i32* %95)
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %73
  %99 = load i32*, i32** %16, align 8
  store i32* %99, i32** %7, align 8
  br label %102

100:                                              ; preds = %73
  %101 = load i32*, i32** %17, align 8
  store i32* %101, i32** %7, align 8
  br label %102

102:                                              ; preds = %100, %98, %62, %50, %34, %21
  %103 = load i32*, i32** %7, align 8
  ret i32* %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
