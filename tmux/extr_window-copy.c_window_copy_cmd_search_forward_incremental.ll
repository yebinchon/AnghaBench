; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_search_forward_incremental.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_search_forward_incremental.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.TYPE_2__*, %struct.window_mode_entry* }
%struct.TYPE_2__ = type { i8** }
%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i8*, i32, i32, i32, i32, i32, i32, i32 }

@WINDOW_COPY_CMD_NOTHING = common dso_local global i32 0, align 4
@WINDOW_COPY_CMD_REDRAW = common dso_local global i32 0, align 4
@WINDOW_COPY_SEARCHDOWN = common dso_local global i32 0, align 4
@WINDOW_COPY_SEARCHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_search_forward_incremental to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_search_forward_incremental(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.window_copy_cmd_state*, align 8
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca %struct.window_copy_mode_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %3, align 8
  %10 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %3, align 8
  %11 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %10, i32 0, i32 1
  %12 = load %struct.window_mode_entry*, %struct.window_mode_entry** %11, align 8
  store %struct.window_mode_entry* %12, %struct.window_mode_entry** %4, align 8
  %13 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %14 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %13, i32 0, i32 0
  %15 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %14, align 8
  store %struct.window_copy_mode_data* %15, %struct.window_copy_mode_data** %5, align 8
  %16 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %3, align 8
  %17 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  %23 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %24 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  %26 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  %29 = load i8, i8* %27, align 1
  store i8 %29, i8* %8, align 1
  %30 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %31 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %39, label %34

34:                                               ; preds = %1
  %35 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %36 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %55

39:                                               ; preds = %34, %1
  %40 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %41 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %44 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %46 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %49 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %51 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %54 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  br label %81

55:                                               ; preds = %34
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %80

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @strcmp(i8* %59, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %58
  %64 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %65 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %68 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %70 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %73 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %75 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %78 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @WINDOW_COPY_CMD_REDRAW, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %63, %58, %55
  br label %81

81:                                               ; preds = %80, %39
  %82 = load i8*, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %88 = call i32 @window_copy_clear_marks(%struct.window_mode_entry* %87)
  %89 = load i32, i32* @WINDOW_COPY_CMD_REDRAW, align 4
  store i32 %89, i32* %2, align 4
  br label %135

90:                                               ; preds = %81
  %91 = load i8, i8* %8, align 1
  %92 = sext i8 %91 to i32
  switch i32 %92, label %133 [
    i32 61, label %93
    i32 43, label %93
    i32 45, label %113
  ]

93:                                               ; preds = %90, %90
  %94 = load i32, i32* @WINDOW_COPY_SEARCHDOWN, align 4
  %95 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %96 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %98 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i8*, i8** %6, align 8
  %102 = call i8* @xstrdup(i8* %101)
  %103 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %104 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %106 = call i32 @window_copy_search_down(%struct.window_mode_entry* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %93
  %109 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %110 = call i32 @window_copy_clear_marks(%struct.window_mode_entry* %109)
  %111 = load i32, i32* @WINDOW_COPY_CMD_REDRAW, align 4
  store i32 %111, i32* %2, align 4
  br label %135

112:                                              ; preds = %93
  br label %133

113:                                              ; preds = %90
  %114 = load i32, i32* @WINDOW_COPY_SEARCHUP, align 4
  %115 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %116 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %118 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @free(i8* %119)
  %121 = load i8*, i8** %6, align 8
  %122 = call i8* @xstrdup(i8* %121)
  %123 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %124 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %126 = call i32 @window_copy_search_up(%struct.window_mode_entry* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %113
  %129 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %130 = call i32 @window_copy_clear_marks(%struct.window_mode_entry* %129)
  %131 = load i32, i32* @WINDOW_COPY_CMD_REDRAW, align 4
  store i32 %131, i32* %2, align 4
  br label %135

132:                                              ; preds = %113
  br label %133

133:                                              ; preds = %132, %90, %112
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %128, %108, %86
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @window_copy_clear_marks(%struct.window_mode_entry*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @window_copy_search_down(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_search_up(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
