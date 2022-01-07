; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_floating_natural_resize.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_floating_natural_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i8*, i8*, %struct.sway_view*, i8*, i8* }
%struct.sway_view = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*)* @floating_natural_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @floating_natural_resize(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sway_view*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %8 = call i32 @floating_calculate_constraints(i32* %3, i32* %4, i32* %5, i32* %6)
  %9 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %10 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %9, i32 0, i32 2
  %11 = load %struct.sway_view*, %struct.sway_view** %10, align 8
  %12 = icmp ne %struct.sway_view* %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %16 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %15, i32 0, i32 4
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @fmin(i8* %17, i32 %18)
  %20 = call i8* @fmax(i32 %14, i32 %19)
  %21 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %22 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %25 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @fmin(i8* %26, i32 %27)
  %29 = call i8* @fmax(i32 %23, i32 %28)
  %30 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %31 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  br label %56

32:                                               ; preds = %1
  %33 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %34 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %33, i32 0, i32 2
  %35 = load %struct.sway_view*, %struct.sway_view** %34, align 8
  store %struct.sway_view* %35, %struct.sway_view** %7, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %38 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @fmin(i8* %39, i32 %40)
  %42 = call i8* @fmax(i32 %36, i32 %41)
  %43 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %44 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.sway_view*, %struct.sway_view** %7, align 8
  %47 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @fmin(i8* %48, i32 %49)
  %51 = call i8* @fmax(i32 %45, i32 %50)
  %52 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %53 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %55 = call i32 @container_set_geometry_from_content(%struct.sway_container* %54)
  br label %56

56:                                               ; preds = %32, %13
  ret void
}

declare dso_local i32 @floating_calculate_constraints(i32*, i32*, i32*, i32*) #1

declare dso_local i8* @fmax(i32, i32) #1

declare dso_local i32 @fmin(i8*, i32) #1

declare dso_local i32 @container_set_geometry_from_content(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
