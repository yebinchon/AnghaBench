; ModuleID = '/home/carl/AnghaBench/tig/src/extr_main.c_main_check_index.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_main.c_main_check_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.main_state = type { i32, i32, i32 }
%struct.index_diff = type { i32, i32, i32 }

@opt_show_untracked = common dso_local global i32 0, align 4
@WATCH_INDEX_UNTRACKED_NO = common dso_local global i32 0, align 4
@WATCH_INDEX_UNTRACKED_YES = common dso_local global i32 0, align 4
@WATCH_INDEX_UNSTAGED_NO = common dso_local global i32 0, align 4
@WATCH_INDEX_UNSTAGED_YES = common dso_local global i32 0, align 4
@WATCH_INDEX_STAGED_NO = common dso_local global i32 0, align 4
@WATCH_INDEX_STAGED_YES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.main_state*)* @main_check_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @main_check_index(%struct.view* %0, %struct.main_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.main_state*, align 8
  %6 = alloca %struct.index_diff, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.main_state* %1, %struct.main_state** %5, align 8
  %7 = load i32, i32* @opt_show_untracked, align 4
  %8 = call i32 @index_diff(%struct.index_diff* %6, i32 %7, i32 0)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.index_diff, %struct.index_diff* %6, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load %struct.view*, %struct.view** %4, align 8
  %17 = getelementptr inbounds %struct.view, %struct.view* %16, i32 0, i32 0
  %18 = load i32, i32* @WATCH_INDEX_UNTRACKED_NO, align 4
  %19 = call i32 @watch_apply(i32* %17, i32 %18)
  br label %27

20:                                               ; preds = %11
  %21 = load %struct.view*, %struct.view** %4, align 8
  %22 = getelementptr inbounds %struct.view, %struct.view* %21, i32 0, i32 0
  %23 = load i32, i32* @WATCH_INDEX_UNTRACKED_YES, align 4
  %24 = call i32 @watch_apply(i32* %22, i32 %23)
  %25 = load %struct.main_state*, %struct.main_state** %5, align 8
  %26 = getelementptr inbounds %struct.main_state, %struct.main_state* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %20, %15
  %28 = getelementptr inbounds %struct.index_diff, %struct.index_diff* %6, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load %struct.view*, %struct.view** %4, align 8
  %33 = getelementptr inbounds %struct.view, %struct.view* %32, i32 0, i32 0
  %34 = load i32, i32* @WATCH_INDEX_UNSTAGED_NO, align 4
  %35 = call i32 @watch_apply(i32* %33, i32 %34)
  br label %43

36:                                               ; preds = %27
  %37 = load %struct.view*, %struct.view** %4, align 8
  %38 = getelementptr inbounds %struct.view, %struct.view* %37, i32 0, i32 0
  %39 = load i32, i32* @WATCH_INDEX_UNSTAGED_YES, align 4
  %40 = call i32 @watch_apply(i32* %38, i32 %39)
  %41 = load %struct.main_state*, %struct.main_state** %5, align 8
  %42 = getelementptr inbounds %struct.main_state, %struct.main_state* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %31
  %44 = getelementptr inbounds %struct.index_diff, %struct.index_diff* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load %struct.view*, %struct.view** %4, align 8
  %49 = getelementptr inbounds %struct.view, %struct.view* %48, i32 0, i32 0
  %50 = load i32, i32* @WATCH_INDEX_STAGED_NO, align 4
  %51 = call i32 @watch_apply(i32* %49, i32 %50)
  br label %59

52:                                               ; preds = %43
  %53 = load %struct.view*, %struct.view** %4, align 8
  %54 = getelementptr inbounds %struct.view, %struct.view* %53, i32 0, i32 0
  %55 = load i32, i32* @WATCH_INDEX_STAGED_YES, align 4
  %56 = call i32 @watch_apply(i32* %54, i32 %55)
  %57 = load %struct.main_state*, %struct.main_state** %5, align 8
  %58 = getelementptr inbounds %struct.main_state, %struct.main_state* %57, i32 0, i32 2
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %47
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %10
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @index_diff(%struct.index_diff*, i32, i32) #1

declare dso_local i32 @watch_apply(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
