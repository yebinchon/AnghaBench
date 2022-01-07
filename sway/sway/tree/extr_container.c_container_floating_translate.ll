; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_floating_translate.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_floating_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { double, double, double, double, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.sway_container** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_floating_translate(%struct.sway_container* %0, double %1, double %2) #0 {
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %9 = load double, double* %5, align 8
  %10 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %11 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %10, i32 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = fadd double %12, %9
  store double %13, double* %11, align 8
  %14 = load double, double* %6, align 8
  %15 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %16 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %15, i32 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = fadd double %17, %14
  store double %18, double* %16, align 8
  %19 = load double, double* %5, align 8
  %20 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %21 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %20, i32 0, i32 2
  %22 = load double, double* %21, align 8
  %23 = fadd double %22, %19
  store double %23, double* %21, align 8
  %24 = load double, double* %6, align 8
  %25 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %26 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %25, i32 0, i32 3
  %27 = load double, double* %26, align 8
  %28 = fadd double %27, %24
  store double %28, double* %26, align 8
  %29 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %30 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %29, i32 0, i32 5
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %59

33:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %55, %33
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %37 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %36, i32 0, i32 5
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %34
  %43 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %44 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %43, i32 0, i32 5
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load %struct.sway_container**, %struct.sway_container*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %47, i64 %49
  %51 = load %struct.sway_container*, %struct.sway_container** %50, align 8
  store %struct.sway_container* %51, %struct.sway_container** %8, align 8
  %52 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %53 = load double, double* %5, align 8
  %54 = load double, double* %6, align 8
  call void @container_floating_translate(%struct.sway_container* %52, double %53, double %54)
  br label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %34

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %58, %3
  %60 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %61 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %60, i32 0, i32 4
  %62 = call i32 @node_set_dirty(i32* %61)
  ret void
}

declare dso_local i32 @node_set_dirty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
