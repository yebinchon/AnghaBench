; ModuleID = '/home/carl/AnghaBench/tig/src/extr_draw.c_set_view_attr.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_draw.c_set_view_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.view*, i32)* @set_view_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_view_attr(%struct.view* %0, i32 %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.view*, %struct.view** %3, align 8
  %6 = getelementptr inbounds %struct.view, %struct.view* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %2
  %12 = load %struct.view*, %struct.view** %3, align 8
  %13 = getelementptr inbounds %struct.view, %struct.view* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load %struct.view*, %struct.view** %3, align 8
  %19 = getelementptr inbounds %struct.view, %struct.view* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.view*, %struct.view** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @get_view_attr(%struct.view* %21, i32 %22)
  %24 = call i32 @wattrset(i32 %20, i32 %23)
  %25 = load %struct.view*, %struct.view** %3, align 8
  %26 = getelementptr inbounds %struct.view, %struct.view* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.view*, %struct.view** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @get_view_color(%struct.view* %28, i32 %29)
  %31 = call i32 @wchgat(i32 %27, i32 -1, i32 0, i32 %30, i32* null)
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.view*, %struct.view** %3, align 8
  %34 = getelementptr inbounds %struct.view, %struct.view* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %17, %11, %2
  ret void
}

declare dso_local i32 @wattrset(i32, i32) #1

declare dso_local i32 @get_view_attr(%struct.view*, i32) #1

declare dso_local i32 @wchgat(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @get_view_color(%struct.view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
