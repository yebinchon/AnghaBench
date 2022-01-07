; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_parent_right.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_parent_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_row = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.graph_row*, %struct.graph_row*, %struct.graph_row*, i32)* @parent_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parent_right(%struct.graph_row* %0, %struct.graph_row* %1, %struct.graph_row* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.graph_row*, align 8
  %7 = alloca %struct.graph_row*, align 8
  %8 = alloca %struct.graph_row*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.graph_row* %0, %struct.graph_row** %6, align 8
  store %struct.graph_row* %1, %struct.graph_row** %7, align 8
  store %struct.graph_row* %2, %struct.graph_row** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %80, %4
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %15 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %83

18:                                               ; preds = %12
  %19 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %20 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = call i32 @graph_column_has_commit(%struct.TYPE_2__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %80

28:                                               ; preds = %18
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %76, %28
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.graph_row*, %struct.graph_row** %8, align 8
  %34 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %79

37:                                               ; preds = %31
  %38 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %39 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.graph_row*, %struct.graph_row** %8, align 8
  %47 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %45, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %37
  br label %76

56:                                               ; preds = %37
  %57 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %58 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.graph_row*, %struct.graph_row** %7, align 8
  %66 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %64, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %56
  store i32 1, i32* %5, align 4
  br label %84

75:                                               ; preds = %56
  br label %76

76:                                               ; preds = %75, %55
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %31

79:                                               ; preds = %31
  br label %80

80:                                               ; preds = %79, %27
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %12

83:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %74
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @graph_column_has_commit(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
