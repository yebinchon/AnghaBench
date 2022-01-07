; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-paste-buffer.c_cmd_paste_buffer_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-paste-buffer.c_cmd_paste_buffer_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i32 }
%struct.cmdq_item = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.window_pane* }
%struct.window_pane = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.paste_buffer = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"no buffer %s\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@PANE_INPUTOFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@MODE_BRACKETPASTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"\1B[200~\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\1B[201~\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_paste_buffer_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_paste_buffer_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.window_pane*, align 8
  %8 = alloca %struct.paste_buffer*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %17 = load %struct.cmd*, %struct.cmd** %4, align 8
  %18 = getelementptr inbounds %struct.cmd, %struct.cmd* %17, i32 0, i32 0
  %19 = load %struct.args*, %struct.args** %18, align 8
  store %struct.args* %19, %struct.args** %6, align 8
  %20 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %21 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.window_pane*, %struct.window_pane** %22, align 8
  store %struct.window_pane* %23, %struct.window_pane** %7, align 8
  %24 = load %struct.args*, %struct.args** %6, align 8
  %25 = call i32 @args_has(%struct.args* %24, i8 signext 112)
  store i32 %25, i32* %16, align 4
  store i8* null, i8** %10, align 8
  %26 = load %struct.args*, %struct.args** %6, align 8
  %27 = call i32 @args_has(%struct.args* %26, i8 signext 98)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.args*, %struct.args** %6, align 8
  %31 = call i8* @args_get(%struct.args* %30, i8 signext 98)
  store i8* %31, i8** %10, align 8
  br label %32

32:                                               ; preds = %29, %2
  %33 = load i8*, i8** %10, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call %struct.paste_buffer* @paste_get_top(i32* null)
  store %struct.paste_buffer* %36, %struct.paste_buffer** %8, align 8
  br label %48

37:                                               ; preds = %32
  %38 = load i8*, i8** %10, align 8
  %39 = call %struct.paste_buffer* @paste_get_name(i8* %38)
  store %struct.paste_buffer* %39, %struct.paste_buffer** %8, align 8
  %40 = load %struct.paste_buffer*, %struct.paste_buffer** %8, align 8
  %41 = icmp eq %struct.paste_buffer* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @cmdq_error(%struct.cmdq_item* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %46, i32* %3, align 4
  br label %175

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %35
  %49 = load %struct.paste_buffer*, %struct.paste_buffer** %8, align 8
  %50 = icmp ne %struct.paste_buffer* %49, null
  br i1 %50, label %51, label %163

51:                                               ; preds = %48
  %52 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %53 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = xor i32 %54, -1
  %56 = load i32, i32* @PANE_INPUTOFF, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %163

59:                                               ; preds = %51
  %60 = load %struct.args*, %struct.args** %6, align 8
  %61 = call i8* @args_get(%struct.args* %60, i8 signext 115)
  store i8* %61, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.args*, %struct.args** %6, align 8
  %66 = call i32 @args_has(%struct.args* %65, i8 signext 114)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %70

69:                                               ; preds = %64
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %70

70:                                               ; preds = %69, %68
  br label %71

71:                                               ; preds = %70, %59
  %72 = load i8*, i8** %9, align 8
  %73 = call i64 @strlen(i8* %72)
  store i64 %73, i64* %14, align 8
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %78 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MODE_BRACKETPASTE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %87 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @bufferevent_write(i32 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  br label %90

90:                                               ; preds = %85, %76, %71
  %91 = load %struct.paste_buffer*, %struct.paste_buffer** %8, align 8
  %92 = call i8* @paste_buffer_data(%struct.paste_buffer* %91, i64* %15)
  store i8* %92, i8** %11, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load i64, i64* %15, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %12, align 8
  br label %96

96:                                               ; preds = %108, %90
  %97 = load i8*, i8** %11, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  %104 = call i8* @memchr(i8* %97, i8 signext 10, i32 %103)
  store i8* %104, i8** %13, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %129

108:                                              ; preds = %96
  %109 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %110 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %11, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  %119 = call i32 @bufferevent_write(i32 %111, i8* %112, i32 %118)
  %120 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %121 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i8*, i8** %9, align 8
  %124 = load i64, i64* %14, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @bufferevent_write(i32 %122, i8* %123, i32 %125)
  %127 = load i8*, i8** %13, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  store i8* %128, i8** %11, align 8
  br label %96

129:                                              ; preds = %107
  %130 = load i8*, i8** %11, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = icmp ne i8* %130, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %129
  %134 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %135 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i8*, i8** %11, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = trunc i64 %142 to i32
  %144 = call i32 @bufferevent_write(i32 %136, i8* %137, i32 %143)
  br label %145

145:                                              ; preds = %133, %129
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %145
  %149 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %150 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %149, i32 0, i32 2
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @MODE_BRACKETPASTE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %148
  %158 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %159 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @bufferevent_write(i32 %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  br label %162

162:                                              ; preds = %157, %148, %145
  br label %163

163:                                              ; preds = %162, %51, %48
  %164 = load %struct.paste_buffer*, %struct.paste_buffer** %8, align 8
  %165 = icmp ne %struct.paste_buffer* %164, null
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load %struct.args*, %struct.args** %6, align 8
  %168 = call i32 @args_has(%struct.args* %167, i8 signext 100)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load %struct.paste_buffer*, %struct.paste_buffer** %8, align 8
  %172 = call i32 @paste_free(%struct.paste_buffer* %171)
  br label %173

173:                                              ; preds = %170, %166, %163
  %174 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %173, %42
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @args_has(%struct.args*, i8 signext) #1

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local %struct.paste_buffer* @paste_get_top(i32*) #1

declare dso_local %struct.paste_buffer* @paste_get_name(i8*) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @bufferevent_write(i32, i8*, i32) #1

declare dso_local i8* @paste_buffer_data(%struct.paste_buffer*, i64*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @paste_free(%struct.paste_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
