; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout.c_layout_free_cell.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout.c_layout_free_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layout_cell = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @layout_free_cell(%struct.layout_cell* %0) #0 {
  %2 = alloca %struct.layout_cell*, align 8
  %3 = alloca %struct.layout_cell*, align 8
  store %struct.layout_cell* %0, %struct.layout_cell** %2, align 8
  %4 = load %struct.layout_cell*, %struct.layout_cell** %2, align 8
  %5 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %36 [
    i32 130, label %7
    i32 129, label %7
    i32 128, label %25
  ]

7:                                                ; preds = %1, %1
  br label %8

8:                                                ; preds = %14, %7
  %9 = load %struct.layout_cell*, %struct.layout_cell** %2, align 8
  %10 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %9, i32 0, i32 2
  %11 = call i32 @TAILQ_EMPTY(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load %struct.layout_cell*, %struct.layout_cell** %2, align 8
  %16 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %15, i32 0, i32 2
  %17 = call %struct.layout_cell* @TAILQ_FIRST(i32* %16)
  store %struct.layout_cell* %17, %struct.layout_cell** %3, align 8
  %18 = load %struct.layout_cell*, %struct.layout_cell** %2, align 8
  %19 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %18, i32 0, i32 2
  %20 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  %21 = load i32, i32* @entry, align 4
  %22 = call i32 @TAILQ_REMOVE(i32* %19, %struct.layout_cell* %20, i32 %21)
  %23 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  call void @layout_free_cell(%struct.layout_cell* %23)
  br label %8

24:                                               ; preds = %8
  br label %36

25:                                               ; preds = %1
  %26 = load %struct.layout_cell*, %struct.layout_cell** %2, align 8
  %27 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.layout_cell*, %struct.layout_cell** %2, align 8
  %32 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %30, %25
  br label %36

36:                                               ; preds = %1, %35, %24
  %37 = load %struct.layout_cell*, %struct.layout_cell** %2, align 8
  %38 = call i32 @free(%struct.layout_cell* %37)
  ret void
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.layout_cell* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.layout_cell*, i32) #1

declare dso_local i32 @free(%struct.layout_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
