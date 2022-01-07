; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_search_backward.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_search_backward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.TYPE_2__*, %struct.window_mode_entry* }
%struct.TYPE_2__ = type { i32, i8** }
%struct.window_mode_entry = type { i64, i32, %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i8*, i32 }

@WINDOW_COPY_CMD_NOTHING = common dso_local global i32 0, align 4
@WINDOW_COPY_SEARCHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_search_backward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_search_backward(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.window_copy_cmd_state*, align 8
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca %struct.window_copy_mode_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %3, align 8
  %9 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %3, align 8
  %10 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %9, i32 0, i32 1
  %11 = load %struct.window_mode_entry*, %struct.window_mode_entry** %10, align 8
  store %struct.window_mode_entry* %11, %struct.window_mode_entry** %4, align 8
  %12 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %13 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %12, i32 0, i32 2
  %14 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %13, align 8
  store %struct.window_copy_mode_data* %14, %struct.window_copy_mode_data** %5, align 8
  %15 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %16 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %3, align 8
  %19 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %75

24:                                               ; preds = %1
  %25 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %3, align 8
  %26 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %24
  %37 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %3, align 8
  %38 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i64 @args_has(%struct.TYPE_2__* %39, float 7.000000e+01)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %36
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %45 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @format_single(i32* null, i8* %43, i32* null, i32* null, i32* null, i32 %46)
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  store i32 %55, i32* %2, align 4
  br label %96

56:                                               ; preds = %42
  %57 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %58 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %63 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  br label %73

64:                                               ; preds = %36
  %65 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %66 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i8*, i8** %7, align 8
  %70 = call i8* @xstrdup(i8* %69)
  %71 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %72 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %64, %56
  br label %74

74:                                               ; preds = %73, %24
  br label %75

75:                                               ; preds = %74, %1
  %76 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %77 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load i32, i32* @WINDOW_COPY_SEARCHUP, align 4
  %82 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %83 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %90, %80
  %85 = load i64, i64* %6, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %89 = call i32 @window_copy_search_up(%struct.window_mode_entry* %88)
  br label %90

90:                                               ; preds = %87
  %91 = load i64, i64* %6, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* %6, align 8
  br label %84

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %75
  %95 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %52
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @args_has(%struct.TYPE_2__*, float) #1

declare dso_local i8* @format_single(i32*, i8*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @window_copy_search_up(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
