; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8l_dec.c_Is8bOptimizable.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8l_dec.c_Is8bOptimizable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64 }

@RED = common dso_local global i64 0, align 8
@BLUE = common dso_local global i64 0, align 8
@ALPHA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @Is8bOptimizable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Is8bOptimizable(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %57, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %12
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %25, align 8
  store %struct.TYPE_7__** %26, %struct.TYPE_7__*** %5, align 8
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %28 = load i64, i64* @RED, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %27, i64 %28
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %61

36:                                               ; preds = %18
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %38 = load i64, i64* @BLUE, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %37, i64 %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %61

46:                                               ; preds = %36
  %47 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %48 = load i64, i64* @ALPHA, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %47, i64 %48
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %61

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %12

60:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %55, %45, %35, %10
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
