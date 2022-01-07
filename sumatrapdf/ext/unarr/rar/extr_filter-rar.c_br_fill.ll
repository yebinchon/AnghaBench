; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_filter-rar.c_br_fill.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_filter-rar.c_br_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemBitReader = type { i32, i64, i64, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MemBitReader*, i32)* @br_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_fill(%struct.MemBitReader* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MemBitReader*, align 8
  %5 = alloca i32, align 4
  store %struct.MemBitReader* %0, %struct.MemBitReader** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %2
  %7 = load %struct.MemBitReader*, %struct.MemBitReader** %4, align 8
  %8 = getelementptr inbounds %struct.MemBitReader, %struct.MemBitReader* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = load %struct.MemBitReader*, %struct.MemBitReader** %4, align 8
  %14 = getelementptr inbounds %struct.MemBitReader, %struct.MemBitReader* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.MemBitReader*, %struct.MemBitReader** %4, align 8
  %17 = getelementptr inbounds %struct.MemBitReader, %struct.MemBitReader* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br label %20

20:                                               ; preds = %12, %6
  %21 = phi i1 [ false, %6 ], [ %19, %12 ]
  br i1 %21, label %22, label %43

22:                                               ; preds = %20
  %23 = load %struct.MemBitReader*, %struct.MemBitReader** %4, align 8
  %24 = getelementptr inbounds %struct.MemBitReader, %struct.MemBitReader* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 8
  %27 = load %struct.MemBitReader*, %struct.MemBitReader** %4, align 8
  %28 = getelementptr inbounds %struct.MemBitReader, %struct.MemBitReader* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.MemBitReader*, %struct.MemBitReader** %4, align 8
  %31 = getelementptr inbounds %struct.MemBitReader, %struct.MemBitReader* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = getelementptr inbounds i32, i32* %29, i64 %32
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %26, %35
  %37 = load %struct.MemBitReader*, %struct.MemBitReader** %4, align 8
  %38 = getelementptr inbounds %struct.MemBitReader, %struct.MemBitReader* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.MemBitReader*, %struct.MemBitReader** %4, align 8
  %40 = getelementptr inbounds %struct.MemBitReader, %struct.MemBitReader* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 8
  store i32 %42, i32* %40, align 8
  br label %6

43:                                               ; preds = %20
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.MemBitReader*, %struct.MemBitReader** %4, align 8
  %46 = getelementptr inbounds %struct.MemBitReader, %struct.MemBitReader* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.MemBitReader*, %struct.MemBitReader** %4, align 8
  %51 = getelementptr inbounds %struct.MemBitReader, %struct.MemBitReader* %50, i32 0, i32 5
  store i32 1, i32* %51, align 8
  store i32 0, i32* %3, align 4
  br label %53

52:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
