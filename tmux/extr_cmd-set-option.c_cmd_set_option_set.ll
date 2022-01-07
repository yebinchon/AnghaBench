; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-set-option.c_cmd_set_option_set.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-set-option.c_cmd_set_option_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i32 }
%struct.cmdq_item = type { i32 }
%struct.options = type { i32 }
%struct.options_entry = type { i32 }
%struct.options_table_entry = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [12 x i8] c"empty value\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"value is invalid: %s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"value is %s: %s\00", align 1
@KEYC_UNKNOWN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"bad key: %s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"bad colour: %s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"bad style: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*, %struct.options*, %struct.options_entry*, i8*)* @cmd_set_option_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_set_option_set(%struct.cmd* %0, %struct.cmdq_item* %1, %struct.options* %2, %struct.options_entry* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd*, align 8
  %8 = alloca %struct.cmdq_item*, align 8
  %9 = alloca %struct.options*, align 8
  %10 = alloca %struct.options_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.options_table_entry*, align 8
  %13 = alloca %struct.args*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.options_entry*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store %struct.cmd* %0, %struct.cmd** %7, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %8, align 8
  store %struct.options* %2, %struct.options** %9, align 8
  store %struct.options_entry* %3, %struct.options_entry** %10, align 8
  store i8* %4, i8** %11, align 8
  %21 = load %struct.cmd*, %struct.cmd** %7, align 8
  %22 = getelementptr inbounds %struct.cmd, %struct.cmd* %21, i32 0, i32 0
  %23 = load %struct.args*, %struct.args** %22, align 8
  store %struct.args* %23, %struct.args** %13, align 8
  %24 = load %struct.args*, %struct.args** %13, align 8
  %25 = call i32 @args_has(%struct.args* %24, i8 signext 97)
  store i32 %25, i32* %14, align 4
  %26 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %27 = call %struct.options_table_entry* @options_table_entry(%struct.options_entry* %26)
  store %struct.options_table_entry* %27, %struct.options_table_entry** %12, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %5
  %31 = load %struct.options_table_entry*, %struct.options_table_entry** %12, align 8
  %32 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 132
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.options_table_entry*, %struct.options_table_entry** %12, align 8
  %37 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 135
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.cmdq_item*, %struct.cmdq_item** %8, align 8
  %42 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %176

43:                                               ; preds = %35, %30, %5
  %44 = load %struct.options_table_entry*, %struct.options_table_entry** %12, align 8
  %45 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %175 [
    i32 129, label %47
    i32 130, label %92
    i32 131, label %115
    i32 134, label %132
    i32 132, label %147
    i32 135, label %153
    i32 128, label %159
    i32 133, label %174
  ]

47:                                               ; preds = %43
  %48 = load %struct.options*, %struct.options** %9, align 8
  %49 = load %struct.options_table_entry*, %struct.options_table_entry** %12, align 8
  %50 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @options_get_string(%struct.options* %48, i32 %51)
  %53 = call i8* @xstrdup(i8* %52)
  store i8* %53, i8** %19, align 8
  %54 = load %struct.options*, %struct.options** %9, align 8
  %55 = load %struct.options_table_entry*, %struct.options_table_entry** %12, align 8
  %56 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @options_set_string(%struct.options* %54, i32 %57, i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load %struct.options*, %struct.options** %9, align 8
  %62 = load %struct.options_table_entry*, %struct.options_table_entry** %12, align 8
  %63 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @options_get_string(%struct.options* %61, i32 %64)
  store i8* %65, i8** %18, align 8
  %66 = load %struct.options_table_entry*, %struct.options_table_entry** %12, align 8
  %67 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %89

70:                                               ; preds = %47
  %71 = load %struct.options_table_entry*, %struct.options_table_entry** %12, align 8
  %72 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = call i32 @fnmatch(i32* %73, i8* %74, i32 0)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load %struct.options*, %struct.options** %9, align 8
  %79 = load %struct.options_table_entry*, %struct.options_table_entry** %12, align 8
  %80 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %19, align 8
  %83 = call i32 @options_set_string(%struct.options* %78, i32 %81, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  %84 = load i8*, i8** %19, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load %struct.cmdq_item*, %struct.cmdq_item** %8, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  store i32 -1, i32* %6, align 4
  br label %176

89:                                               ; preds = %70, %47
  %90 = load i8*, i8** %19, align 8
  %91 = call i32 @free(i8* %90)
  store i32 0, i32* %6, align 4
  br label %176

92:                                               ; preds = %43
  %93 = load i8*, i8** %11, align 8
  %94 = load %struct.options_table_entry*, %struct.options_table_entry** %12, align 8
  %95 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.options_table_entry*, %struct.options_table_entry** %12, align 8
  %98 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @strtonum(i8* %93, i32 %96, i32 %99, i8** %17)
  store i64 %100, i64* %16, align 8
  %101 = load i8*, i8** %17, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %92
  %104 = load %struct.cmdq_item*, %struct.cmdq_item** %8, align 8
  %105 = load i8*, i8** %17, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %105, i8* %106)
  store i32 -1, i32* %6, align 4
  br label %176

108:                                              ; preds = %92
  %109 = load %struct.options*, %struct.options** %9, align 8
  %110 = load %struct.options_table_entry*, %struct.options_table_entry** %12, align 8
  %111 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %16, align 8
  %114 = call i32 @options_set_number(%struct.options* %109, i32 %112, i64 %113)
  store i32 0, i32* %6, align 4
  br label %176

115:                                              ; preds = %43
  %116 = load i8*, i8** %11, align 8
  %117 = call i64 @key_string_lookup_string(i8* %116)
  store i64 %117, i64* %20, align 8
  %118 = load i64, i64* %20, align 8
  %119 = load i64, i64* @KEYC_UNKNOWN, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load %struct.cmdq_item*, %struct.cmdq_item** %8, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %123)
  store i32 -1, i32* %6, align 4
  br label %176

125:                                              ; preds = %115
  %126 = load %struct.options*, %struct.options** %9, align 8
  %127 = load %struct.options_table_entry*, %struct.options_table_entry** %12, align 8
  %128 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* %20, align 8
  %131 = call i32 @options_set_number(%struct.options* %126, i32 %129, i64 %130)
  store i32 0, i32* %6, align 4
  br label %176

132:                                              ; preds = %43
  %133 = load i8*, i8** %11, align 8
  %134 = call i64 @colour_fromstring(i8* %133)
  store i64 %134, i64* %16, align 8
  %135 = icmp eq i64 %134, -1
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load %struct.cmdq_item*, %struct.cmdq_item** %8, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %137, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %138)
  store i32 -1, i32* %6, align 4
  br label %176

140:                                              ; preds = %132
  %141 = load %struct.options*, %struct.options** %9, align 8
  %142 = load %struct.options_table_entry*, %struct.options_table_entry** %12, align 8
  %143 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i64, i64* %16, align 8
  %146 = call i32 @options_set_number(%struct.options* %141, i32 %144, i64 %145)
  store i32 0, i32* %6, align 4
  br label %176

147:                                              ; preds = %43
  %148 = load %struct.cmdq_item*, %struct.cmdq_item** %8, align 8
  %149 = load %struct.options_table_entry*, %struct.options_table_entry** %12, align 8
  %150 = load %struct.options*, %struct.options** %9, align 8
  %151 = load i8*, i8** %11, align 8
  %152 = call i32 @cmd_set_option_flag(%struct.cmdq_item* %148, %struct.options_table_entry* %149, %struct.options* %150, i8* %151)
  store i32 %152, i32* %6, align 4
  br label %176

153:                                              ; preds = %43
  %154 = load %struct.cmdq_item*, %struct.cmdq_item** %8, align 8
  %155 = load %struct.options_table_entry*, %struct.options_table_entry** %12, align 8
  %156 = load %struct.options*, %struct.options** %9, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = call i32 @cmd_set_option_choice(%struct.cmdq_item* %154, %struct.options_table_entry* %155, %struct.options* %156, i8* %157)
  store i32 %158, i32* %6, align 4
  br label %176

159:                                              ; preds = %43
  %160 = load %struct.options*, %struct.options** %9, align 8
  %161 = load %struct.options_table_entry*, %struct.options_table_entry** %12, align 8
  %162 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %14, align 4
  %165 = load i8*, i8** %11, align 8
  %166 = call %struct.options_entry* @options_set_style(%struct.options* %160, i32 %163, i32 %164, i8* %165)
  store %struct.options_entry* %166, %struct.options_entry** %15, align 8
  %167 = load %struct.options_entry*, %struct.options_entry** %15, align 8
  %168 = icmp eq %struct.options_entry* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %159
  %170 = load %struct.cmdq_item*, %struct.cmdq_item** %8, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = call i32 (%struct.cmdq_item*, i8*, ...) @cmdq_error(%struct.cmdq_item* %170, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %171)
  store i32 -1, i32* %6, align 4
  br label %176

173:                                              ; preds = %159
  store i32 0, i32* %6, align 4
  br label %176

174:                                              ; preds = %43
  br label %175

175:                                              ; preds = %43, %174
  store i32 -1, i32* %6, align 4
  br label %176

176:                                              ; preds = %175, %173, %169, %153, %147, %140, %136, %125, %121, %108, %103, %89, %77, %40
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local i32 @args_has(%struct.args*, i8 signext) #1

declare dso_local %struct.options_table_entry* @options_table_entry(%struct.options_entry*) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, ...) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @options_get_string(%struct.options*, i32) #1

declare dso_local i32 @options_set_string(%struct.options*, i32, i32, i8*, i8*) #1

declare dso_local i32 @fnmatch(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @options_set_number(%struct.options*, i32, i64) #1

declare dso_local i64 @key_string_lookup_string(i8*) #1

declare dso_local i64 @colour_fromstring(i8*) #1

declare dso_local i32 @cmd_set_option_flag(%struct.cmdq_item*, %struct.options_table_entry*, %struct.options*, i8*) #1

declare dso_local i32 @cmd_set_option_choice(%struct.cmdq_item*, %struct.options_table_entry*, %struct.options*, i8*) #1

declare dso_local %struct.options_entry* @options_set_style(%struct.options*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
