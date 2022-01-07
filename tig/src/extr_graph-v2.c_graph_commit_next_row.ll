; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_commit_next_row.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_commit_next_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_v2 = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.graph_v2*)* @graph_commit_next_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_commit_next_row(%struct.graph_v2* %0) #0 {
  %2 = alloca %struct.graph_v2*, align 8
  %3 = alloca i32, align 4
  store %struct.graph_v2* %0, %struct.graph_v2** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %95, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %7 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %5, %9
  br i1 %10, label %11, label %98

11:                                               ; preds = %4
  %12 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %13 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %21 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %19, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %29 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %11
  %33 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %34 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %33, i32 0, i32 5
  %35 = call i64 @commits_in_row(i32* %34)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %39 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %47 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %45, i32* %52, align 4
  br label %53

53:                                               ; preds = %37, %32, %11
  %54 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %55 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @graph_column_has_commit(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %53
  %64 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %65 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %73 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %71, i32* %78, align 4
  br label %79

79:                                               ; preds = %63, %53
  %80 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %81 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %89 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %87, i32* %94, align 4
  br label %95

95:                                               ; preds = %79
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %4

98:                                               ; preds = %4
  %99 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %100 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %103 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  ret void
}

declare dso_local i64 @commits_in_row(i32*) #1

declare dso_local i32 @graph_column_has_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
