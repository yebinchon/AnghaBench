; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_canvas_append_symbol.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_canvas_append_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_v2 = type { i32 }
%struct.graph_canvas = type { i32, %struct.graph_symbol* }
%struct.graph_symbol = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.graph_v2*, %struct.graph_canvas*, %struct.graph_symbol*)* @graph_canvas_append_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_canvas_append_symbol(%struct.graph_v2* %0, %struct.graph_canvas* %1, %struct.graph_symbol* %2) #0 {
  %4 = alloca %struct.graph_v2*, align 8
  %5 = alloca %struct.graph_canvas*, align 8
  %6 = alloca %struct.graph_symbol*, align 8
  store %struct.graph_v2* %0, %struct.graph_v2** %4, align 8
  store %struct.graph_canvas* %1, %struct.graph_canvas** %5, align 8
  store %struct.graph_symbol* %2, %struct.graph_symbol** %6, align 8
  %7 = load %struct.graph_canvas*, %struct.graph_canvas** %5, align 8
  %8 = getelementptr inbounds %struct.graph_canvas, %struct.graph_canvas* %7, i32 0, i32 1
  %9 = load %struct.graph_canvas*, %struct.graph_canvas** %5, align 8
  %10 = getelementptr inbounds %struct.graph_canvas, %struct.graph_canvas* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @realloc_graph_symbols(%struct.graph_symbol** %8, i32 %11, i32 1)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load %struct.graph_canvas*, %struct.graph_canvas** %5, align 8
  %16 = getelementptr inbounds %struct.graph_canvas, %struct.graph_canvas* %15, i32 0, i32 1
  %17 = load %struct.graph_symbol*, %struct.graph_symbol** %16, align 8
  %18 = load %struct.graph_canvas*, %struct.graph_canvas** %5, align 8
  %19 = getelementptr inbounds %struct.graph_canvas, %struct.graph_canvas* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %17, i64 %22
  %24 = load %struct.graph_symbol*, %struct.graph_symbol** %6, align 8
  %25 = bitcast %struct.graph_symbol* %23 to i8*
  %26 = bitcast %struct.graph_symbol* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  br label %27

27:                                               ; preds = %14, %3
  ret void
}

declare dso_local i64 @realloc_graph_symbols(%struct.graph_symbol**, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
