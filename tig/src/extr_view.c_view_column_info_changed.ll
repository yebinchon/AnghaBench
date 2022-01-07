; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_view_column_info_changed.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_view_column_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.view_column* }
%struct.view_column = type { i32, i32, %struct.view_column* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @view_column_info_changed(%struct.view* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.view_column*, align 8
  %7 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.view*, %struct.view** %4, align 8
  %9 = getelementptr inbounds %struct.view, %struct.view* %8, i32 0, i32 0
  %10 = load %struct.view_column*, %struct.view_column** %9, align 8
  store %struct.view_column* %10, %struct.view_column** %6, align 8
  br label %11

11:                                               ; preds = %32, %2
  %12 = load %struct.view_column*, %struct.view_column** %6, align 8
  %13 = icmp ne %struct.view_column* %12, null
  br i1 %13, label %14, label %36

14:                                               ; preds = %11
  %15 = load %struct.view_column*, %struct.view_column** %6, align 8
  %16 = getelementptr inbounds %struct.view_column, %struct.view_column* %15, i32 0, i32 1
  %17 = load %struct.view_column*, %struct.view_column** %6, align 8
  %18 = getelementptr inbounds %struct.view_column, %struct.view_column* %17, i32 0, i32 0
  %19 = call i64 @memcmp(i32* %16, i32* %18, i32 4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %38

25:                                               ; preds = %21
  %26 = load %struct.view_column*, %struct.view_column** %6, align 8
  %27 = getelementptr inbounds %struct.view_column, %struct.view_column* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.view_column*, %struct.view_column** %6, align 8
  %30 = getelementptr inbounds %struct.view_column, %struct.view_column* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  store i32 1, i32* %7, align 4
  br label %31

31:                                               ; preds = %25, %14
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.view_column*, %struct.view_column** %6, align 8
  %34 = getelementptr inbounds %struct.view_column, %struct.view_column* %33, i32 0, i32 2
  %35 = load %struct.view_column*, %struct.view_column** %34, align 8
  store %struct.view_column* %35, %struct.view_column** %6, align 8
  br label %11

36:                                               ; preds = %11
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %24
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
