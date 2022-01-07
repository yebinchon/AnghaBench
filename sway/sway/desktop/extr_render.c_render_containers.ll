; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_containers.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_containers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.sway_output = type { i32 }
%struct.parent_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { i64 }

@config = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_output*, i32*, %struct.parent_data*)* @render_containers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_containers(%struct.sway_output* %0, i32* %1, %struct.parent_data* %2) #0 {
  %4 = alloca %struct.sway_output*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.parent_data*, align 8
  %7 = alloca %struct.sway_container*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.parent_data* %2, %struct.parent_data** %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %14 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %37

19:                                               ; preds = %12
  %20 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %21 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.sway_container**, %struct.sway_container*** %23, align 8
  %25 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %24, i64 0
  %26 = load %struct.sway_container*, %struct.sway_container** %25, align 8
  store %struct.sway_container* %26, %struct.sway_container** %7, align 8
  %27 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %28 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %35 = call i32 @render_containers_linear(%struct.sway_output* %32, i32* %33, %struct.parent_data* %34)
  br label %56

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36, %12, %3
  %38 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %39 = getelementptr inbounds %struct.parent_data, %struct.parent_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %56 [
    i32 131, label %41
    i32 132, label %41
    i32 128, label %41
    i32 130, label %46
    i32 129, label %51
  ]

41:                                               ; preds = %37, %37, %37
  %42 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %45 = call i32 @render_containers_linear(%struct.sway_output* %42, i32* %43, %struct.parent_data* %44)
  br label %56

46:                                               ; preds = %37
  %47 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %50 = call i32 @render_containers_stacked(%struct.sway_output* %47, i32* %48, %struct.parent_data* %49)
  br label %56

51:                                               ; preds = %37
  %52 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.parent_data*, %struct.parent_data** %6, align 8
  %55 = call i32 @render_containers_tabbed(%struct.sway_output* %52, i32* %53, %struct.parent_data* %54)
  br label %56

56:                                               ; preds = %31, %37, %51, %46, %41
  ret void
}

declare dso_local i32 @render_containers_linear(%struct.sway_output*, i32*, %struct.parent_data*) #1

declare dso_local i32 @render_containers_stacked(%struct.sway_output*, i32*, %struct.parent_data*) #1

declare dso_local i32 @render_containers_tabbed(%struct.sway_output*, i32*, %struct.parent_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
