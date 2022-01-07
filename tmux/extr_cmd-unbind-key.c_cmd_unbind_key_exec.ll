; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-unbind-key.c_cmd_unbind_key_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-unbind-key.c_cmd_unbind_key_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i32, i8** }
%struct.cmdq_item = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"missing key\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@KEYC_NONE = common dso_local global i64 0, align 8
@KEYC_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"unknown key: %s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"key given with -a\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"table %s doesn't exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_unbind_key_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_unbind_key_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %9 = load %struct.cmd*, %struct.cmd** %4, align 8
  %10 = getelementptr inbounds %struct.cmd, %struct.cmd* %9, i32 0, i32 0
  %11 = load %struct.args*, %struct.args** %10, align 8
  store %struct.args* %11, %struct.args** %6, align 8
  %12 = load %struct.args*, %struct.args** %6, align 8
  %13 = call i64 @args_has(%struct.args* %12, i8 signext 97)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %2
  %16 = load %struct.args*, %struct.args** %6, align 8
  %17 = getelementptr inbounds %struct.args, %struct.args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %22 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %23, i32* %3, align 4
  br label %113

24:                                               ; preds = %15
  %25 = load %struct.args*, %struct.args** %6, align 8
  %26 = getelementptr inbounds %struct.args, %struct.args* %25, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @key_string_lookup_string(i8* %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @KEYC_NONE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %24
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @KEYC_UNKNOWN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34, %24
  %39 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %40 = load %struct.args*, %struct.args** %6, align 8
  %41 = getelementptr inbounds %struct.args, %struct.args* %40, i32 0, i32 1
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %46, i32* %3, align 4
  br label %113

47:                                               ; preds = %34
  br label %59

48:                                               ; preds = %2
  %49 = load %struct.args*, %struct.args** %6, align 8
  %50 = getelementptr inbounds %struct.args, %struct.args* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %55 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %56, i32* %3, align 4
  br label %113

57:                                               ; preds = %48
  %58 = load i64, i64* @KEYC_UNKNOWN, align 8
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %57, %47
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @KEYC_UNKNOWN, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %59
  %64 = load %struct.args*, %struct.args** %6, align 8
  %65 = call i8* @args_get(%struct.args* %64, i8 signext 84)
  store i8* %65, i8** %8, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = call i32 @key_bindings_remove_table(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32 @key_bindings_remove_table(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %71, i32* %3, align 4
  br label %113

72:                                               ; preds = %63
  %73 = load i8*, i8** %8, align 8
  %74 = call i32* @key_bindings_get_table(i8* %73, i32 0)
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %80, i32* %3, align 4
  br label %113

81:                                               ; preds = %72
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @key_bindings_remove_table(i8* %82)
  %84 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %84, i32* %3, align 4
  br label %113

85:                                               ; preds = %59
  %86 = load %struct.args*, %struct.args** %6, align 8
  %87 = call i64 @args_has(%struct.args* %86, i8 signext 84)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load %struct.args*, %struct.args** %6, align 8
  %91 = call i8* @args_get(%struct.args* %90, i8 signext 84)
  store i8* %91, i8** %8, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = call i32* @key_bindings_get_table(i8* %92, i32 0)
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %97)
  %99 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %99, i32* %3, align 4
  br label %113

100:                                              ; preds = %89
  br label %108

101:                                              ; preds = %85
  %102 = load %struct.args*, %struct.args** %6, align 8
  %103 = call i64 @args_has(%struct.args* %102, i8 signext 110)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %107

106:                                              ; preds = %101
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %107, %100
  %109 = load i8*, i8** %8, align 8
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @key_bindings_remove(i8* %109, i64 %110)
  %112 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %108, %95, %81, %76, %68, %53, %38, %20
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @args_has(%struct.args*, i8 signext) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, ...) #1

declare dso_local i64 @key_string_lookup_string(i8*) #1

declare dso_local i8* @args_get(%struct.args*, i8 signext) #1

declare dso_local i32 @key_bindings_remove_table(i8*) #1

declare dso_local i32* @key_bindings_get_table(i8*, i32) #1

declare dso_local i32 @key_bindings_remove(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
