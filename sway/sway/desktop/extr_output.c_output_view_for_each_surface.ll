; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_output_view_for_each_surface.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_output_view_for_each_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { i64, i64 }
%struct.sway_view = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.surface_iterator_data = type { i8*, i32, i32, i32, i64, i64, %struct.sway_output*, i32 }

@output_for_each_surface_iterator = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_view_for_each_surface(%struct.sway_output* %0, %struct.sway_view* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca %struct.sway_view*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.surface_iterator_data, align 8
  store %struct.sway_output* %0, %struct.sway_output** %5, align 8
  store %struct.sway_view* %1, %struct.sway_view** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %9, i32 0, i32 0
  %11 = load i8*, i8** %8, align 8
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %9, i32 0, i32 1
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %9, i32 0, i32 2
  %14 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %15 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %13, align 4
  %19 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %9, i32 0, i32 3
  %20 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %21 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %19, align 8
  %25 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %9, i32 0, i32 4
  %26 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %27 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %32 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %36 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %34, %38
  store i64 %39, i64* %25, align 8
  %40 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %9, i32 0, i32 5
  %41 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %42 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %47 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %51 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %49, %53
  store i64 %54, i64* %40, align 8
  %55 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %9, i32 0, i32 6
  %56 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  store %struct.sway_output* %56, %struct.sway_output** %55, align 8
  %57 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %9, i32 0, i32 7
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %57, align 8
  %59 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %60 = load i32, i32* @output_for_each_surface_iterator, align 4
  %61 = call i32 @view_for_each_surface(%struct.sway_view* %59, i32 %60, %struct.surface_iterator_data* %9)
  ret void
}

declare dso_local i32 @view_for_each_surface(%struct.sway_view*, i32, %struct.surface_iterator_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
