; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_search_marks.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_search_marks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i64, i64, i64, i32, i64, i32, i32, %struct.screen* }
%struct.screen = type { %struct.grid* }
%struct.grid = type { i32, i32, i32 }
%struct.screen_write_ctx = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@grid_default_cell = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_mode_entry*, %struct.screen*)* @window_copy_search_marks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_search_marks(%struct.window_mode_entry* %0, %struct.screen* %1) #0 {
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca %struct.screen*, align 8
  %5 = alloca %struct.window_copy_mode_data*, align 8
  %6 = alloca %struct.screen*, align 8
  %7 = alloca %struct.screen, align 8
  %8 = alloca %struct.screen_write_ctx, align 4
  %9 = alloca %struct.grid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %3, align 8
  store %struct.screen* %1, %struct.screen** %4, align 8
  %18 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %19 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %18, i32 0, i32 0
  %20 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %19, align 8
  store %struct.window_copy_mode_data* %20, %struct.window_copy_mode_data** %5, align 8
  %21 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %22 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %21, i32 0, i32 7
  %23 = load %struct.screen*, %struct.screen** %22, align 8
  store %struct.screen* %23, %struct.screen** %6, align 8
  %24 = load %struct.screen*, %struct.screen** %6, align 8
  %25 = getelementptr inbounds %struct.screen, %struct.screen* %24, i32 0, i32 0
  %26 = load %struct.grid*, %struct.grid** %25, align 8
  store %struct.grid* %26, %struct.grid** %9, align 8
  store i32 -1, i32* %12, align 4
  store i64 0, i64* %16, align 8
  %27 = load %struct.screen*, %struct.screen** %4, align 8
  %28 = icmp eq %struct.screen* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %2
  %30 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %31 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @screen_write_strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i64 %33, i64* %17, align 8
  %34 = load i64, i64* %17, align 8
  %35 = call i32 @screen_init(%struct.screen* %7, i64 %34, i32 1, i32 0)
  %36 = call i32 @screen_write_start(%struct.screen_write_ctx* %8, i32* null, %struct.screen* %7)
  %37 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %38 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @screen_write_nputs(%struct.screen_write_ctx* %8, i32 -1, i32* @grid_default_cell, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = call i32 @screen_write_stop(%struct.screen_write_ctx* %8)
  store %struct.screen* %7, %struct.screen** %4, align 8
  br label %45

42:                                               ; preds = %2
  %43 = load %struct.screen*, %struct.screen** %4, align 8
  %44 = call i64 @screen_size_x(%struct.screen* %43)
  store i64 %44, i64* %17, align 8
  br label %45

45:                                               ; preds = %42, %29
  %46 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %47 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @window_copy_is_lowercase(i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %51 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @free(i32 %52)
  %54 = load %struct.grid*, %struct.grid** %9, align 8
  %55 = getelementptr inbounds %struct.grid, %struct.grid* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.grid*, %struct.grid** %9, align 8
  %58 = getelementptr inbounds %struct.grid, %struct.grid* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = load %struct.grid*, %struct.grid** %9, align 8
  %62 = getelementptr inbounds %struct.grid, %struct.grid* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  %65 = call i32 @bit_alloc(i32 %64)
  %66 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %67 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  store i64 0, i64* %14, align 8
  br label %68

68:                                               ; preds = %142, %45
  %69 = load i64, i64* %14, align 8
  %70 = load %struct.grid*, %struct.grid** %9, align 8
  %71 = getelementptr inbounds %struct.grid, %struct.grid* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.grid*, %struct.grid** %9, align 8
  %74 = getelementptr inbounds %struct.grid, %struct.grid* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %69, %77
  br i1 %78, label %79, label %145

79:                                               ; preds = %68
  store i64 0, i64* %13, align 8
  br label %80

80:                                               ; preds = %121, %79
  %81 = load %struct.grid*, %struct.grid** %9, align 8
  %82 = load %struct.screen*, %struct.screen** %4, align 8
  %83 = getelementptr inbounds %struct.screen, %struct.screen* %82, i32 0, i32 0
  %84 = load %struct.grid*, %struct.grid** %83, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.grid*, %struct.grid** %9, align 8
  %88 = getelementptr inbounds %struct.grid, %struct.grid* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @window_copy_search_lr(%struct.grid* %81, %struct.grid* %84, i64* %13, i64 %85, i64 %86, i32 %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %80
  br label %141

95:                                               ; preds = %80
  %96 = load i64, i64* %16, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %16, align 8
  %98 = load i64, i64* %13, align 8
  %99 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %100 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %98, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %95
  %104 = load i64, i64* %14, align 8
  %105 = load %struct.grid*, %struct.grid** %9, align 8
  %106 = getelementptr inbounds %struct.grid, %struct.grid* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %110 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %108, %111
  %113 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %114 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = icmp eq i64 %104, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %103
  %119 = load i64, i64* %16, align 8
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %118, %103, %95
  %122 = load i64, i64* %14, align 8
  %123 = load %struct.grid*, %struct.grid** %9, align 8
  %124 = getelementptr inbounds %struct.grid, %struct.grid* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %122, %126
  %128 = load i64, i64* %13, align 8
  %129 = add nsw i64 %127, %128
  store i64 %129, i64* %15, align 8
  %130 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %131 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = load i64, i64* %15, align 8
  %134 = load i64, i64* %15, align 8
  %135 = load i64, i64* %17, align 8
  %136 = add nsw i64 %134, %135
  %137 = sub nsw i64 %136, 1
  %138 = call i32 @bit_nset(i32 %132, i64 %133, i64 %137)
  %139 = load i64, i64* %13, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %13, align 8
  br label %80

141:                                              ; preds = %94
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %14, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %14, align 8
  br label %68

145:                                              ; preds = %68
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, -1
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load i64, i64* %16, align 8
  %150 = add nsw i64 1, %149
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = sub nsw i64 %150, %152
  %154 = trunc i64 %153 to i32
  %155 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %156 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 8
  br label %160

157:                                              ; preds = %145
  %158 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %159 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %158, i32 0, i32 3
  store i32 -1, i32* %159, align 8
  br label %160

160:                                              ; preds = %157, %148
  %161 = load i64, i64* %16, align 8
  %162 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %5, align 8
  %163 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %162, i32 0, i32 4
  store i64 %161, i64* %163, align 8
  %164 = load %struct.screen*, %struct.screen** %4, align 8
  %165 = icmp eq %struct.screen* %164, %7
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = call i32 @screen_free(%struct.screen* %7)
  br label %168

168:                                              ; preds = %166, %160
  %169 = load i64, i64* %16, align 8
  %170 = trunc i64 %169 to i32
  ret i32 %170
}

declare dso_local i64 @screen_write_strlen(i8*, i32) #1

declare dso_local i32 @screen_init(%struct.screen*, i64, i32, i32) #1

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, i32*, %struct.screen*) #1

declare dso_local i32 @screen_write_nputs(%struct.screen_write_ctx*, i32, i32*, i8*, i32) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

declare dso_local i64 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @window_copy_is_lowercase(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @bit_alloc(i32) #1

declare dso_local i32 @window_copy_search_lr(%struct.grid*, %struct.grid*, i64*, i64, i64, i32, i32) #1

declare dso_local i32 @bit_nset(i32, i64, i64) #1

declare dso_local i32 @screen_free(%struct.screen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
