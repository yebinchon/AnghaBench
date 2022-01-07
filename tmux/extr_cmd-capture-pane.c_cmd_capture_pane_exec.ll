; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-capture-pane.c_cmd_capture_pane_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-capture-pane.c_cmd_capture_pane_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32*, %struct.args* }
%struct.args = type { i32 }
%struct.cmdq_item = type { %struct.client*, %struct.TYPE_3__ }
%struct.client = type { i32, i32, i32* }
%struct.TYPE_3__ = type { %struct.window_pane* }
%struct.window_pane = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@cmd_clear_history_entry = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@CLIENT_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"can't write to stdout\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_capture_pane_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_capture_pane_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.client*, align 8
  %8 = alloca %struct.window_pane*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %13 = load %struct.cmd*, %struct.cmd** %4, align 8
  %14 = getelementptr inbounds %struct.cmd, %struct.cmd* %13, i32 0, i32 1
  %15 = load %struct.args*, %struct.args** %14, align 8
  store %struct.args* %15, %struct.args** %6, align 8
  %16 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %17 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.window_pane*, %struct.window_pane** %18, align 8
  store %struct.window_pane* %19, %struct.window_pane** %8, align 8
  %20 = load %struct.cmd*, %struct.cmd** %4, align 8
  %21 = getelementptr inbounds %struct.cmd, %struct.cmd* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, @cmd_clear_history_entry
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %26 = call i32 @window_pane_reset_mode_all(%struct.window_pane* %25)
  %27 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %28 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @grid_clear_history(i32 %30)
  %32 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %32, i32* %3, align 4
  br label %128

33:                                               ; preds = %2
  store i64 0, i64* %12, align 8
  %34 = load %struct.args*, %struct.args** %6, align 8
  %35 = call i64 @args_has(%struct.args* %34, i8 signext 80)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.args*, %struct.args** %6, align 8
  %39 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %40 = call i8* @cmd_capture_pane_pending(%struct.args* %38, %struct.window_pane* %39, i64* %12)
  store i8* %40, i8** %9, align 8
  br label %46

41:                                               ; preds = %33
  %42 = load %struct.args*, %struct.args** %6, align 8
  %43 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %44 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %45 = call i8* @cmd_capture_pane_history(%struct.args* %42, %struct.cmdq_item* %43, %struct.window_pane* %44, i64* %12)
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i8*, i8** %9, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %50, i32* %3, align 4
  br label %128

51:                                               ; preds = %46
  %52 = load %struct.args*, %struct.args** %6, align 8
  %53 = call i64 @args_has(%struct.args* %52, i8 signext 112)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %103

55:                                               ; preds = %51
  %56 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %57 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %56, i32 0, i32 0
  %58 = load %struct.client*, %struct.client** %57, align 8
  store %struct.client* %58, %struct.client** %7, align 8
  %59 = load %struct.client*, %struct.client** %7, align 8
  %60 = icmp eq %struct.client* %59, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %55
  %62 = load %struct.client*, %struct.client** %7, align 8
  %63 = getelementptr inbounds %struct.client, %struct.client* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.client*, %struct.client** %7, align 8
  %68 = getelementptr inbounds %struct.client, %struct.client* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @CLIENT_CONTROL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %66, %55
  %74 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %75 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %78, i32* %3, align 4
  br label %128

79:                                               ; preds = %66, %61
  %80 = load %struct.client*, %struct.client** %7, align 8
  %81 = getelementptr inbounds %struct.client, %struct.client* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %9, align 8
  %84 = load i64, i64* %12, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @evbuffer_add(i32 %82, i8* %83, i32 %85)
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load %struct.args*, %struct.args** %6, align 8
  %90 = call i64 @args_has(%struct.args* %89, i8 signext 80)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %79
  %93 = load i64, i64* %12, align 8
  %94 = icmp ugt i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load %struct.client*, %struct.client** %7, align 8
  %97 = getelementptr inbounds %struct.client, %struct.client* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @evbuffer_add(i32 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %100

100:                                              ; preds = %95, %92, %79
  %101 = load %struct.client*, %struct.client** %7, align 8
  %102 = call i32 @server_client_push_stdout(%struct.client* %101)
  br label %126

103:                                              ; preds = %51
  store i8* null, i8** %11, align 8
  %104 = load %struct.args*, %struct.args** %6, align 8
  %105 = call i64 @args_has(%struct.args* %104, i8 signext 98)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load %struct.args*, %struct.args** %6, align 8
  %109 = call i8* @args_get(%struct.args* %108, i8 signext 98)
  store i8* %109, i8** %11, align 8
  br label %110

110:                                              ; preds = %107, %103
  %111 = load i8*, i8** %9, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = call i64 @paste_set(i8* %111, i64 %112, i8* %113, i8** %10)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %118)
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @free(i8* %120)
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %124, i32* %3, align 4
  br label %128

125:                                              ; preds = %110
  br label %126

126:                                              ; preds = %125, %100
  %127 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %116, %73, %49, %24
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @window_pane_reset_mode_all(%struct.window_pane*) #1

declare dso_local i32 @grid_clear_history(i32) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i8* @cmd_capture_pane_pending(%struct.args*, %struct.window_pane*, i64*) #1

declare dso_local i8* @cmd_capture_pane_history(%struct.args*, %struct.cmdq_item*, %struct.window_pane*, i64*) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @evbuffer_add(i32, i8*, i32) #1

declare dso_local i32 @server_client_push_stdout(%struct.client*) #1

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local i64 @paste_set(i8*, i64, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
