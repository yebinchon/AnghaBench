; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-show-options.c_cmd_show_options_print.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-show-options.c_cmd_show_options_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32 }
%struct.cmdq_item = type { i32 }
%struct.options_entry = type { i32 }
%struct.options_array_item = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s* %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd*, %struct.cmdq_item*, %struct.options_entry*, i32, i32)* @cmd_show_options_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_show_options_print(%struct.cmd* %0, %struct.cmdq_item* %1, %struct.options_entry* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cmd*, align 8
  %7 = alloca %struct.cmdq_item*, align 8
  %8 = alloca %struct.options_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.options_array_item*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.cmd* %0, %struct.cmd** %6, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %7, align 8
  store %struct.options_entry* %2, %struct.options_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.options_entry*, %struct.options_entry** %8, align 8
  %17 = call i8* @options_name(%struct.options_entry* %16)
  store i8* %17, i8** %12, align 8
  store i8* null, i8** %14, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load i8*, i8** %12, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @xasprintf(i8** %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %22)
  %24 = load i8*, i8** %14, align 8
  store i8* %24, i8** %12, align 8
  br label %61

25:                                               ; preds = %5
  %26 = load %struct.options_entry*, %struct.options_entry** %8, align 8
  %27 = call i64 @options_isarray(%struct.options_entry* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %25
  %30 = load %struct.options_entry*, %struct.options_entry** %8, align 8
  %31 = call %struct.options_array_item* @options_array_first(%struct.options_entry* %30)
  store %struct.options_array_item* %31, %struct.options_array_item** %11, align 8
  %32 = load %struct.options_array_item*, %struct.options_array_item** %11, align 8
  %33 = icmp eq %struct.options_array_item* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.cmd*, %struct.cmd** %6, align 8
  %36 = getelementptr inbounds %struct.cmd, %struct.cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @args_has(i32 %37, i8 signext 118)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 (%struct.cmdq_item*, i8*, i8*, ...) @cmdq_print(%struct.cmdq_item* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %40, %34
  br label %116

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %49, %45
  %47 = load %struct.options_array_item*, %struct.options_array_item** %11, align 8
  %48 = icmp ne %struct.options_array_item* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load %struct.options_array_item*, %struct.options_array_item** %11, align 8
  %51 = call i32 @options_array_item_index(%struct.options_array_item* %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.cmd*, %struct.cmd** %6, align 8
  %53 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %54 = load %struct.options_entry*, %struct.options_entry** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  call void @cmd_show_options_print(%struct.cmd* %52, %struct.cmdq_item* %53, %struct.options_entry* %54, i32 %55, i32 %56)
  %57 = load %struct.options_array_item*, %struct.options_array_item** %11, align 8
  %58 = call %struct.options_array_item* @options_array_next(%struct.options_array_item* %57)
  store %struct.options_array_item* %58, %struct.options_array_item** %11, align 8
  br label %46

59:                                               ; preds = %46
  br label %116

60:                                               ; preds = %25
  br label %61

61:                                               ; preds = %60, %20
  %62 = load %struct.options_entry*, %struct.options_entry** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i8* @options_tostring(%struct.options_entry* %62, i32 %63, i32 0)
  store i8* %64, i8** %13, align 8
  %65 = load %struct.cmd*, %struct.cmd** %6, align 8
  %66 = getelementptr inbounds %struct.cmd, %struct.cmd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @args_has(i32 %67, i8 signext 118)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 (%struct.cmdq_item*, i8*, i8*, ...) @cmdq_print(%struct.cmdq_item* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  br label %111

74:                                               ; preds = %61
  %75 = load %struct.options_entry*, %struct.options_entry** %8, align 8
  %76 = call i64 @options_isstring(%struct.options_entry* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load i8*, i8** %13, align 8
  %80 = call i8* @args_escape(i8* %79)
  store i8* %80, i8** %15, align 8
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = call i32 (%struct.cmdq_item*, i8*, i8*, ...) @cmdq_print(%struct.cmdq_item* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %85, i8* %86)
  br label %93

88:                                               ; preds = %78
  %89 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = call i32 (%struct.cmdq_item*, i8*, i8*, ...) @cmdq_print(%struct.cmdq_item* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %90, i8* %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i8*, i8** %15, align 8
  %95 = call i32 @free(i8* %94)
  br label %110

96:                                               ; preds = %74
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 (%struct.cmdq_item*, i8*, i8*, ...) @cmdq_print(%struct.cmdq_item* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %101, i8* %102)
  br label %109

104:                                              ; preds = %96
  %105 = load %struct.cmdq_item*, %struct.cmdq_item** %7, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = call i32 (%struct.cmdq_item*, i8*, i8*, ...) @cmdq_print(%struct.cmdq_item* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %106, i8* %107)
  br label %109

109:                                              ; preds = %104, %99
  br label %110

110:                                              ; preds = %109, %93
  br label %111

111:                                              ; preds = %110, %70
  %112 = load i8*, i8** %13, align 8
  %113 = call i32 @free(i8* %112)
  %114 = load i8*, i8** %14, align 8
  %115 = call i32 @free(i8* %114)
  br label %116

116:                                              ; preds = %111, %59, %44
  ret void
}

declare dso_local i8* @options_name(%struct.options_entry*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*, i32) #1

declare dso_local i64 @options_isarray(%struct.options_entry*) #1

declare dso_local %struct.options_array_item* @options_array_first(%struct.options_entry*) #1

declare dso_local i64 @args_has(i32, i8 signext) #1

declare dso_local i32 @cmdq_print(%struct.cmdq_item*, i8*, i8*, ...) #1

declare dso_local i32 @options_array_item_index(%struct.options_array_item*) #1

declare dso_local %struct.options_array_item* @options_array_next(%struct.options_array_item*) #1

declare dso_local i8* @options_tostring(%struct.options_entry*, i32, i32) #1

declare dso_local i64 @options_isstring(%struct.options_entry*) #1

declare dso_local i8* @args_escape(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
