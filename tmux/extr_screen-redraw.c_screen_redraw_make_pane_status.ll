; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-redraw.c_screen_redraw_make_pane_status.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-redraw.c_screen_redraw_make_pane_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }
%struct.window = type { i32, %struct.window_pane* }
%struct.window_pane = type { i32, i32, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.grid_cell = type { i32 }
%struct.format_tree = type { i32 }
%struct.screen_write_ctx = type { i32 }
%struct.screen = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"pane-active-border-style\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"pane-border-style\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"pane-border-format\00", align 1
@FORMAT_PANE = common dso_local global i32 0, align 4
@FORMAT_STATUS = common dso_local global i32 0, align 4
@GRID_ATTR_CHARSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %struct.window*, %struct.window_pane*)* @screen_redraw_make_pane_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @screen_redraw_make_pane_status(%struct.client* %0, %struct.window* %1, %struct.window_pane* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.client*, align 8
  %6 = alloca %struct.window*, align 8
  %7 = alloca %struct.window_pane*, align 8
  %8 = alloca %struct.grid_cell, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.format_tree*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.screen_write_ctx, align 4
  %15 = alloca %struct.screen, align 4
  store %struct.client* %0, %struct.client** %5, align 8
  store %struct.window* %1, %struct.window** %6, align 8
  store %struct.window_pane* %2, %struct.window_pane** %7, align 8
  %16 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %17 = load %struct.window*, %struct.window** %6, align 8
  %18 = getelementptr inbounds %struct.window, %struct.window* %17, i32 0, i32 1
  %19 = load %struct.window_pane*, %struct.window_pane** %18, align 8
  %20 = icmp eq %struct.window_pane* %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.window*, %struct.window** %6, align 8
  %23 = getelementptr inbounds %struct.window, %struct.window* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @style_apply(%struct.grid_cell* %8, i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.window*, %struct.window** %6, align 8
  %28 = getelementptr inbounds %struct.window, %struct.window* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @style_apply(%struct.grid_cell* %8, i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.window*, %struct.window** %6, align 8
  %33 = getelementptr inbounds %struct.window, %struct.window* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @options_get_string(i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i8* %35, i8** %9, align 8
  %36 = load %struct.client*, %struct.client** %5, align 8
  %37 = load i32, i32* @FORMAT_PANE, align 4
  %38 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %39 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %37, %40
  %42 = load i32, i32* @FORMAT_STATUS, align 4
  %43 = call %struct.format_tree* @format_create(%struct.client* %36, i32* null, i32 %41, i32 %42)
  store %struct.format_tree* %43, %struct.format_tree** %10, align 8
  %44 = load %struct.format_tree*, %struct.format_tree** %10, align 8
  %45 = load %struct.client*, %struct.client** %5, align 8
  %46 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %47 = call i32 @format_defaults(%struct.format_tree* %44, %struct.client* %45, i32* null, i32* null, %struct.window_pane* %46)
  %48 = load %struct.format_tree*, %struct.format_tree** %10, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i8* @format_expand_time(%struct.format_tree* %48, i8* %49)
  store i8* %50, i8** %11, align 8
  %51 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %52 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %58

55:                                               ; preds = %31
  store i8* null, i8** %12, align 8
  %56 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %57 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %56, i32 0, i32 3
  store i8* null, i8** %57, align 8
  br label %67

58:                                               ; preds = %31
  %59 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %60 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %12, align 8
  %65 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %66 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %58, %55
  %68 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %69 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %68, i32 0, i32 2
  %70 = call i32 @memcpy(%struct.screen* %15, %struct.TYPE_4__* %69, i32 4)
  %71 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %72 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %71, i32 0, i32 2
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @screen_init(%struct.TYPE_4__* %72, i8* %73, i32 1, i32 0)
  %75 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %76 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %79 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %78, i32 0, i32 2
  %80 = call i32 @screen_write_start(%struct.screen_write_ctx* %14, i32* null, %struct.TYPE_4__* %79)
  %81 = load i32, i32* @GRID_ATTR_CHARSET, align 4
  %82 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 4
  store i8* null, i8** %13, align 8
  br label %85

85:                                               ; preds = %91, %67
  %86 = load i8*, i8** %13, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = icmp ult i8* %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = call i32 @screen_write_putc(%struct.screen_write_ctx* %14, %struct.grid_cell* %8, i8 signext 113)
  br label %91

91:                                               ; preds = %89
  %92 = load i8*, i8** %13, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %13, align 8
  br label %85

94:                                               ; preds = %85
  %95 = load i32, i32* @GRID_ATTR_CHARSET, align 4
  %96 = xor i32 %95, -1
  %97 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %96
  store i32 %99, i32* %97, align 4
  %100 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %14, i32 0, i32 0, i32 0)
  %101 = load i8*, i8** %12, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 @format_draw(%struct.screen_write_ctx* %14, %struct.grid_cell* %8, i8* %101, i8* %102, i32* null)
  %104 = call i32 @screen_write_stop(%struct.screen_write_ctx* %14)
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load %struct.format_tree*, %struct.format_tree** %10, align 8
  %108 = call i32 @format_free(%struct.format_tree* %107)
  %109 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %110 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.screen, %struct.screen* %15, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @grid_compare(i32 %112, i32 %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %94
  %118 = call i32 @screen_free(%struct.screen* %15)
  store i32 0, i32* %4, align 4
  br label %121

119:                                              ; preds = %94
  %120 = call i32 @screen_free(%struct.screen* %15)
  store i32 1, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @style_apply(%struct.grid_cell*, i32, i8*) #1

declare dso_local i8* @options_get_string(i32, i8*) #1

declare dso_local %struct.format_tree* @format_create(%struct.client*, i32*, i32, i32) #1

declare dso_local i32 @format_defaults(%struct.format_tree*, %struct.client*, i32*, i32*, %struct.window_pane*) #1

declare dso_local i8* @format_expand_time(%struct.format_tree*, i8*) #1

declare dso_local i32 @memcpy(%struct.screen*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @screen_init(%struct.TYPE_4__*, i8*, i32, i32) #1

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @screen_write_putc(%struct.screen_write_ctx*, %struct.grid_cell*, i8 signext) #1

declare dso_local i32 @screen_write_cursormove(%struct.screen_write_ctx*, i32, i32, i32) #1

declare dso_local i32 @format_draw(%struct.screen_write_ctx*, %struct.grid_cell*, i8*, i8*, i32*) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @format_free(%struct.format_tree*) #1

declare dso_local i64 @grid_compare(i32, i32) #1

declare dso_local i32 @screen_free(%struct.screen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
