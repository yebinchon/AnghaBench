; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-show-options.c_cmd_show_options_all.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-show-options.c_cmd_show_options_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_table_entry = type { i32, i32, i32* }
%struct.cmd = type { i32, i32* }
%struct.cmdq_item = type { i32 }
%struct.options = type { i32 }
%struct.options_entry = type { i32 }
%struct.options_array_item = type { i32 }

@options_table = common dso_local global %struct.options_table_entry* null, align 8
@cmd_show_hooks_entry = common dso_local global i32 0, align 4
@OPTIONS_TABLE_IS_HOOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s*\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*, i32, %struct.options*)* @cmd_show_options_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_show_options_all(%struct.cmd* %0, %struct.cmdq_item* %1, i32 %2, %struct.options* %3) #0 {
  %5 = alloca %struct.cmd*, align 8
  %6 = alloca %struct.cmdq_item*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.options*, align 8
  %9 = alloca %struct.options_table_entry*, align 8
  %10 = alloca %struct.options_entry*, align 8
  %11 = alloca %struct.options_array_item*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %5, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.options* %3, %struct.options** %8, align 8
  %15 = load %struct.options*, %struct.options** %8, align 8
  %16 = call %struct.options_entry* @options_first(%struct.options* %15)
  store %struct.options_entry* %16, %struct.options_entry** %10, align 8
  br label %17

17:                                               ; preds = %29, %4
  %18 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %19 = icmp ne %struct.options_entry* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %22 = call i32* @options_table_entry(%struct.options_entry* %21)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.cmd*, %struct.cmd** %5, align 8
  %26 = load %struct.cmdq_item*, %struct.cmdq_item** %6, align 8
  %27 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %28 = call i32 @cmd_show_options_print(%struct.cmd* %25, %struct.cmdq_item* %26, %struct.options_entry* %27, i32 -1, i32 0)
  br label %29

29:                                               ; preds = %24, %20
  %30 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %31 = call %struct.options_entry* @options_next(%struct.options_entry* %30)
  store %struct.options_entry* %31, %struct.options_entry** %10, align 8
  br label %17

32:                                               ; preds = %17
  %33 = load %struct.options_table_entry*, %struct.options_table_entry** @options_table, align 8
  store %struct.options_table_entry* %33, %struct.options_table_entry** %9, align 8
  br label %34

34:                                               ; preds = %165, %32
  %35 = load %struct.options_table_entry*, %struct.options_table_entry** %9, align 8
  %36 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %168

39:                                               ; preds = %34
  %40 = load %struct.options_table_entry*, %struct.options_table_entry** %9, align 8
  %41 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %165

48:                                               ; preds = %39
  %49 = load %struct.cmd*, %struct.cmd** %5, align 8
  %50 = getelementptr inbounds %struct.cmd, %struct.cmd* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, @cmd_show_hooks_entry
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load %struct.cmd*, %struct.cmd** %5, align 8
  %55 = getelementptr inbounds %struct.cmd, %struct.cmd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @args_has(i32 %56, i8 signext 72)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %53
  %60 = load %struct.options_table_entry*, %struct.options_table_entry** %9, align 8
  %61 = icmp ne %struct.options_table_entry* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.options_table_entry*, %struct.options_table_entry** %9, align 8
  %64 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @OPTIONS_TABLE_IS_HOOK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %62, %59, %53, %48
  %70 = load %struct.cmd*, %struct.cmd** %5, align 8
  %71 = getelementptr inbounds %struct.cmd, %struct.cmd* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, @cmd_show_hooks_entry
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load %struct.options_table_entry*, %struct.options_table_entry** %9, align 8
  %76 = icmp eq %struct.options_table_entry* %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %74
  %78 = load %struct.options_table_entry*, %struct.options_table_entry** %9, align 8
  %79 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* @OPTIONS_TABLE_IS_HOOK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77, %74, %62
  br label %165

86:                                               ; preds = %77, %69
  %87 = load %struct.options*, %struct.options** %8, align 8
  %88 = load %struct.options_table_entry*, %struct.options_table_entry** %9, align 8
  %89 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = call %struct.options_entry* @options_get_only(%struct.options* %87, i32* %90)
  store %struct.options_entry* %91, %struct.options_entry** %10, align 8
  %92 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %93 = icmp eq %struct.options_entry* %92, null
  br i1 %93, label %94, label %111

94:                                               ; preds = %86
  %95 = load %struct.cmd*, %struct.cmd** %5, align 8
  %96 = getelementptr inbounds %struct.cmd, %struct.cmd* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @args_has(i32 %97, i8 signext 65)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  br label %165

101:                                              ; preds = %94
  %102 = load %struct.options*, %struct.options** %8, align 8
  %103 = load %struct.options_table_entry*, %struct.options_table_entry** %9, align 8
  %104 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = call %struct.options_entry* @options_get(%struct.options* %102, i32* %105)
  store %struct.options_entry* %106, %struct.options_entry** %10, align 8
  %107 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %108 = icmp eq %struct.options_entry* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %165

110:                                              ; preds = %101
  store i32 1, i32* %14, align 4
  br label %112

111:                                              ; preds = %86
  store i32 0, i32* %14, align 4
  br label %112

112:                                              ; preds = %111, %110
  %113 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %114 = call i32 @options_isarray(%struct.options_entry* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = load %struct.cmd*, %struct.cmd** %5, align 8
  %118 = load %struct.cmdq_item*, %struct.cmdq_item** %6, align 8
  %119 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @cmd_show_options_print(%struct.cmd* %117, %struct.cmdq_item* %118, %struct.options_entry* %119, i32 -1, i32 %120)
  br label %164

122:                                              ; preds = %112
  %123 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %124 = call %struct.options_array_item* @options_array_first(%struct.options_entry* %123)
  store %struct.options_array_item* %124, %struct.options_array_item** %11, align 8
  %125 = icmp eq %struct.options_array_item* %124, null
  br i1 %125, label %126, label %147

126:                                              ; preds = %122
  %127 = load %struct.cmd*, %struct.cmd** %5, align 8
  %128 = getelementptr inbounds %struct.cmd, %struct.cmd* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @args_has(i32 %129, i8 signext 118)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %146, label %132

132:                                              ; preds = %126
  %133 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %134 = call i8* @options_name(%struct.options_entry* %133)
  store i8* %134, i8** %12, align 8
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.cmdq_item*, %struct.cmdq_item** %6, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = call i32 @cmdq_print(%struct.cmdq_item* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %139)
  br label %145

141:                                              ; preds = %132
  %142 = load %struct.cmdq_item*, %struct.cmdq_item** %6, align 8
  %143 = load i8*, i8** %12, align 8
  %144 = call i32 @cmdq_print(%struct.cmdq_item* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %143)
  br label %145

145:                                              ; preds = %141, %137
  br label %146

146:                                              ; preds = %145, %126
  br label %163

147:                                              ; preds = %122
  br label %148

148:                                              ; preds = %151, %147
  %149 = load %struct.options_array_item*, %struct.options_array_item** %11, align 8
  %150 = icmp ne %struct.options_array_item* %149, null
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = load %struct.options_array_item*, %struct.options_array_item** %11, align 8
  %153 = call i32 @options_array_item_index(%struct.options_array_item* %152)
  store i32 %153, i32* %13, align 4
  %154 = load %struct.cmd*, %struct.cmd** %5, align 8
  %155 = load %struct.cmdq_item*, %struct.cmdq_item** %6, align 8
  %156 = load %struct.options_entry*, %struct.options_entry** %10, align 8
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @cmd_show_options_print(%struct.cmd* %154, %struct.cmdq_item* %155, %struct.options_entry* %156, i32 %157, i32 %158)
  %160 = load %struct.options_array_item*, %struct.options_array_item** %11, align 8
  %161 = call %struct.options_array_item* @options_array_next(%struct.options_array_item* %160)
  store %struct.options_array_item* %161, %struct.options_array_item** %11, align 8
  br label %148

162:                                              ; preds = %148
  br label %163

163:                                              ; preds = %162, %146
  br label %164

164:                                              ; preds = %163, %116
  br label %165

165:                                              ; preds = %164, %109, %100, %85, %47
  %166 = load %struct.options_table_entry*, %struct.options_table_entry** %9, align 8
  %167 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %166, i32 1
  store %struct.options_table_entry* %167, %struct.options_table_entry** %9, align 8
  br label %34

168:                                              ; preds = %34
  %169 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  ret i32 %169
}

declare dso_local %struct.options_entry* @options_first(%struct.options*) #1

declare dso_local i32* @options_table_entry(%struct.options_entry*) #1

declare dso_local i32 @cmd_show_options_print(%struct.cmd*, %struct.cmdq_item*, %struct.options_entry*, i32, i32) #1

declare dso_local %struct.options_entry* @options_next(%struct.options_entry*) #1

declare dso_local i32 @args_has(i32, i8 signext) #1

declare dso_local %struct.options_entry* @options_get_only(%struct.options*, i32*) #1

declare dso_local %struct.options_entry* @options_get(%struct.options*, i32*) #1

declare dso_local i32 @options_isarray(%struct.options_entry*) #1

declare dso_local %struct.options_array_item* @options_array_first(%struct.options_entry*) #1

declare dso_local i8* @options_name(%struct.options_entry*) #1

declare dso_local i32 @cmdq_print(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local i32 @options_array_item_index(%struct.options_array_item*) #1

declare dso_local %struct.options_array_item* @options_array_next(%struct.options_array_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
