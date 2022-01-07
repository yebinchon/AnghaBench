; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-resize-window.c_cmd_resize_window_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-resize-window.c_cmd_resize_window_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i64, i32* }
%struct.cmdq_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.session*, %struct.winlink* }
%struct.session = type { i32 }
%struct.winlink = type { %struct.window* }
%struct.window = type { i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"adjustment %s\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@WINDOW_MINIMUM = common dso_local global i32 0, align 4
@WINDOW_MAXIMUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"width %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"height %s\00", align 1
@WINDOW_SIZE_LARGEST = common dso_local global i32 0, align 4
@WINDOW_SIZE_SMALLEST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"window-size\00", align 1
@WINDOW_SIZE_MANUAL = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_resize_window_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_resize_window_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.winlink*, align 8
  %8 = alloca %struct.window*, align 8
  %9 = alloca %struct.session*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %15 = load %struct.cmd*, %struct.cmd** %4, align 8
  %16 = getelementptr inbounds %struct.cmd, %struct.cmd* %15, i32 0, i32 0
  %17 = load %struct.args*, %struct.args** %16, align 8
  store %struct.args* %17, %struct.args** %6, align 8
  %18 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %19 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.winlink*, %struct.winlink** %20, align 8
  store %struct.winlink* %21, %struct.winlink** %7, align 8
  %22 = load %struct.winlink*, %struct.winlink** %7, align 8
  %23 = getelementptr inbounds %struct.winlink, %struct.winlink* %22, i32 0, i32 0
  %24 = load %struct.window*, %struct.window** %23, align 8
  store %struct.window* %24, %struct.window** %8, align 8
  %25 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %26 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.session*, %struct.session** %27, align 8
  store %struct.session* %28, %struct.session** %9, align 8
  %29 = load %struct.args*, %struct.args** %6, align 8
  %30 = getelementptr inbounds %struct.args, %struct.args* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 1, i32* %12, align 4
  br label %50

34:                                               ; preds = %2
  %35 = load %struct.args*, %struct.args** %6, align 8
  %36 = getelementptr inbounds %struct.args, %struct.args* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @INT_MAX, align 4
  %41 = call i32 @strtonum(i32 %39, i32 1, i32 %40, i8** %10)
  store i32 %41, i32* %12, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @cmdq_error(%struct.cmdq_item* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %48, i32* %3, align 4
  br label %169

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %33
  %51 = load %struct.window*, %struct.window** %8, align 8
  %52 = getelementptr inbounds %struct.window, %struct.window* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %13, align 4
  %54 = load %struct.window*, %struct.window** %8, align 8
  %55 = getelementptr inbounds %struct.window, %struct.window* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %14, align 4
  %57 = load %struct.args*, %struct.args** %6, align 8
  %58 = call i64 @args_has(%struct.args* %57, i8 signext 120)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %50
  %61 = load %struct.args*, %struct.args** %6, align 8
  %62 = load i32, i32* @WINDOW_MINIMUM, align 4
  %63 = load i32, i32* @WINDOW_MAXIMUM, align 4
  %64 = call i32 @args_strtonum(%struct.args* %61, i8 signext 120, i32 %62, i32 %63, i8** %11)
  store i32 %64, i32* %13, align 4
  %65 = load i8*, i8** %11, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @cmdq_error(%struct.cmdq_item* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %73, i32* %3, align 4
  br label %169

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %50
  %76 = load %struct.args*, %struct.args** %6, align 8
  %77 = call i64 @args_has(%struct.args* %76, i8 signext 121)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load %struct.args*, %struct.args** %6, align 8
  %81 = load i32, i32* @WINDOW_MINIMUM, align 4
  %82 = load i32, i32* @WINDOW_MAXIMUM, align 4
  %83 = call i32 @args_strtonum(%struct.args* %80, i8 signext 121, i32 %81, i32 %82, i8** %11)
  store i32 %83, i32* %14, align 4
  %84 = load i8*, i8** %11, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @cmdq_error(%struct.cmdq_item* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %88)
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %92, i32* %3, align 4
  br label %169

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %75
  %95 = load %struct.args*, %struct.args** %6, align 8
  %96 = call i64 @args_has(%struct.args* %95, i8 signext 76)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %13, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %102, %98
  br label %139

107:                                              ; preds = %94
  %108 = load %struct.args*, %struct.args** %6, align 8
  %109 = call i64 @args_has(%struct.args* %108, i8 signext 82)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %13, align 4
  br label %138

115:                                              ; preds = %107
  %116 = load %struct.args*, %struct.args** %6, align 8
  %117 = call i64 @args_has(%struct.args* %116, i8 signext 85)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %14, align 4
  %126 = sub nsw i32 %125, %124
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %123, %119
  br label %137

128:                                              ; preds = %115
  %129 = load %struct.args*, %struct.args** %6, align 8
  %130 = call i64 @args_has(%struct.args* %129, i8 signext 68)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %132, %128
  br label %137

137:                                              ; preds = %136, %127
  br label %138

138:                                              ; preds = %137, %111
  br label %139

139:                                              ; preds = %138, %106
  %140 = load %struct.args*, %struct.args** %6, align 8
  %141 = call i64 @args_has(%struct.args* %140, i8 signext 65)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load %struct.session*, %struct.session** %9, align 8
  %145 = load %struct.window*, %struct.window** %8, align 8
  %146 = load i32, i32* @WINDOW_SIZE_LARGEST, align 4
  %147 = call i32 @default_window_size(i32* null, %struct.session* %144, %struct.window* %145, i32* %13, i32* %14, i32 %146)
  br label %158

148:                                              ; preds = %139
  %149 = load %struct.args*, %struct.args** %6, align 8
  %150 = call i64 @args_has(%struct.args* %149, i8 signext 97)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load %struct.session*, %struct.session** %9, align 8
  %154 = load %struct.window*, %struct.window** %8, align 8
  %155 = load i32, i32* @WINDOW_SIZE_SMALLEST, align 4
  %156 = call i32 @default_window_size(i32* null, %struct.session* %153, %struct.window* %154, i32* %13, i32* %14, i32 %155)
  br label %157

157:                                              ; preds = %152, %148
  br label %158

158:                                              ; preds = %157, %143
  %159 = load %struct.window*, %struct.window** %8, align 8
  %160 = getelementptr inbounds %struct.window, %struct.window* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @WINDOW_SIZE_MANUAL, align 4
  %163 = call i32 @options_set_number(i32 %161, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %162)
  %164 = load %struct.window*, %struct.window** %8, align 8
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @resize_window(%struct.window* %164, i32 %165, i32 %166)
  %168 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %158, %86, %67, %44
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @strtonum(i32, i32, i32, i8**) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i32 @args_strtonum(%struct.args*, i8 signext, i32, i32, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @default_window_size(i32*, %struct.session*, %struct.window*, i32*, i32*, i32) #1

declare dso_local i32 @options_set_number(i32, i8*, i32) #1

declare dso_local i32 @resize_window(%struct.window*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
