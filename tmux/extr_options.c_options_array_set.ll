; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_array_set.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_array_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_entry = type { i32 }
%struct.options_array_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.cmd_parse_result = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"not an array\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"empty command\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"wrong array type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @options_array_set(%struct.options_entry* %0, i32 %1, i8* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.options_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.options_array_item*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.cmd_parse_result*, align 8
  store %struct.options_entry* %0, %struct.options_entry** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %15 = load %struct.options_entry*, %struct.options_entry** %7, align 8
  %16 = call i32 @OPTIONS_IS_ARRAY(%struct.options_entry* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %5
  %19 = load i8**, i8*** %11, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = call i8* @xstrdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %23 = load i8**, i8*** %11, align 8
  store i8* %22, i8** %23, align 8
  br label %24

24:                                               ; preds = %21, %18
  store i32 -1, i32* %6, align 4
  br label %140

25:                                               ; preds = %5
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load %struct.options_entry*, %struct.options_entry** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.options_array_item* @options_array_item(%struct.options_entry* %29, i32 %30)
  store %struct.options_array_item* %31, %struct.options_array_item** %12, align 8
  %32 = load %struct.options_array_item*, %struct.options_array_item** %12, align 8
  %33 = icmp ne %struct.options_array_item* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.options_entry*, %struct.options_entry** %7, align 8
  %36 = load %struct.options_array_item*, %struct.options_array_item** %12, align 8
  %37 = call i32 @options_array_free(%struct.options_entry* %35, %struct.options_array_item* %36)
  br label %38

38:                                               ; preds = %34, %28
  store i32 0, i32* %6, align 4
  br label %140

39:                                               ; preds = %25
  %40 = load %struct.options_entry*, %struct.options_entry** %7, align 8
  %41 = call i64 @OPTIONS_IS_COMMAND(%struct.options_entry* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %93

43:                                               ; preds = %39
  %44 = load i8*, i8** %9, align 8
  %45 = call %struct.cmd_parse_result* @cmd_parse_from_string(i8* %44, i32* null)
  store %struct.cmd_parse_result* %45, %struct.cmd_parse_result** %14, align 8
  %46 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %14, align 8
  %47 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %71 [
    i32 130, label %49
    i32 129, label %56
    i32 128, label %70
  ]

49:                                               ; preds = %43
  %50 = load i8**, i8*** %11, align 8
  %51 = icmp ne i8** %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = call i8* @xstrdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i8**, i8*** %11, align 8
  store i8* %53, i8** %54, align 8
  br label %55

55:                                               ; preds = %52, %49
  store i32 -1, i32* %6, align 4
  br label %140

56:                                               ; preds = %43
  %57 = load i8**, i8*** %11, align 8
  %58 = icmp ne i8** %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %14, align 8
  %61 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** %11, align 8
  store i8* %62, i8** %63, align 8
  br label %69

64:                                               ; preds = %56
  %65 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %14, align 8
  %66 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @free(i8* %67)
  br label %69

69:                                               ; preds = %64, %59
  store i32 -1, i32* %6, align 4
  br label %140

70:                                               ; preds = %43
  br label %71

71:                                               ; preds = %43, %70
  %72 = load %struct.options_entry*, %struct.options_entry** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call %struct.options_array_item* @options_array_item(%struct.options_entry* %72, i32 %73)
  store %struct.options_array_item* %74, %struct.options_array_item** %12, align 8
  %75 = load %struct.options_array_item*, %struct.options_array_item** %12, align 8
  %76 = icmp eq %struct.options_array_item* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.options_entry*, %struct.options_entry** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call %struct.options_array_item* @options_array_new(%struct.options_entry* %78, i32 %79)
  store %struct.options_array_item* %80, %struct.options_array_item** %12, align 8
  br label %86

81:                                               ; preds = %71
  %82 = load %struct.options_entry*, %struct.options_entry** %7, align 8
  %83 = load %struct.options_array_item*, %struct.options_array_item** %12, align 8
  %84 = getelementptr inbounds %struct.options_array_item, %struct.options_array_item* %83, i32 0, i32 0
  %85 = call i32 @options_value_free(%struct.options_entry* %82, %struct.TYPE_2__* %84)
  br label %86

86:                                               ; preds = %81, %77
  %87 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %14, align 8
  %88 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.options_array_item*, %struct.options_array_item** %12, align 8
  %91 = getelementptr inbounds %struct.options_array_item, %struct.options_array_item* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 8
  store i32 0, i32* %6, align 4
  br label %140

93:                                               ; preds = %39
  %94 = load %struct.options_entry*, %struct.options_entry** %7, align 8
  %95 = call i64 @OPTIONS_IS_STRING(%struct.options_entry* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %133

97:                                               ; preds = %93
  %98 = load %struct.options_entry*, %struct.options_entry** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call %struct.options_array_item* @options_array_item(%struct.options_entry* %98, i32 %99)
  store %struct.options_array_item* %100, %struct.options_array_item** %12, align 8
  %101 = load %struct.options_array_item*, %struct.options_array_item** %12, align 8
  %102 = icmp ne %struct.options_array_item* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %97
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load %struct.options_array_item*, %struct.options_array_item** %12, align 8
  %108 = getelementptr inbounds %struct.options_array_item, %struct.options_array_item* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 @xasprintf(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %110, i8* %111)
  br label %116

113:                                              ; preds = %103, %97
  %114 = load i8*, i8** %9, align 8
  %115 = call i8* @xstrdup(i8* %114)
  store i8* %115, i8** %13, align 8
  br label %116

116:                                              ; preds = %113, %106
  %117 = load %struct.options_array_item*, %struct.options_array_item** %12, align 8
  %118 = icmp eq %struct.options_array_item* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load %struct.options_entry*, %struct.options_entry** %7, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call %struct.options_array_item* @options_array_new(%struct.options_entry* %120, i32 %121)
  store %struct.options_array_item* %122, %struct.options_array_item** %12, align 8
  br label %128

123:                                              ; preds = %116
  %124 = load %struct.options_entry*, %struct.options_entry** %7, align 8
  %125 = load %struct.options_array_item*, %struct.options_array_item** %12, align 8
  %126 = getelementptr inbounds %struct.options_array_item, %struct.options_array_item* %125, i32 0, i32 0
  %127 = call i32 @options_value_free(%struct.options_entry* %124, %struct.TYPE_2__* %126)
  br label %128

128:                                              ; preds = %123, %119
  %129 = load i8*, i8** %13, align 8
  %130 = load %struct.options_array_item*, %struct.options_array_item** %12, align 8
  %131 = getelementptr inbounds %struct.options_array_item, %struct.options_array_item* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  store i8* %129, i8** %132, align 8
  store i32 0, i32* %6, align 4
  br label %140

133:                                              ; preds = %93
  %134 = load i8**, i8*** %11, align 8
  %135 = icmp ne i8** %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = call i8* @xstrdup(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i8**, i8*** %11, align 8
  store i8* %137, i8** %138, align 8
  br label %139

139:                                              ; preds = %136, %133
  store i32 -1, i32* %6, align 4
  br label %140

140:                                              ; preds = %139, %128, %86, %69, %55, %38, %24
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @OPTIONS_IS_ARRAY(%struct.options_entry*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.options_array_item* @options_array_item(%struct.options_entry*, i32) #1

declare dso_local i32 @options_array_free(%struct.options_entry*, %struct.options_array_item*) #1

declare dso_local i64 @OPTIONS_IS_COMMAND(%struct.options_entry*) #1

declare dso_local %struct.cmd_parse_result* @cmd_parse_from_string(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.options_array_item* @options_array_new(%struct.options_entry*, i32) #1

declare dso_local i32 @options_value_free(%struct.options_entry*, %struct.TYPE_2__*) #1

declare dso_local i64 @OPTIONS_IS_STRING(%struct.options_entry*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
