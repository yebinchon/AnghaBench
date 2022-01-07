; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_add_parent.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_add_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph = type { %struct.graph_v2* }
%struct.graph_v2 = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.graph*, i8*)* @graph_add_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_add_parent(%struct.graph* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.graph*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.graph_v2*, align 8
  store %struct.graph* %0, %struct.graph** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.graph*, %struct.graph** %4, align 8
  %8 = getelementptr inbounds %struct.graph, %struct.graph* %7, i32 0, i32 0
  %9 = load %struct.graph_v2*, %struct.graph_v2** %8, align 8
  store %struct.graph_v2* %9, %struct.graph_v2** %6, align 8
  %10 = load %struct.graph_v2*, %struct.graph_v2** %6, align 8
  %11 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.graph_v2*, %struct.graph_v2** %6, align 8
  %17 = load %struct.graph_v2*, %struct.graph_v2** %6, align 8
  %18 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %17, i32 0, i32 0
  %19 = load %struct.graph_v2*, %struct.graph_v2** %6, align 8
  %20 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32* @graph_insert_column(%struct.graph_v2* %16, %struct.TYPE_2__* %18, i32 %22, i8* %23)
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %15, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32* @graph_insert_column(%struct.graph_v2*, %struct.TYPE_2__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
