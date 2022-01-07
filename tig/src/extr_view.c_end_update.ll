; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_end_update.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_end_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.view*, i32*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @end_update(%struct.view* %0, i32 %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.view*, %struct.view** %3, align 8
  %6 = getelementptr inbounds %struct.view, %struct.view* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %42

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %26, %10
  %12 = load %struct.view*, %struct.view** %3, align 8
  %13 = getelementptr inbounds %struct.view, %struct.view* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.view*, i32*, i32)*, i32 (%struct.view*, i32*, i32)** %15, align 8
  %17 = load %struct.view*, %struct.view** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 %16(%struct.view* %17, i32* null, i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %27

22:                                               ; preds = %11
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %42

26:                                               ; preds = %22
  br label %11

27:                                               ; preds = %11
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.view*, %struct.view** %3, align 8
  %32 = getelementptr inbounds %struct.view, %struct.view* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @io_kill(i32* %33)
  br label %35

35:                                               ; preds = %30, %27
  %36 = load %struct.view*, %struct.view** %3, align 8
  %37 = getelementptr inbounds %struct.view, %struct.view* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @io_done(i32* %38)
  %40 = load %struct.view*, %struct.view** %3, align 8
  %41 = getelementptr inbounds %struct.view, %struct.view* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %35, %25, %9
  ret void
}

declare dso_local i32 @io_kill(i32*) #1

declare dso_local i32 @io_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
