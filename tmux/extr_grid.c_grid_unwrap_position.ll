; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_unwrap_position.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_unwrap_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GRID_LINE_WRAPPED = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grid_unwrap_position(%struct.grid* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.grid*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.grid* %0, %struct.grid** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %57, %5
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.grid*, %struct.grid** %6, align 8
  %17 = getelementptr inbounds %struct.grid, %struct.grid* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.grid*, %struct.grid** %6, align 8
  %20 = getelementptr inbounds %struct.grid, %struct.grid* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  %23 = sub nsw i32 %22, 1
  %24 = icmp slt i32 %15, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %14
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %60

30:                                               ; preds = %25
  %31 = load %struct.grid*, %struct.grid** %6, align 8
  %32 = getelementptr inbounds %struct.grid, %struct.grid* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %30
  %43 = load %struct.grid*, %struct.grid** %6, align 8
  %44 = getelementptr inbounds %struct.grid, %struct.grid* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %12, align 4
  br label %56

53:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %53, %42
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %14

60:                                               ; preds = %29, %14
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @UINT_MAX, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %77, %64
  %66 = load %struct.grid*, %struct.grid** %6, align 8
  %67 = getelementptr inbounds %struct.grid, %struct.grid* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %65

80:                                               ; preds = %65
  %81 = load %struct.grid*, %struct.grid** %6, align 8
  %82 = getelementptr inbounds %struct.grid, %struct.grid* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %9, align 4
  br label %128

89:                                               ; preds = %60
  br label %90

90:                                               ; preds = %114, %89
  %91 = load %struct.grid*, %struct.grid** %6, align 8
  %92 = getelementptr inbounds %struct.grid, %struct.grid* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @GRID_LINE_WRAPPED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %127

102:                                              ; preds = %90
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.grid*, %struct.grid** %6, align 8
  %105 = getelementptr inbounds %struct.grid, %struct.grid* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %103, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  br label %127

114:                                              ; preds = %102
  %115 = load %struct.grid*, %struct.grid** %6, align 8
  %116 = getelementptr inbounds %struct.grid, %struct.grid* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %90

127:                                              ; preds = %113, %90
  br label %128

128:                                              ; preds = %127, %80
  %129 = load i32, i32* %9, align 4
  %130 = load i32*, i32** %7, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32*, i32** %8, align 8
  store i32 %131, i32* %132, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
