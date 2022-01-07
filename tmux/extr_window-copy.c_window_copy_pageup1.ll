; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_pageup1.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_pageup1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, i64, i64, i32, i32, %struct.screen }
%struct.screen = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, i32)* @window_copy_pageup1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_pageup1(%struct.window_mode_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.window_copy_mode_data*, align 8
  %6 = alloca %struct.screen*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %13 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %12, i32 0, i32 0
  %14 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %13, align 8
  store %struct.window_copy_mode_data* %14, %struct.window_copy_mode_data** %5, align 8
  %15 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %16 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %15, i32 0, i32 7
  store %struct.screen* %16, %struct.screen** %6, align 8
  %17 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %18 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @screen_hsize(i32 %19)
  %21 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %22 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %26 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  store i64 %28, i64* %9, align 8
  %29 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @window_copy_find_length(%struct.window_mode_entry* %29, i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %33 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %2
  %38 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %39 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %42 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %45 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %37, %2
  %47 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %48 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %51 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  store i64 1, i64* %7, align 8
  %52 = load %struct.screen*, %struct.screen** %6, align 8
  %53 = call i32 @screen_size_y(%struct.screen* %52)
  %54 = icmp sgt i32 %53, 2
  br i1 %54, label %55, label %69

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.screen*, %struct.screen** %6, align 8
  %60 = call i32 @screen_size_y(%struct.screen* %59)
  %61 = sdiv i32 %60, 2
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %7, align 8
  br label %68

63:                                               ; preds = %55
  %64 = load %struct.screen*, %struct.screen** %6, align 8
  %65 = call i32 @screen_size_y(%struct.screen* %64)
  %66 = sub nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %63, %58
  br label %69

69:                                               ; preds = %68, %46
  %70 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %71 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = add nsw i64 %72, %73
  %75 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %76 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @screen_hsize(i32 %77)
  %79 = icmp sgt i64 %74, %78
  br i1 %79, label %80, label %102

80:                                               ; preds = %69
  %81 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %82 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @screen_hsize(i32 %83)
  %85 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %86 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %88 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %80
  %93 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %94 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  br label %101

95:                                               ; preds = %80
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %98 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, %96
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %95, %92
  br label %108

102:                                              ; preds = %69
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %105 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, %103
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %102, %101
  %109 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %110 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.screen, %struct.screen* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %108
  %115 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %116 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %158, label %119

119:                                              ; preds = %114, %108
  %120 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %121 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @screen_hsize(i32 %122)
  %124 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %125 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %129 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %127, %130
  store i64 %131, i64* %11, align 8
  %132 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %133 = load i64, i64* %11, align 8
  %134 = call i64 @window_copy_find_length(%struct.window_mode_entry* %132, i64 %133)
  store i64 %134, i64* %10, align 8
  %135 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %136 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %139 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = icmp sge i64 %137, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %119
  %143 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %144 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %10, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %142, %119
  %149 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %150 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %10, align 8
  %153 = icmp sgt i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %148, %142
  %155 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %156 = call i32 @window_copy_cursor_end_of_line(%struct.window_mode_entry* %155)
  br label %157

157:                                              ; preds = %154, %148
  br label %158

158:                                              ; preds = %157, %114
  %159 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %160 = call i32 @window_copy_update_selection(%struct.window_mode_entry* %159, i32 1)
  %161 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %162 = call i32 @window_copy_redraw_screen(%struct.window_mode_entry* %161)
  ret void
}

declare dso_local i64 @screen_hsize(i32) #1

declare dso_local i64 @window_copy_find_length(%struct.window_mode_entry*, i64) #1

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @window_copy_cursor_end_of_line(%struct.window_mode_entry*) #1

declare dso_local i32 @window_copy_update_selection(%struct.window_mode_entry*, i32) #1

declare dso_local i32 @window_copy_redraw_screen(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
