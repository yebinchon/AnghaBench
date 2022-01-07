; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_get_int_prop.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_get_int_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_view*, i32)* @get_int_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_int_prop(%struct.sway_view* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_view*, align 8
  %5 = alloca i32, align 4
  store %struct.sway_view* %0, %struct.sway_view** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %7 = call i32* @xwayland_view_from_view(%struct.sway_view* %6)
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %41 [
    i32 128, label %12
    i32 129, label %18
    i32 130, label %34
  ]

12:                                               ; preds = %10
  %13 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %14 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %10
  %19 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %20 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %27 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %42

34:                                               ; preds = %10
  %35 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %36 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %34, %33, %25, %12, %9
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32* @xwayland_view_from_view(%struct.sway_view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
