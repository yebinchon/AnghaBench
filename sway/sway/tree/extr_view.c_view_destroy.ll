; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_2__*, %struct.sway_view*, i32, i32*, i32, i32* }
%struct.TYPE_2__ = type { i32 (%struct.sway_view*)* }

@.str = private unnamed_addr constant [26 x i8] c"Tried to free mapped view\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Tried to free view which wasn't marked as destroying\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"Tried to free view which still has a container (might have a pending transaction?)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @view_destroy(%struct.sway_view* %0) #0 {
  %2 = alloca %struct.sway_view*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %2, align 8
  %3 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %4 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %3, i32 0, i32 5
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @sway_assert(i32 %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %53

11:                                               ; preds = %1
  %12 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %13 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @sway_assert(i32 %14, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %53

18:                                               ; preds = %11
  %19 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %20 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @sway_assert(i32 %23, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %53

27:                                               ; preds = %18
  %28 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %29 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @list_free(i32 %30)
  %32 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %33 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %32, i32 0, i32 1
  %34 = load %struct.sway_view*, %struct.sway_view** %33, align 8
  %35 = call i32 @free(%struct.sway_view* %34)
  %36 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %37 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.sway_view*)*, i32 (%struct.sway_view*)** %39, align 8
  %41 = icmp ne i32 (%struct.sway_view*)* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %27
  %43 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %44 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.sway_view*)*, i32 (%struct.sway_view*)** %46, align 8
  %48 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %49 = call i32 %47(%struct.sway_view* %48)
  br label %53

50:                                               ; preds = %27
  %51 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %52 = call i32 @free(%struct.sway_view* %51)
  br label %53

53:                                               ; preds = %10, %17, %26, %50, %42
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @list_free(i32) #1

declare dso_local i32 @free(%struct.sway_view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
