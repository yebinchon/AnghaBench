; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_get_string_prop.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_get_string_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sway_view*, i32)* @get_string_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_string_prop(%struct.sway_view* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sway_view*, align 8
  %5 = alloca i32, align 4
  store %struct.sway_view* %0, %struct.sway_view** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %7 = call i32* @xwayland_view_from_view(%struct.sway_view* %6)
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* null, i8** %3, align 8
  br label %37

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %36 [
    i32 129, label %12
    i32 131, label %18
    i32 130, label %24
    i32 128, label %30
  ]

12:                                               ; preds = %10
  %13 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %14 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %3, align 8
  br label %37

18:                                               ; preds = %10
  %19 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %20 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %3, align 8
  br label %37

24:                                               ; preds = %10
  %25 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %26 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %3, align 8
  br label %37

30:                                               ; preds = %10
  %31 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %32 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %3, align 8
  br label %37

36:                                               ; preds = %10
  store i8* null, i8** %3, align 8
  br label %37

37:                                               ; preds = %36, %30, %24, %18, %12, %9
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

declare dso_local i32* @xwayland_view_from_view(%struct.sway_view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
