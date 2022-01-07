; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-set-buffer.c_cmd_set_buffer_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-set-buffer.c_cmd_set_buffer_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32*, %struct.args* }
%struct.args = type { i32, i8** }
%struct.cmdq_item = type { i32 }
%struct.paste_buffer = type { i32 }

@cmd_delete_buffer_entry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"no buffer\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"no data specified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_set_buffer_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_set_buffer_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.paste_buffer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %14 = load %struct.cmd*, %struct.cmd** %4, align 8
  %15 = getelementptr inbounds %struct.cmd, %struct.cmd* %14, i32 0, i32 1
  %16 = load %struct.args*, %struct.args** %15, align 8
  store %struct.args* %16, %struct.args** %6, align 8
  %17 = load %struct.args*, %struct.args** %6, align 8
  %18 = call i8* @args_get(%struct.args* %17, i8 signext 98)
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store %struct.paste_buffer* null, %struct.paste_buffer** %7, align 8
  br label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** %10, align 8
  %24 = call %struct.paste_buffer* @paste_get_name(i8* %23)
  store %struct.paste_buffer* %24, %struct.paste_buffer** %7, align 8
  br label %25

25:                                               ; preds = %22, %21
  %26 = load %struct.cmd*, %struct.cmd** %4, align 8
  %27 = getelementptr inbounds %struct.cmd, %struct.cmd* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, @cmd_delete_buffer_entry
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load %struct.paste_buffer*, %struct.paste_buffer** %7, align 8
  %32 = icmp eq %struct.paste_buffer* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call %struct.paste_buffer* @paste_get_top(i8** %10)
  store %struct.paste_buffer* %34, %struct.paste_buffer** %7, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = load %struct.paste_buffer*, %struct.paste_buffer** %7, align 8
  %37 = icmp eq %struct.paste_buffer* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %40 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %41, i32* %3, align 4
  br label %147

42:                                               ; preds = %35
  %43 = load %struct.paste_buffer*, %struct.paste_buffer** %7, align 8
  %44 = call i32 @paste_free(%struct.paste_buffer* %43)
  %45 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %45, i32* %3, align 4
  br label %147

46:                                               ; preds = %25
  %47 = load %struct.args*, %struct.args** %6, align 8
  %48 = call i64 @args_has(%struct.args* %47, i8 signext 110)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %46
  %51 = load %struct.paste_buffer*, %struct.paste_buffer** %7, align 8
  %52 = icmp eq %struct.paste_buffer* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call %struct.paste_buffer* @paste_get_top(i8** %10)
  store %struct.paste_buffer* %54, %struct.paste_buffer** %7, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = load %struct.paste_buffer*, %struct.paste_buffer** %7, align 8
  %57 = icmp eq %struct.paste_buffer* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %60 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %61, i32* %3, align 4
  br label %147

62:                                               ; preds = %55
  %63 = load i8*, i8** %10, align 8
  %64 = load %struct.args*, %struct.args** %6, align 8
  %65 = call i8* @args_get(%struct.args* %64, i8 signext 110)
  %66 = call i64 @paste_rename(i8* %63, i8* %65, i8** %9)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %74, i32* %3, align 4
  br label %147

75:                                               ; preds = %62
  %76 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %76, i32* %3, align 4
  br label %147

77:                                               ; preds = %46
  %78 = load %struct.args*, %struct.args** %6, align 8
  %79 = getelementptr inbounds %struct.args, %struct.args* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %84 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %85, i32* %3, align 4
  br label %147

86:                                               ; preds = %77
  %87 = load %struct.args*, %struct.args** %6, align 8
  %88 = getelementptr inbounds %struct.args, %struct.args* %87, i32 0, i32 1
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strlen(i8* %91)
  store i64 %92, i64* %13, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %95, i32* %3, align 4
  br label %147

96:                                               ; preds = %86
  store i64 0, i64* %12, align 8
  store i8* null, i8** %8, align 8
  %97 = load %struct.args*, %struct.args** %6, align 8
  %98 = call i64 @args_has(%struct.args* %97, i8 signext 97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %96
  %101 = load %struct.paste_buffer*, %struct.paste_buffer** %7, align 8
  %102 = icmp ne %struct.paste_buffer* %101, null
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load %struct.paste_buffer*, %struct.paste_buffer** %7, align 8
  %105 = call i8* @paste_buffer_data(%struct.paste_buffer* %104, i64* %12)
  store i8* %105, i8** %11, align 8
  %106 = load i64, i64* %12, align 8
  %107 = call i8* @xmalloc(i64 %106)
  store i8* %107, i8** %8, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = load i64, i64* %12, align 8
  %111 = call i32 @memcpy(i8* %108, i8* %109, i64 %110)
  br label %112

112:                                              ; preds = %103, %100, %96
  %113 = load i8*, i8** %8, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %13, align 8
  %116 = add i64 %114, %115
  %117 = call i8* @xrealloc(i8* %113, i64 %116)
  store i8* %117, i8** %8, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load i64, i64* %12, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load %struct.args*, %struct.args** %6, align 8
  %122 = getelementptr inbounds %struct.args, %struct.args* %121, i32 0, i32 1
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i64, i64* %13, align 8
  %127 = call i32 @memcpy(i8* %120, i8* %125, i64 %126)
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* %12, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %12, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i64, i64* %12, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = call i64 @paste_set(i8* %131, i64 %132, i8* %133, i8** %9)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %112
  %137 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %138 = load i8*, i8** %9, align 8
  %139 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %138)
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 @free(i8* %140)
  %142 = load i8*, i8** %9, align 8
  %143 = call i32 @free(i8* %142)
  %144 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %144, i32* %3, align 4
  br label %147

145:                                              ; preds = %112
  %146 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %136, %94, %82, %75, %68, %58, %42, %38
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local %struct.paste_buffer* @paste_get_name(i8*) #1

declare dso_local %struct.paste_buffer* @paste_get_top(i8**) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, ...) #1

declare dso_local i32 @paste_free(%struct.paste_buffer*) #1

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i64 @paste_rename(i8*, i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @paste_buffer_data(%struct.paste_buffer*, i64*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i64 @paste_set(i8*, i64, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
