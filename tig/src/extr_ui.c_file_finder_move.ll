; ModuleID = '/home/carl/AnghaBench/tig/src/extr_ui.c_file_finder_move.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_ui.c_file_finder_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_finder = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_finder*, i32)* @file_finder_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_finder_move(%struct.file_finder* %0, i32 %1) #0 {
  %3 = alloca %struct.file_finder*, align 8
  %4 = alloca i32, align 4
  store %struct.file_finder* %0, %struct.file_finder** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %9 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp sle i32 %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %17 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  br label %26

19:                                               ; preds = %7, %2
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %22 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, %20
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %19, %15
  %27 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %28 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %32 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %26
  %36 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %37 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %42 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %46 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  br label %52

48:                                               ; preds = %35
  %49 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %50 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %40
  br label %53

53:                                               ; preds = %52, %26
  %54 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %55 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %59 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %63 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sle i32 %61, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %53
  %68 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %69 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %73 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 2
  %76 = sub nsw i32 %71, %75
  %77 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %78 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  br label %80

80:                                               ; preds = %67, %53
  %81 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %82 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %86 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %84, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %80
  %91 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %92 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %96 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  br label %98

98:                                               ; preds = %90, %80
  %99 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %100 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %103 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp sle i32 %101, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %108 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i32 0, i32* %109, align 4
  br label %110

110:                                              ; preds = %106, %98
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
