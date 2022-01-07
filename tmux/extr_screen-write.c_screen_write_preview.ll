; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_preview.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_preview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { %struct.screen* }
%struct.screen = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.grid_cell = type { i32 }

@MODE_CURSOR = common dso_local global i32 0, align 4
@GRID_ATTR_REVERSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_preview(%struct.screen_write_ctx* %0, %struct.screen* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.screen_write_ctx*, align 8
  %6 = alloca %struct.screen*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.screen*, align 8
  %10 = alloca %struct.grid_cell, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %5, align 8
  store %struct.screen* %1, %struct.screen** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %15, i32 0, i32 0
  %17 = load %struct.screen*, %struct.screen** %16, align 8
  store %struct.screen* %17, %struct.screen** %9, align 8
  %18 = load %struct.screen*, %struct.screen** %9, align 8
  %19 = getelementptr inbounds %struct.screen, %struct.screen* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load %struct.screen*, %struct.screen** %9, align 8
  %22 = getelementptr inbounds %struct.screen, %struct.screen* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.screen*, %struct.screen** %6, align 8
  %25 = getelementptr inbounds %struct.screen, %struct.screen* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MODE_CURSOR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %97

30:                                               ; preds = %4
  %31 = load %struct.screen*, %struct.screen** %6, align 8
  %32 = getelementptr inbounds %struct.screen, %struct.screen* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sdiv i32 %35, 3
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %44

39:                                               ; preds = %30
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sdiv i32 %41, 3
  %43 = sub nsw i32 %40, %42
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %39, %38
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %45, %46
  %48 = load %struct.screen*, %struct.screen** %6, align 8
  %49 = call i32 @screen_size_x(%struct.screen* %48)
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.screen*, %struct.screen** %6, align 8
  %54 = call i32 @screen_size_x(%struct.screen* %53)
  %55 = icmp sgt i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %13, align 4
  br label %62

57:                                               ; preds = %51
  %58 = load %struct.screen*, %struct.screen** %6, align 8
  %59 = call i32 @screen_size_x(%struct.screen* %58)
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %57, %56
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.screen*, %struct.screen** %6, align 8
  %65 = getelementptr inbounds %struct.screen, %struct.screen* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %8, align 4
  %69 = sdiv i32 %68, 3
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 0, i32* %14, align 4
  br label %77

72:                                               ; preds = %63
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sdiv i32 %74, 3
  %76 = sub nsw i32 %73, %75
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %72, %71
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %78, %79
  %81 = load %struct.screen*, %struct.screen** %6, align 8
  %82 = call i32 @screen_size_y(%struct.screen* %81)
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %77
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.screen*, %struct.screen** %6, align 8
  %87 = call i32 @screen_size_y(%struct.screen* %86)
  %88 = icmp sgt i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 0, i32* %14, align 4
  br label %95

90:                                               ; preds = %84
  %91 = load %struct.screen*, %struct.screen** %6, align 8
  %92 = call i32 @screen_size_y(%struct.screen* %91)
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %92, %93
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %90, %89
  br label %96

96:                                               ; preds = %95, %77
  br label %98

97:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %97, %96
  %99 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %100 = load %struct.screen*, %struct.screen** %6, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.screen*, %struct.screen** %6, align 8
  %103 = getelementptr inbounds %struct.screen, %struct.screen* %102, i32 0, i32 3
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @screen_write_fast_copy(%struct.screen_write_ctx* %99, %struct.screen* %100, i32 %101, i64 %109, i32 %110, i32 %111)
  %113 = load %struct.screen*, %struct.screen** %6, align 8
  %114 = getelementptr inbounds %struct.screen, %struct.screen* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @MODE_CURSOR, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %152

119:                                              ; preds = %98
  %120 = load %struct.screen*, %struct.screen** %6, align 8
  %121 = getelementptr inbounds %struct.screen, %struct.screen* %120, i32 0, i32 3
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load %struct.screen*, %struct.screen** %6, align 8
  %124 = getelementptr inbounds %struct.screen, %struct.screen* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.screen*, %struct.screen** %6, align 8
  %127 = getelementptr inbounds %struct.screen, %struct.screen* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @grid_view_get_cell(%struct.TYPE_2__* %122, i32 %125, i32 %128, %struct.grid_cell* %10)
  %130 = load i32, i32* @GRID_ATTR_REVERSE, align 4
  %131 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %10, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %130
  store i32 %133, i32* %131, align 4
  %134 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.screen*, %struct.screen** %6, align 8
  %137 = getelementptr inbounds %struct.screen, %struct.screen* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sub nsw i32 %138, %139
  %141 = add nsw i32 %135, %140
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.screen*, %struct.screen** %6, align 8
  %144 = getelementptr inbounds %struct.screen, %struct.screen* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %14, align 4
  %147 = sub nsw i32 %145, %146
  %148 = add nsw i32 %142, %147
  %149 = call i32 @screen_write_set_cursor(%struct.screen_write_ctx* %134, i32 %141, i32 %148)
  %150 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %5, align 8
  %151 = call i32 @screen_write_cell(%struct.screen_write_ctx* %150, %struct.grid_cell* %10)
  br label %152

152:                                              ; preds = %119, %98
  ret void
}

declare dso_local i32 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @screen_write_fast_copy(%struct.screen_write_ctx*, %struct.screen*, i32, i64, i32, i32) #1

declare dso_local i32 @grid_view_get_cell(%struct.TYPE_2__*, i32, i32, %struct.grid_cell*) #1

declare dso_local i32 @screen_write_set_cursor(%struct.screen_write_ctx*, i32, i32) #1

declare dso_local i32 @screen_write_cell(%struct.screen_write_ctx*, %struct.grid_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
