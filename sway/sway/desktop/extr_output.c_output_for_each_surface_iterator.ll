; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_output_for_each_surface_iterator.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_output_for_each_surface_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlr_surface = type { i32 }
%struct.surface_iterator_data = type { i32, i32, i32, i32 (i32, %struct.wlr_surface*, %struct.wlr_box*, i32, i32)* }
%struct.wlr_box = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlr_surface*, i32, i32, i8*)* @output_for_each_surface_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_for_each_surface_iterator(%struct.wlr_surface* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.wlr_surface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.surface_iterator_data*, align 8
  %10 = alloca %struct.wlr_box, align 4
  %11 = alloca i32, align 4
  store %struct.wlr_surface* %0, %struct.wlr_surface** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.surface_iterator_data*
  store %struct.surface_iterator_data* %13, %struct.surface_iterator_data** %9, align 8
  %14 = load %struct.surface_iterator_data*, %struct.surface_iterator_data** %9, align 8
  %15 = load %struct.wlr_surface*, %struct.wlr_surface** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @get_surface_box(%struct.surface_iterator_data* %14, %struct.wlr_surface* %15, i32 %16, i32 %17, %struct.wlr_box* %10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %37

22:                                               ; preds = %4
  %23 = load %struct.surface_iterator_data*, %struct.surface_iterator_data** %9, align 8
  %24 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %23, i32 0, i32 3
  %25 = load i32 (i32, %struct.wlr_surface*, %struct.wlr_box*, i32, i32)*, i32 (i32, %struct.wlr_surface*, %struct.wlr_box*, i32, i32)** %24, align 8
  %26 = load %struct.surface_iterator_data*, %struct.surface_iterator_data** %9, align 8
  %27 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wlr_surface*, %struct.wlr_surface** %5, align 8
  %30 = load %struct.surface_iterator_data*, %struct.surface_iterator_data** %9, align 8
  %31 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.surface_iterator_data*, %struct.surface_iterator_data** %9, align 8
  %34 = getelementptr inbounds %struct.surface_iterator_data, %struct.surface_iterator_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %25(i32 %28, %struct.wlr_surface* %29, %struct.wlr_box* %10, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @get_surface_box(%struct.surface_iterator_data*, %struct.wlr_surface*, i32, i32, %struct.wlr_box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
