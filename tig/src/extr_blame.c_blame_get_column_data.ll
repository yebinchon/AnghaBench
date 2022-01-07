; ModuleID = '/home/carl/AnghaBench/tig/src/extr_blame.c_blame_get_column_data.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_blame.c_blame_get_column_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.line = type { %struct.blame* }
%struct.blame = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.view_column_data = type { i32, i32, i32*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blame_get_column_data(%struct.view* %0, %struct.line* %1, %struct.view_column_data* %2) #0 {
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.line*, align 8
  %6 = alloca %struct.view_column_data*, align 8
  %7 = alloca %struct.blame*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.line* %1, %struct.line** %5, align 8
  store %struct.view_column_data* %2, %struct.view_column_data** %6, align 8
  %8 = load %struct.line*, %struct.line** %5, align 8
  %9 = getelementptr inbounds %struct.line, %struct.line* %8, i32 0, i32 0
  %10 = load %struct.blame*, %struct.blame** %9, align 8
  store %struct.blame* %10, %struct.blame** %7, align 8
  %11 = load %struct.blame*, %struct.blame** %7, align 8
  %12 = getelementptr inbounds %struct.blame, %struct.blame* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %50

15:                                               ; preds = %3
  %16 = load %struct.blame*, %struct.blame** %7, align 8
  %17 = getelementptr inbounds %struct.blame, %struct.blame* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.view_column_data*, %struct.view_column_data** %6, align 8
  %22 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.blame*, %struct.blame** %7, align 8
  %24 = getelementptr inbounds %struct.blame, %struct.blame* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.view_column_data*, %struct.view_column_data** %6, align 8
  %29 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.blame*, %struct.blame** %7, align 8
  %31 = getelementptr inbounds %struct.blame, %struct.blame* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.view_column_data*, %struct.view_column_data** %6, align 8
  %36 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.blame*, %struct.blame** %7, align 8
  %38 = getelementptr inbounds %struct.blame, %struct.blame* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.view_column_data*, %struct.view_column_data** %6, align 8
  %42 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = load %struct.blame*, %struct.blame** %7, align 8
  %44 = getelementptr inbounds %struct.blame, %struct.blame* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.view_column_data*, %struct.view_column_data** %6, align 8
  %49 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %15, %3
  %51 = load %struct.blame*, %struct.blame** %7, align 8
  %52 = getelementptr inbounds %struct.blame, %struct.blame* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.view_column_data*, %struct.view_column_data** %6, align 8
  %55 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
