; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen.c_screen_resize_y.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen.c_screen_resize_y.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen = type { i32, i8*, i64, %struct.grid* }
%struct.grid = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"zero size\00", align 1
@GRID_HISTORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.screen*, i32)* @screen_resize_y to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @screen_resize_y(%struct.screen* %0, i32 %1) #0 {
  %3 = alloca %struct.screen*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.grid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.screen* %0, %struct.screen** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.screen*, %struct.screen** %3, align 8
  %11 = getelementptr inbounds %struct.screen, %struct.screen* %10, i32 0, i32 3
  %12 = load %struct.grid*, %struct.grid** %11, align 8
  store %struct.grid* %12, %struct.grid** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @fatalx(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.screen*, %struct.screen** %3, align 8
  %19 = call i8* @screen_size_y(%struct.screen* %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %96

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.screen*, %struct.screen** %3, align 8
  %31 = getelementptr inbounds %struct.screen, %struct.screen* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load %struct.grid*, %struct.grid** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @grid_view_delete_lines(%struct.grid* %43, i32 %46, i32 %47, i32 8)
  br label %49

49:                                               ; preds = %42, %24
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.screen*, %struct.screen** %3, align 8
  %54 = getelementptr inbounds %struct.screen, %struct.screen* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %7, align 4
  %56 = load %struct.grid*, %struct.grid** %5, align 8
  %57 = getelementptr inbounds %struct.grid, %struct.grid* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @GRID_HISTORY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %49
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.grid*, %struct.grid** %5, align 8
  %65 = getelementptr inbounds %struct.grid, %struct.grid* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.grid*, %struct.grid** %5, align 8
  %70 = getelementptr inbounds %struct.grid, %struct.grid* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %90

73:                                               ; preds = %49
  %74 = load i32, i32* %6, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %83, %79
  %86 = load %struct.grid*, %struct.grid** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @grid_view_delete_lines(%struct.grid* %86, i32 0, i32 %87, i32 8)
  br label %89

89:                                               ; preds = %85, %76, %73
  br label %90

90:                                               ; preds = %89, %62
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.screen*, %struct.screen** %3, align 8
  %93 = getelementptr inbounds %struct.screen, %struct.screen* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %17
  %97 = load %struct.grid*, %struct.grid** %5, align 8
  %98 = load %struct.grid*, %struct.grid** %5, align 8
  %99 = getelementptr inbounds %struct.grid, %struct.grid* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %100, %101
  %103 = call i32 @grid_adjust_lines(%struct.grid* %97, i32 %102)
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %174

107:                                              ; preds = %96
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %8, align 4
  %110 = sub nsw i32 %108, %109
  store i32 %110, i32* %6, align 4
  %111 = load %struct.grid*, %struct.grid** %5, align 8
  %112 = getelementptr inbounds %struct.grid, %struct.grid* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %7, align 4
  %114 = load %struct.grid*, %struct.grid** %5, align 8
  %115 = getelementptr inbounds %struct.grid, %struct.grid* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @GRID_HISTORY, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %145

120:                                              ; preds = %107
  %121 = load i32, i32* %7, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %145

123:                                              ; preds = %120
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %127, %123
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.grid*, %struct.grid** %5, align 8
  %132 = getelementptr inbounds %struct.grid, %struct.grid* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.grid*, %struct.grid** %5, align 8
  %137 = getelementptr inbounds %struct.grid, %struct.grid* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.screen*, %struct.screen** %3, align 8
  %142 = getelementptr inbounds %struct.screen, %struct.screen* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %146

145:                                              ; preds = %120, %107
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %145, %129
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %6, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, i32* %6, align 4
  %150 = load %struct.grid*, %struct.grid** %5, align 8
  %151 = getelementptr inbounds %struct.grid, %struct.grid* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %152, %153
  %155 = load i32, i32* %6, align 4
  %156 = sub nsw i32 %154, %155
  store i32 %156, i32* %9, align 4
  br label %157

157:                                              ; preds = %170, %146
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.grid*, %struct.grid** %5, align 8
  %160 = getelementptr inbounds %struct.grid, %struct.grid* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %4, align 4
  %163 = add nsw i32 %161, %162
  %164 = icmp slt i32 %158, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %157
  %166 = load %struct.grid*, %struct.grid** %5, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @grid_get_line(%struct.grid* %166, i32 %167)
  %169 = call i32 @memset(i32 %168, i32 0, i32 4)
  br label %170

170:                                              ; preds = %165
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %157

173:                                              ; preds = %157
  br label %174

174:                                              ; preds = %173, %96
  %175 = load i32, i32* %4, align 4
  %176 = load %struct.grid*, %struct.grid** %5, align 8
  %177 = getelementptr inbounds %struct.grid, %struct.grid* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = load %struct.screen*, %struct.screen** %3, align 8
  %179 = getelementptr inbounds %struct.screen, %struct.screen* %178, i32 0, i32 2
  store i64 0, i64* %179, align 8
  %180 = load %struct.screen*, %struct.screen** %3, align 8
  %181 = call i8* @screen_size_y(%struct.screen* %180)
  %182 = getelementptr i8, i8* %181, i64 -1
  %183 = load %struct.screen*, %struct.screen** %3, align 8
  %184 = getelementptr inbounds %struct.screen, %struct.screen* %183, i32 0, i32 1
  store i8* %182, i8** %184, align 8
  ret void
}

declare dso_local i32 @fatalx(i8*) #1

declare dso_local i8* @screen_size_y(%struct.screen*) #1

declare dso_local i32 @grid_view_delete_lines(%struct.grid*, i32, i32, i32) #1

declare dso_local i32 @grid_adjust_lines(%struct.grid*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @grid_get_line(%struct.grid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
