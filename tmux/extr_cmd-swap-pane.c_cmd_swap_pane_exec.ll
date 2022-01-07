; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-swap-pane.c_cmd_swap_pane_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-swap-pane.c_cmd_swap_pane_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i32 }
%struct.cmdq_item = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.window_pane*, %struct.TYPE_7__* }
%struct.window_pane = type { i8*, i8*, i8*, i8*, i32, i32, %struct.window*, %struct.layout_cell* }
%struct.window = type { %struct.window_pane*, %struct.window_pane*, i32, i32 }
%struct.layout_cell = type { %struct.window_pane* }
%struct.TYPE_7__ = type { %struct.window* }
%struct.TYPE_6__ = type { %struct.window_pane*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.window* }

@entry = common dso_local global i32 0, align 4
@window_panes = common dso_local global i32 0, align 4
@PANE_STYLECHANGED = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_swap_pane_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_swap_pane_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca %struct.cmd*, align 8
  %4 = alloca %struct.cmdq_item*, align 8
  %5 = alloca %struct.args*, align 8
  %6 = alloca %struct.window*, align 8
  %7 = alloca %struct.window*, align 8
  %8 = alloca %struct.window_pane*, align 8
  %9 = alloca %struct.window_pane*, align 8
  %10 = alloca %struct.window_pane*, align 8
  %11 = alloca %struct.layout_cell*, align 8
  %12 = alloca %struct.layout_cell*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.cmd* %0, %struct.cmd** %3, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %4, align 8
  %17 = load %struct.cmd*, %struct.cmd** %3, align 8
  %18 = getelementptr inbounds %struct.cmd, %struct.cmd* %17, i32 0, i32 0
  %19 = load %struct.args*, %struct.args** %18, align 8
  store %struct.args* %19, %struct.args** %5, align 8
  %20 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %21 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.window*, %struct.window** %24, align 8
  store %struct.window* %25, %struct.window** %7, align 8
  %26 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %27 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.window_pane*, %struct.window_pane** %28, align 8
  store %struct.window_pane* %29, %struct.window_pane** %10, align 8
  %30 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %31 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.window*, %struct.window** %34, align 8
  store %struct.window* %35, %struct.window** %6, align 8
  %36 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %37 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.window_pane*, %struct.window_pane** %38, align 8
  store %struct.window_pane* %39, %struct.window_pane** %9, align 8
  %40 = load %struct.window*, %struct.window** %7, align 8
  %41 = load %struct.args*, %struct.args** %5, align 8
  %42 = call i64 @args_has(%struct.args* %41, i8 signext 90)
  %43 = call i64 @window_push_zoom(%struct.window* %40, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %2
  %46 = load %struct.window*, %struct.window** %7, align 8
  %47 = call i32 @server_redraw_window(%struct.window* %46)
  br label %48

48:                                               ; preds = %45, %2
  %49 = load %struct.args*, %struct.args** %5, align 8
  %50 = call i64 @args_has(%struct.args* %49, i8 signext 68)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.window*, %struct.window** %7, align 8
  store %struct.window* %53, %struct.window** %6, align 8
  %54 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %55 = load i32, i32* @entry, align 4
  %56 = call %struct.window_pane* @TAILQ_NEXT(%struct.window_pane* %54, i32 %55)
  store %struct.window_pane* %56, %struct.window_pane** %9, align 8
  %57 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %58 = icmp eq %struct.window_pane* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.window*, %struct.window** %7, align 8
  %61 = getelementptr inbounds %struct.window, %struct.window* %60, i32 0, i32 3
  %62 = call %struct.window_pane* @TAILQ_FIRST(i32* %61)
  store %struct.window_pane* %62, %struct.window_pane** %9, align 8
  br label %63

63:                                               ; preds = %59, %52
  br label %83

64:                                               ; preds = %48
  %65 = load %struct.args*, %struct.args** %5, align 8
  %66 = call i64 @args_has(%struct.args* %65, i8 signext 85)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load %struct.window*, %struct.window** %7, align 8
  store %struct.window* %69, %struct.window** %6, align 8
  %70 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %71 = load i32, i32* @window_panes, align 4
  %72 = load i32, i32* @entry, align 4
  %73 = call %struct.window_pane* @TAILQ_PREV(%struct.window_pane* %70, i32 %71, i32 %72)
  store %struct.window_pane* %73, %struct.window_pane** %9, align 8
  %74 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %75 = icmp eq %struct.window_pane* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load %struct.window*, %struct.window** %7, align 8
  %78 = getelementptr inbounds %struct.window, %struct.window* %77, i32 0, i32 3
  %79 = load i32, i32* @window_panes, align 4
  %80 = call %struct.window_pane* @TAILQ_LAST(i32* %78, i32 %79)
  store %struct.window_pane* %80, %struct.window_pane** %9, align 8
  br label %81

81:                                               ; preds = %76, %68
  br label %82

82:                                               ; preds = %81, %64
  br label %83

83:                                               ; preds = %82, %63
  %84 = load %struct.window*, %struct.window** %6, align 8
  %85 = load %struct.window*, %struct.window** %7, align 8
  %86 = icmp ne %struct.window* %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load %struct.window*, %struct.window** %6, align 8
  %89 = load %struct.args*, %struct.args** %5, align 8
  %90 = call i64 @args_has(%struct.args* %89, i8 signext 90)
  %91 = call i64 @window_push_zoom(%struct.window* %88, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.window*, %struct.window** %6, align 8
  %95 = call i32 @server_redraw_window(%struct.window* %94)
  br label %96

96:                                               ; preds = %93, %87, %83
  %97 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %98 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %99 = icmp eq %struct.window_pane* %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %296

101:                                              ; preds = %96
  %102 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %103 = load i32, i32* @window_panes, align 4
  %104 = load i32, i32* @entry, align 4
  %105 = call %struct.window_pane* @TAILQ_PREV(%struct.window_pane* %102, i32 %103, i32 %104)
  store %struct.window_pane* %105, %struct.window_pane** %8, align 8
  %106 = load %struct.window*, %struct.window** %7, align 8
  %107 = getelementptr inbounds %struct.window, %struct.window* %106, i32 0, i32 3
  %108 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %109 = load i32, i32* @entry, align 4
  %110 = call i32 @TAILQ_REMOVE(i32* %107, %struct.window_pane* %108, i32 %109)
  %111 = load %struct.window*, %struct.window** %6, align 8
  %112 = getelementptr inbounds %struct.window, %struct.window* %111, i32 0, i32 3
  %113 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %114 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %115 = load i32, i32* @entry, align 4
  %116 = call i32 @TAILQ_REPLACE(i32* %112, %struct.window_pane* %113, %struct.window_pane* %114, i32 %115)
  %117 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %118 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %119 = icmp eq %struct.window_pane* %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %101
  %121 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  store %struct.window_pane* %121, %struct.window_pane** %8, align 8
  br label %122

122:                                              ; preds = %120, %101
  %123 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %124 = icmp eq %struct.window_pane* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load %struct.window*, %struct.window** %7, align 8
  %127 = getelementptr inbounds %struct.window, %struct.window* %126, i32 0, i32 3
  %128 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %129 = load i32, i32* @entry, align 4
  %130 = call i32 @TAILQ_INSERT_HEAD(i32* %127, %struct.window_pane* %128, i32 %129)
  br label %138

131:                                              ; preds = %122
  %132 = load %struct.window*, %struct.window** %7, align 8
  %133 = getelementptr inbounds %struct.window, %struct.window* %132, i32 0, i32 3
  %134 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %135 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %136 = load i32, i32* @entry, align 4
  %137 = call i32 @TAILQ_INSERT_AFTER(i32* %133, %struct.window_pane* %134, %struct.window_pane* %135, i32 %136)
  br label %138

138:                                              ; preds = %131, %125
  %139 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %140 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %139, i32 0, i32 7
  %141 = load %struct.layout_cell*, %struct.layout_cell** %140, align 8
  store %struct.layout_cell* %141, %struct.layout_cell** %11, align 8
  %142 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %143 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %142, i32 0, i32 7
  %144 = load %struct.layout_cell*, %struct.layout_cell** %143, align 8
  store %struct.layout_cell* %144, %struct.layout_cell** %12, align 8
  %145 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %146 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %147 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %146, i32 0, i32 0
  store %struct.window_pane* %145, %struct.window_pane** %147, align 8
  %148 = load %struct.layout_cell*, %struct.layout_cell** %11, align 8
  %149 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %150 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %149, i32 0, i32 7
  store %struct.layout_cell* %148, %struct.layout_cell** %150, align 8
  %151 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %152 = load %struct.layout_cell*, %struct.layout_cell** %12, align 8
  %153 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %152, i32 0, i32 0
  store %struct.window_pane* %151, %struct.window_pane** %153, align 8
  %154 = load %struct.layout_cell*, %struct.layout_cell** %12, align 8
  %155 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %156 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %155, i32 0, i32 7
  store %struct.layout_cell* %154, %struct.layout_cell** %156, align 8
  %157 = load %struct.window*, %struct.window** %7, align 8
  %158 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %159 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %158, i32 0, i32 6
  store %struct.window* %157, %struct.window** %159, align 8
  %160 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %161 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.window*, %struct.window** %7, align 8
  %164 = getelementptr inbounds %struct.window, %struct.window* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @options_set_parent(i32 %162, i32 %165)
  %167 = load i32, i32* @PANE_STYLECHANGED, align 4
  %168 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %169 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load %struct.window*, %struct.window** %6, align 8
  %173 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %174 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %173, i32 0, i32 6
  store %struct.window* %172, %struct.window** %174, align 8
  %175 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %176 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.window*, %struct.window** %6, align 8
  %179 = getelementptr inbounds %struct.window, %struct.window* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @options_set_parent(i32 %177, i32 %180)
  %182 = load i32, i32* @PANE_STYLECHANGED, align 4
  %183 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %184 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  %187 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %188 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  store i8* %189, i8** %13, align 8
  %190 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %191 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  store i8* %192, i8** %14, align 8
  %193 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %194 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %193, i32 0, i32 3
  %195 = load i8*, i8** %194, align 8
  store i8* %195, i8** %15, align 8
  %196 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %197 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %196, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  store i8* %198, i8** %16, align 8
  %199 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %200 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %199, i32 0, i32 3
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %203 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %202, i32 0, i32 3
  store i8* %201, i8** %203, align 8
  %204 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %205 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %208 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %207, i32 0, i32 2
  store i8* %206, i8** %208, align 8
  %209 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %210 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %211 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %214 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @window_pane_resize(%struct.window_pane* %209, i8* %212, i8* %215)
  %217 = load i8*, i8** %15, align 8
  %218 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %219 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %218, i32 0, i32 3
  store i8* %217, i8** %219, align 8
  %220 = load i8*, i8** %16, align 8
  %221 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %222 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %221, i32 0, i32 2
  store i8* %220, i8** %222, align 8
  %223 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %224 = load i8*, i8** %13, align 8
  %225 = load i8*, i8** %14, align 8
  %226 = call i32 @window_pane_resize(%struct.window_pane* %223, i8* %224, i8* %225)
  %227 = load %struct.args*, %struct.args** %5, align 8
  %228 = call i64 @args_has(%struct.args* %227, i8 signext 100)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %247, label %230

230:                                              ; preds = %138
  %231 = load %struct.window*, %struct.window** %6, align 8
  %232 = load %struct.window*, %struct.window** %7, align 8
  %233 = icmp ne %struct.window* %231, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %230
  %235 = load %struct.window*, %struct.window** %6, align 8
  %236 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %237 = call i32 @window_set_active_pane(%struct.window* %235, %struct.window_pane* %236, i32 1)
  %238 = load %struct.window*, %struct.window** %7, align 8
  %239 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %240 = call i32 @window_set_active_pane(%struct.window* %238, %struct.window_pane* %239, i32 1)
  br label %246

241:                                              ; preds = %230
  %242 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  store %struct.window_pane* %242, %struct.window_pane** %8, align 8
  %243 = load %struct.window*, %struct.window** %6, align 8
  %244 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %245 = call i32 @window_set_active_pane(%struct.window* %243, %struct.window_pane* %244, i32 1)
  br label %246

246:                                              ; preds = %241, %234
  br label %268

247:                                              ; preds = %138
  %248 = load %struct.window*, %struct.window** %6, align 8
  %249 = getelementptr inbounds %struct.window, %struct.window* %248, i32 0, i32 1
  %250 = load %struct.window_pane*, %struct.window_pane** %249, align 8
  %251 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %252 = icmp eq %struct.window_pane* %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %247
  %254 = load %struct.window*, %struct.window** %6, align 8
  %255 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %256 = call i32 @window_set_active_pane(%struct.window* %254, %struct.window_pane* %255, i32 1)
  br label %257

257:                                              ; preds = %253, %247
  %258 = load %struct.window*, %struct.window** %7, align 8
  %259 = getelementptr inbounds %struct.window, %struct.window* %258, i32 0, i32 1
  %260 = load %struct.window_pane*, %struct.window_pane** %259, align 8
  %261 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %262 = icmp eq %struct.window_pane* %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %257
  %264 = load %struct.window*, %struct.window** %7, align 8
  %265 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %266 = call i32 @window_set_active_pane(%struct.window* %264, %struct.window_pane* %265, i32 1)
  br label %267

267:                                              ; preds = %263, %257
  br label %268

268:                                              ; preds = %267, %246
  %269 = load %struct.window*, %struct.window** %6, align 8
  %270 = load %struct.window*, %struct.window** %7, align 8
  %271 = icmp ne %struct.window* %269, %270
  br i1 %271, label %272, label %291

272:                                              ; preds = %268
  %273 = load %struct.window*, %struct.window** %6, align 8
  %274 = getelementptr inbounds %struct.window, %struct.window* %273, i32 0, i32 0
  %275 = load %struct.window_pane*, %struct.window_pane** %274, align 8
  %276 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %277 = icmp eq %struct.window_pane* %275, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %272
  %279 = load %struct.window*, %struct.window** %6, align 8
  %280 = getelementptr inbounds %struct.window, %struct.window* %279, i32 0, i32 0
  store %struct.window_pane* null, %struct.window_pane** %280, align 8
  br label %281

281:                                              ; preds = %278, %272
  %282 = load %struct.window*, %struct.window** %7, align 8
  %283 = getelementptr inbounds %struct.window, %struct.window* %282, i32 0, i32 0
  %284 = load %struct.window_pane*, %struct.window_pane** %283, align 8
  %285 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  %286 = icmp eq %struct.window_pane* %284, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %281
  %288 = load %struct.window*, %struct.window** %7, align 8
  %289 = getelementptr inbounds %struct.window, %struct.window* %288, i32 0, i32 0
  store %struct.window_pane* null, %struct.window_pane** %289, align 8
  br label %290

290:                                              ; preds = %287, %281
  br label %291

291:                                              ; preds = %290, %268
  %292 = load %struct.window*, %struct.window** %6, align 8
  %293 = call i32 @server_redraw_window(%struct.window* %292)
  %294 = load %struct.window*, %struct.window** %7, align 8
  %295 = call i32 @server_redraw_window(%struct.window* %294)
  br label %296

296:                                              ; preds = %291, %100
  %297 = load %struct.window*, %struct.window** %6, align 8
  %298 = call i64 @window_pop_zoom(%struct.window* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %296
  %301 = load %struct.window*, %struct.window** %6, align 8
  %302 = call i32 @server_redraw_window(%struct.window* %301)
  br label %303

303:                                              ; preds = %300, %296
  %304 = load %struct.window*, %struct.window** %6, align 8
  %305 = load %struct.window*, %struct.window** %7, align 8
  %306 = icmp ne %struct.window* %304, %305
  br i1 %306, label %307, label %314

307:                                              ; preds = %303
  %308 = load %struct.window*, %struct.window** %7, align 8
  %309 = call i64 @window_pop_zoom(%struct.window* %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %307
  %312 = load %struct.window*, %struct.window** %7, align 8
  %313 = call i32 @server_redraw_window(%struct.window* %312)
  br label %314

314:                                              ; preds = %311, %307, %303
  %315 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  ret i32 %315
}

declare dso_local i64 @window_push_zoom(%struct.window*, i64) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i32 @server_redraw_window(%struct.window*) #1

declare dso_local %struct.window_pane* @TAILQ_NEXT(%struct.window_pane*, i32) #1

declare dso_local %struct.window_pane* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.window_pane* @TAILQ_PREV(%struct.window_pane*, i32, i32) #1

declare dso_local %struct.window_pane* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.window_pane*, i32) #1

declare dso_local i32 @TAILQ_REPLACE(i32*, %struct.window_pane*, %struct.window_pane*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.window_pane*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.window_pane*, %struct.window_pane*, i32) #1

declare dso_local i32 @options_set_parent(i32, i32) #1

declare dso_local i32 @window_pane_resize(%struct.window_pane*, i8*, i8*) #1

declare dso_local i32 @window_set_active_pane(%struct.window*, %struct.window_pane*, i32) #1

declare dso_local i64 @window_pop_zoom(%struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
