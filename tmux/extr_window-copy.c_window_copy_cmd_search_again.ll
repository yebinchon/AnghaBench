; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_search_again.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_search_again.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.window_mode_entry* }
%struct.window_mode_entry = type { i64, %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64 }

@WINDOW_COPY_SEARCHUP = common dso_local global i64 0, align 8
@WINDOW_COPY_SEARCHDOWN = common dso_local global i64 0, align 8
@WINDOW_COPY_CMD_NOTHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_search_again to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_search_again(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca %struct.window_copy_cmd_state*, align 8
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca %struct.window_copy_mode_data*, align 8
  %5 = alloca i64, align 8
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %2, align 8
  %6 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %7 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %6, i32 0, i32 0
  %8 = load %struct.window_mode_entry*, %struct.window_mode_entry** %7, align 8
  store %struct.window_mode_entry* %8, %struct.window_mode_entry** %3, align 8
  %9 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %10 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %9, i32 0, i32 1
  %11 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %10, align 8
  store %struct.window_copy_mode_data* %11, %struct.window_copy_mode_data** %4, align 8
  %12 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %13 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %16 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WINDOW_COPY_SEARCHUP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %27, %20
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %26 = call i32 @window_copy_search_up(%struct.window_mode_entry* %25)
  br label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %5, align 8
  br label %21

30:                                               ; preds = %21
  br label %49

31:                                               ; preds = %1
  %32 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %4, align 8
  %33 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @WINDOW_COPY_SEARCHDOWN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %44, %37
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %43 = call i32 @window_copy_search_down(%struct.window_mode_entry* %42)
  br label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %5, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %5, align 8
  br label %38

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %31
  br label %49

49:                                               ; preds = %48, %30
  %50 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  ret i32 %50
}

declare dso_local i32 @window_copy_search_up(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_search_down(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
