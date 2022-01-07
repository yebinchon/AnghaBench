; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_goto_view_line.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_goto_view_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @goto_view_line(%struct.view* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.view*, %struct.view** %5, align 8
  %11 = getelementptr inbounds %struct.view, %struct.view* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %9, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load %struct.view*, %struct.view** %5, align 8
  %16 = getelementptr inbounds %struct.view, %struct.view* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.view*, %struct.view** %5, align 8
  %21 = getelementptr inbounds %struct.view, %struct.view* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %22, 1
  br label %25

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i64 [ %23, %19 ], [ 0, %24 ]
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %25, %3
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.view*, %struct.view** %5, align 8
  %34 = getelementptr inbounds %struct.view, %struct.view* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %32, %35
  %37 = load i64, i64* %7, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %31, %27
  %40 = load %struct.view*, %struct.view** %5, align 8
  %41 = getelementptr inbounds %struct.view, %struct.view* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = udiv i64 %42, 2
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %48, %49
  store i64 %50, i64* %6, align 8
  br label %52

51:                                               ; preds = %39
  store i64 0, i64* %6, align 8
  br label %52

52:                                               ; preds = %51, %47
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.view*, %struct.view** %5, align 8
  %56 = getelementptr inbounds %struct.view, %struct.view* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %54, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.view*, %struct.view** %5, align 8
  %63 = getelementptr inbounds %struct.view, %struct.view* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %61, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %60, %53
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.view*, %struct.view** %5, align 8
  %70 = getelementptr inbounds %struct.view, %struct.view* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.view*, %struct.view** %5, align 8
  %74 = getelementptr inbounds %struct.view, %struct.view* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i64 %72, i64* %75, align 8
  store i32 1, i32* %4, align 4
  br label %77

76:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %67
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
