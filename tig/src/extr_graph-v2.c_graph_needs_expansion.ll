; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_needs_expansion.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_needs_expansion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_v2 = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.graph_v2*)* @graph_needs_expansion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_needs_expansion(%struct.graph_v2* %0) #0 {
  %2 = alloca %struct.graph_v2*, align 8
  store %struct.graph_v2* %0, %struct.graph_v2** %2, align 8
  %3 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %4 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %7 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %5, %9
  %11 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %12 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %10, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
