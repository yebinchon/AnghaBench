; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_rar.h_rar_is_leaf_node.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_rar.h_rar_is_leaf_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffman_code = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.huffman_code*, i32)* @rar_is_leaf_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar_is_leaf_node(%struct.huffman_code* %0, i32 %1) #0 {
  %3 = alloca %struct.huffman_code*, align 8
  %4 = alloca i32, align 4
  store %struct.huffman_code* %0, %struct.huffman_code** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.huffman_code*, %struct.huffman_code** %3, align 8
  %6 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.huffman_code*, %struct.huffman_code** %3, align 8
  %16 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %14, %24
  %26 = zext i1 %25 to i32
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
