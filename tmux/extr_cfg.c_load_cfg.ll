; ModuleID = '/home/carl/AnghaBench/tmux/extr_cfg.c_load_cfg.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cfg.c_load_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }
%struct.cmdq_item = type { i32 }
%struct.cmd_parse_input = type { i32, i8*, i32, %struct.client*, %struct.cmdq_item* }
%struct.cmd_parse_result = type { i64, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"loading %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@CMD_PARSE_QUIET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@CMD_PARSE_EMPTY = common dso_local global i64 0, align 8
@CMD_PARSE_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CMD_PARSE_PARSEONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_cfg(i8* %0, %struct.client* %1, %struct.cmdq_item* %2, i32 %3, %struct.cmdq_item** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.client*, align 8
  %9 = alloca %struct.cmdq_item*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cmdq_item**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.cmd_parse_input, align 8
  %14 = alloca %struct.cmd_parse_result*, align 8
  %15 = alloca %struct.cmdq_item*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.client* %1, %struct.client** %8, align 8
  store %struct.cmdq_item* %2, %struct.cmdq_item** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.cmdq_item** %4, %struct.cmdq_item*** %11, align 8
  %16 = load %struct.cmdq_item**, %struct.cmdq_item*** %11, align 8
  %17 = icmp ne %struct.cmdq_item** %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load %struct.cmdq_item**, %struct.cmdq_item*** %11, align 8
  store %struct.cmdq_item* null, %struct.cmdq_item** %19, align 8
  br label %20

20:                                               ; preds = %18, %5
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @log_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i8*, i8** %7, align 8
  %24 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %12, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @ENOENT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @CMD_PARSE_QUIET, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %114

36:                                               ; preds = %30, %26
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* @errno, align 8
  %39 = call i32 @strerror(i64 %38)
  %40 = call i32 (i8*, i8*, ...) @cfg_add_cause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %39)
  store i32 -1, i32* %6, align 4
  br label %114

41:                                               ; preds = %20
  %42 = call i32 @memset(%struct.cmd_parse_input* %13, i32 0, i32 40)
  %43 = load i32, i32* %10, align 4
  %44 = getelementptr inbounds %struct.cmd_parse_input, %struct.cmd_parse_input* %13, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds %struct.cmd_parse_input, %struct.cmd_parse_input* %13, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.cmd_parse_input, %struct.cmd_parse_input* %13, i32 0, i32 2
  store i32 1, i32* %47, align 8
  %48 = load %struct.cmdq_item*, %struct.cmdq_item** %9, align 8
  %49 = getelementptr inbounds %struct.cmd_parse_input, %struct.cmd_parse_input* %13, i32 0, i32 4
  store %struct.cmdq_item* %48, %struct.cmdq_item** %49, align 8
  %50 = load %struct.client*, %struct.client** %8, align 8
  %51 = getelementptr inbounds %struct.cmd_parse_input, %struct.cmd_parse_input* %13, i32 0, i32 3
  store %struct.client* %50, %struct.client** %51, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = call %struct.cmd_parse_result* @cmd_parse_from_file(i32* %52, %struct.cmd_parse_input* %13)
  store %struct.cmd_parse_result* %53, %struct.cmd_parse_result** %14, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @fclose(i32* %54)
  %56 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %14, align 8
  %57 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CMD_PARSE_EMPTY, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %114

62:                                               ; preds = %41
  %63 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %14, align 8
  %64 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CMD_PARSE_ERROR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %14, align 8
  %70 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 (i8*, i8*, ...) @cfg_add_cause(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %14, align 8
  %76 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @free(i32 %77)
  store i32 -1, i32* %6, align 4
  br label %114

79:                                               ; preds = %62
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @CMD_PARSE_PARSEONLY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %14, align 8
  %86 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @cmd_list_free(i32 %87)
  store i32 0, i32* %6, align 4
  br label %114

89:                                               ; preds = %79
  %90 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %14, align 8
  %91 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.cmdq_item* @cmdq_get_command(i32 %92, i32* null, i32* null, i32 0)
  store %struct.cmdq_item* %93, %struct.cmdq_item** %15, align 8
  %94 = load %struct.cmdq_item*, %struct.cmdq_item** %9, align 8
  %95 = icmp ne %struct.cmdq_item* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.cmdq_item*, %struct.cmdq_item** %9, align 8
  %98 = load %struct.cmdq_item*, %struct.cmdq_item** %15, align 8
  %99 = call i32 @cmdq_insert_after(%struct.cmdq_item* %97, %struct.cmdq_item* %98)
  br label %103

100:                                              ; preds = %89
  %101 = load %struct.cmdq_item*, %struct.cmdq_item** %15, align 8
  %102 = call i32 @cmdq_append(i32* null, %struct.cmdq_item* %101)
  br label %103

103:                                              ; preds = %100, %96
  %104 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %14, align 8
  %105 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @cmd_list_free(i32 %106)
  %108 = load %struct.cmdq_item**, %struct.cmdq_item*** %11, align 8
  %109 = icmp ne %struct.cmdq_item** %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load %struct.cmdq_item*, %struct.cmdq_item** %15, align 8
  %112 = load %struct.cmdq_item**, %struct.cmdq_item*** %11, align 8
  store %struct.cmdq_item* %111, %struct.cmdq_item** %112, align 8
  br label %113

113:                                              ; preds = %110, %103
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %84, %68, %61, %36, %35
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @log_debug(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @cfg_add_cause(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @memset(%struct.cmd_parse_input*, i32, i32) #1

declare dso_local %struct.cmd_parse_result* @cmd_parse_from_file(i32*, %struct.cmd_parse_input*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @cmd_list_free(i32) #1

declare dso_local %struct.cmdq_item* @cmdq_get_command(i32, i32*, i32*, i32) #1

declare dso_local i32 @cmdq_insert_after(%struct.cmdq_item*, %struct.cmdq_item*) #1

declare dso_local i32 @cmdq_append(i32*, %struct.cmdq_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
