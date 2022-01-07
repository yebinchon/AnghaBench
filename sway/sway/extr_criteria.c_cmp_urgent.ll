; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_criteria.c_cmp_urgent.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_criteria.c_cmp_urgent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_urgent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_urgent(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sway_view*, align 8
  %7 = alloca %struct.sway_view*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.sway_view*
  store %struct.sway_view* %11, %struct.sway_view** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.sway_view*
  store %struct.sway_view* %15, %struct.sway_view** %7, align 8
  %16 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %17 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %21 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %19, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %62

26:                                               ; preds = %2
  %27 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %28 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %32 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %30, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %62

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %40 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %44 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %62

49:                                               ; preds = %38
  %50 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %51 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %55 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %62

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %59, %48, %36, %25
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
