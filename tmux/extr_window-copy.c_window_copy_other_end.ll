; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_other_end.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_other_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i32, i64, i64, i64, i64, i64, i64, i32, i64, %struct.screen }
%struct.screen = type { i32* }

@LINE_SEL_NONE = common dso_local global i64 0, align 8
@LINE_SEL_LEFT_RIGHT = common dso_local global i64 0, align 8
@LINE_SEL_RIGHT_LEFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*)* @window_copy_other_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_other_end(%struct.window_mode_entry* %0) #0 {
  %2 = alloca %struct.window_mode_entry*, align 8
  %3 = alloca %struct.window_copy_mode_data*, align 8
  %4 = alloca %struct.screen*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %2, align 8
  %10 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %11 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %10, i32 0, i32 0
  %12 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %11, align 8
  store %struct.window_copy_mode_data* %12, %struct.window_copy_mode_data** %3, align 8
  %13 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %14 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %13, i32 0, i32 10
  store %struct.screen* %14, %struct.screen** %4, align 8
  %15 = load %struct.screen*, %struct.screen** %4, align 8
  %16 = getelementptr inbounds %struct.screen, %struct.screen* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %21 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LINE_SEL_NONE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %153

26:                                               ; preds = %19, %1
  %27 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %28 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LINE_SEL_LEFT_RIGHT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* @LINE_SEL_RIGHT_LEFT, align 8
  %34 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %35 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %47

36:                                               ; preds = %26
  %37 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %38 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LINE_SEL_RIGHT_LEFT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i64, i64* @LINE_SEL_LEFT_RIGHT, align 8
  %44 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %45 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %32
  %48 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %49 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %57 [
    i32 129, label %51
    i32 128, label %51
    i32 130, label %54
  ]

51:                                               ; preds = %47, %47
  %52 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %53 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %52, i32 0, i32 1
  store i32 130, i32* %53, align 8
  br label %57

54:                                               ; preds = %47
  %55 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %56 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %55, i32 0, i32 1
  store i32 128, i32* %56, align 8
  br label %57

57:                                               ; preds = %47, %54, %51
  %58 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %59 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %5, align 8
  %61 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %62 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %6, align 8
  %64 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %65 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 128
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %70 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %5, align 8
  %72 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %73 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %6, align 8
  br label %75

75:                                               ; preds = %68, %57
  %76 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %77 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %7, align 8
  %79 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %80 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @screen_hsize(i32 %81)
  %83 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %84 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %88 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  store i64 %90, i64* %8, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %93 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %92, i32 0, i32 9
  store i64 %91, i64* %93, align 8
  %94 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %95 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @screen_hsize(i32 %96)
  store i64 %97, i64* %9, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %101 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %100, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %99, %102
  %104 = icmp slt i64 %98, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %75
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %6, align 8
  %108 = sub nsw i64 %106, %107
  %109 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %110 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %109, i32 0, i32 7
  store i64 %108, i64* %110, align 8
  %111 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %112 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %111, i32 0, i32 6
  store i64 0, i64* %112, align 8
  br label %148

113:                                              ; preds = %75
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %117 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %115, %118
  %120 = load %struct.screen*, %struct.screen** %4, align 8
  %121 = call i64 @screen_size_y(%struct.screen* %120)
  %122 = add nsw i64 %119, %121
  %123 = icmp sgt i64 %114, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %113
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* %6, align 8
  %127 = sub nsw i64 %125, %126
  %128 = load %struct.screen*, %struct.screen** %4, align 8
  %129 = call i64 @screen_size_y(%struct.screen* %128)
  %130 = add nsw i64 %127, %129
  %131 = sub nsw i64 %130, 1
  %132 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %133 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %132, i32 0, i32 7
  store i64 %131, i64* %133, align 8
  %134 = load %struct.screen*, %struct.screen** %4, align 8
  %135 = call i64 @screen_size_y(%struct.screen* %134)
  %136 = sub nsw i64 %135, 1
  %137 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %138 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %137, i32 0, i32 6
  store i64 %136, i64* %138, align 8
  br label %147

139:                                              ; preds = %113
  %140 = load i64, i64* %7, align 8
  %141 = load i64, i64* %6, align 8
  %142 = add nsw i64 %140, %141
  %143 = load i64, i64* %8, align 8
  %144 = sub nsw i64 %142, %143
  %145 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %3, align 8
  %146 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %145, i32 0, i32 6
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %139, %124
  br label %148

148:                                              ; preds = %147, %105
  %149 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %150 = call i32 @window_copy_update_selection(%struct.window_mode_entry* %149, i32 1)
  %151 = load %struct.window_mode_entry*, %struct.window_mode_entry** %2, align 8
  %152 = call i32 @window_copy_redraw_screen(%struct.window_mode_entry* %151)
  br label %153

153:                                              ; preds = %148, %25
  ret void
}

declare dso_local i64 @screen_hsize(i32) #1

declare dso_local i64 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_redraw_screen(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
