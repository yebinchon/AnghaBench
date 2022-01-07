; ModuleID = '/home/carl/AnghaBench/tig/src/extr_grep.c_open_grep_view.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_grep.c_open_grep_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, i64 }

@grep_view = common dso_local global %struct.view zeroinitializer, align 8
@OPEN_DEFAULT = common dso_local global i32 0, align 4
@OPEN_RELOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @open_grep_view(%struct.view* %0) #0 {
  %2 = alloca %struct.view*, align 8
  %3 = alloca %struct.view*, align 8
  %4 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %2, align 8
  store %struct.view* @grep_view, %struct.view** %3, align 8
  %5 = load %struct.view*, %struct.view** %2, align 8
  %6 = load %struct.view*, %struct.view** %3, align 8
  %7 = icmp eq %struct.view* %5, %6
  %8 = zext i1 %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = load %struct.view*, %struct.view** %2, align 8
  %10 = icmp ne %struct.view* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.view*, %struct.view** %3, align 8
  %13 = call i64 @is_initial_view(%struct.view* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.view*, %struct.view** %3, align 8
  %17 = getelementptr inbounds %struct.view, %struct.view* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20, %11
  %24 = load %struct.view*, %struct.view** %2, align 8
  %25 = load %struct.view*, %struct.view** %3, align 8
  %26 = load i32, i32* @OPEN_DEFAULT, align 4
  %27 = call i32 @open_view(%struct.view* %24, %struct.view* %25, i32 %26)
  br label %40

28:                                               ; preds = %20, %15
  %29 = call i64 (...) @grep_prompt()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.view*, %struct.view** %3, align 8
  %33 = getelementptr inbounds %struct.view, %struct.view* %32, i32 0, i32 0
  %34 = call i32 @clear_position(i32* %33)
  %35 = load %struct.view*, %struct.view** %2, align 8
  %36 = load %struct.view*, %struct.view** %3, align 8
  %37 = load i32, i32* @OPEN_RELOAD, align 4
  %38 = call i32 @open_view(%struct.view* %35, %struct.view* %36, i32 %37)
  br label %39

39:                                               ; preds = %31, %28
  br label %40

40:                                               ; preds = %39, %23
  ret void
}

declare dso_local i64 @is_initial_view(%struct.view*) #1

declare dso_local i32 @open_view(%struct.view*, %struct.view*, i32) #1

declare dso_local i64 @grep_prompt(...) #1

declare dso_local i32 @clear_position(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
