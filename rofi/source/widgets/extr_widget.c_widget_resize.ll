; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_widget.c_widget_resize.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_widget.c_widget_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i16, i16, i32 (%struct.TYPE_5__*, i16, i16)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @widget_resize(%struct.TYPE_5__* %0, i16 signext %1, i16 signext %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %49

9:                                                ; preds = %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load i32 (%struct.TYPE_5__*, i16, i16)*, i32 (%struct.TYPE_5__*, i16, i16)** %11, align 8
  %13 = icmp ne i32 (%struct.TYPE_5__*, i16, i16)* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %9
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 8
  %18 = sext i16 %17 to i32
  %19 = load i16, i16* %5, align 2
  %20 = sext i16 %19 to i32
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i16, i16* %24, align 2
  %26 = sext i16 %25 to i32
  %27 = load i16, i16* %6, align 2
  %28 = sext i16 %27 to i32
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %22, %14
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32 (%struct.TYPE_5__*, i16, i16)*, i32 (%struct.TYPE_5__*, i16, i16)** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = load i16, i16* %5, align 2
  %36 = load i16, i16* %6, align 2
  %37 = call i32 %33(%struct.TYPE_5__* %34, i16 signext %35, i16 signext %36)
  br label %38

38:                                               ; preds = %30, %22
  br label %46

39:                                               ; preds = %9
  %40 = load i16, i16* %5, align 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i16 %40, i16* %42, align 8
  %43 = load i16, i16* %6, align 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i16 %43, i16* %45, align 2
  br label %46

46:                                               ; preds = %39, %38
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = call i32 @widget_queue_redraw(%struct.TYPE_5__* %47)
  br label %49

49:                                               ; preds = %46, %3
  ret void
}

declare dso_local i32 @widget_queue_redraw(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
