; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_complete_list.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_complete_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_entry = type { i8* }
%struct.options_table_entry = type { i8* }
%struct.options_entry = type { i32 }
%struct.options_array_item = type { i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [16 x i8] c"even-horizontal\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"even-vertical\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"main-horizontal\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"main-vertical\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"tiled\00", align 1
@cmd_table = common dso_local global %struct.cmd_entry** null, align 8
@options_table = common dso_local global %struct.options_table_entry* null, align 8
@global_options = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"command-alias\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"complete %u: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @status_prompt_complete_list(i64* %0, i8* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cmd_entry**, align 8
  %10 = alloca %struct.options_table_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.options_entry*, align 8
  %15 = alloca %struct.options_array_item*, align 8
  %16 = alloca [6 x i8*], align 16
  store i64* %0, i64** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8** null, i8*** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %12, align 8
  %19 = bitcast [6 x i8*]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 48, i1 false)
  %20 = bitcast i8* %19 to [6 x i8*]*
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8** %21, align 16
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8** %22, align 8
  %23 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8** %23, align 16
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8** %24, align 8
  %25 = getelementptr inbounds [6 x i8*], [6 x i8*]* %20, i32 0, i32 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8** %25, align 16
  %26 = load i64*, i64** %3, align 8
  store i64 0, i64* %26, align 8
  %27 = load %struct.cmd_entry**, %struct.cmd_entry*** @cmd_table, align 8
  store %struct.cmd_entry** %27, %struct.cmd_entry*** %9, align 8
  br label %28

28:                                               ; preds = %58, %2
  %29 = load %struct.cmd_entry**, %struct.cmd_entry*** %9, align 8
  %30 = load %struct.cmd_entry*, %struct.cmd_entry** %29, align 8
  %31 = icmp ne %struct.cmd_entry* %30, null
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load %struct.cmd_entry**, %struct.cmd_entry*** %9, align 8
  %34 = load %struct.cmd_entry*, %struct.cmd_entry** %33, align 8
  %35 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i64 @strncmp(i8* %36, i8* %37, i64 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %32
  %42 = load i8**, i8*** %5, align 8
  %43 = load i64*, i64** %3, align 8
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  %46 = call i8** @xreallocarray(i8** %42, i64 %45, i32 8)
  store i8** %46, i8*** %5, align 8
  %47 = load %struct.cmd_entry**, %struct.cmd_entry*** %9, align 8
  %48 = load %struct.cmd_entry*, %struct.cmd_entry** %47, align 8
  %49 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @xstrdup(i8* %50)
  %52 = load i8**, i8*** %5, align 8
  %53 = load i64*, i64** %3, align 8
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = getelementptr inbounds i8*, i8** %52, i64 %54
  store i8* %51, i8** %56, align 8
  br label %57

57:                                               ; preds = %41, %32
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.cmd_entry**, %struct.cmd_entry*** %9, align 8
  %60 = getelementptr inbounds %struct.cmd_entry*, %struct.cmd_entry** %59, i32 1
  store %struct.cmd_entry** %60, %struct.cmd_entry*** %9, align 8
  br label %28

61:                                               ; preds = %28
  %62 = load %struct.options_table_entry*, %struct.options_table_entry** @options_table, align 8
  store %struct.options_table_entry* %62, %struct.options_table_entry** %10, align 8
  br label %63

63:                                               ; preds = %92, %61
  %64 = load %struct.options_table_entry*, %struct.options_table_entry** %10, align 8
  %65 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %95

68:                                               ; preds = %63
  %69 = load %struct.options_table_entry*, %struct.options_table_entry** %10, align 8
  %70 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i64 @strncmp(i8* %71, i8* %72, i64 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %68
  %77 = load i8**, i8*** %5, align 8
  %78 = load i64*, i64** %3, align 8
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  %81 = call i8** @xreallocarray(i8** %77, i64 %80, i32 8)
  store i8** %81, i8*** %5, align 8
  %82 = load %struct.options_table_entry*, %struct.options_table_entry** %10, align 8
  %83 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @xstrdup(i8* %84)
  %86 = load i8**, i8*** %5, align 8
  %87 = load i64*, i64** %3, align 8
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = getelementptr inbounds i8*, i8** %86, i64 %88
  store i8* %85, i8** %90, align 8
  br label %91

91:                                               ; preds = %76, %68
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.options_table_entry*, %struct.options_table_entry** %10, align 8
  %94 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %93, i32 1
  store %struct.options_table_entry* %94, %struct.options_table_entry** %10, align 8
  br label %63

95:                                               ; preds = %63
  %96 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 0
  store i8** %96, i8*** %6, align 8
  br label %97

97:                                               ; preds = %123, %95
  %98 = load i8**, i8*** %6, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %126

101:                                              ; preds = %97
  %102 = load i8**, i8*** %6, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i64 @strncmp(i8* %103, i8* %104, i64 %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %101
  %109 = load i8**, i8*** %5, align 8
  %110 = load i64*, i64** %3, align 8
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, 1
  %113 = call i8** @xreallocarray(i8** %109, i64 %112, i32 8)
  store i8** %113, i8*** %5, align 8
  %114 = load i8**, i8*** %6, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = call i8* @xstrdup(i8* %115)
  %117 = load i8**, i8*** %5, align 8
  %118 = load i64*, i64** %3, align 8
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %118, align 8
  %121 = getelementptr inbounds i8*, i8** %117, i64 %119
  store i8* %116, i8** %121, align 8
  br label %122

122:                                              ; preds = %108, %101
  br label %123

123:                                              ; preds = %122
  %124 = load i8**, i8*** %6, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i32 1
  store i8** %125, i8*** %6, align 8
  br label %97

126:                                              ; preds = %97
  %127 = load i32, i32* @global_options, align 4
  %128 = call %struct.options_entry* @options_get_only(i32 %127, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store %struct.options_entry* %128, %struct.options_entry** %14, align 8
  %129 = load %struct.options_entry*, %struct.options_entry** %14, align 8
  %130 = icmp ne %struct.options_entry* %129, null
  br i1 %130, label %131, label %180

131:                                              ; preds = %126
  %132 = load %struct.options_entry*, %struct.options_entry** %14, align 8
  %133 = call %struct.options_array_item* @options_array_first(%struct.options_entry* %132)
  store %struct.options_array_item* %133, %struct.options_array_item** %15, align 8
  br label %134

134:                                              ; preds = %176, %131
  %135 = load %struct.options_array_item*, %struct.options_array_item** %15, align 8
  %136 = icmp ne %struct.options_array_item* %135, null
  br i1 %136, label %137, label %179

137:                                              ; preds = %134
  %138 = load %struct.options_array_item*, %struct.options_array_item** %15, align 8
  %139 = call %struct.TYPE_2__* @options_array_item_value(%struct.options_array_item* %138)
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** %7, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = call i8* @strchr(i8* %142, i8 signext 61)
  store i8* %143, i8** %8, align 8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %176

146:                                              ; preds = %137
  %147 = load i8*, i8** %8, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  store i64 %151, i64* %13, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* %13, align 8
  %154 = icmp ugt i64 %152, %153
  br i1 %154, label %161, label %155

155:                                              ; preds = %146
  %156 = load i8*, i8** %7, align 8
  %157 = load i8*, i8** %4, align 8
  %158 = load i64, i64* %12, align 8
  %159 = call i64 @strncmp(i8* %156, i8* %157, i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %155, %146
  br label %176

162:                                              ; preds = %155
  %163 = load i8**, i8*** %5, align 8
  %164 = load i64*, i64** %3, align 8
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, 1
  %167 = call i8** @xreallocarray(i8** %163, i64 %166, i32 8)
  store i8** %167, i8*** %5, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = load i64, i64* %13, align 8
  %170 = call i8* @xstrndup(i8* %168, i64 %169)
  %171 = load i8**, i8*** %5, align 8
  %172 = load i64*, i64** %3, align 8
  %173 = load i64, i64* %172, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %172, align 8
  %175 = getelementptr inbounds i8*, i8** %171, i64 %173
  store i8* %170, i8** %175, align 8
  br label %176

176:                                              ; preds = %162, %161, %145
  %177 = load %struct.options_array_item*, %struct.options_array_item** %15, align 8
  %178 = call %struct.options_array_item* @options_array_next(%struct.options_array_item* %177)
  store %struct.options_array_item* %178, %struct.options_array_item** %15, align 8
  br label %134

179:                                              ; preds = %134
  br label %180

180:                                              ; preds = %179, %126
  store i64 0, i64* %11, align 8
  br label %181

181:                                              ; preds = %193, %180
  %182 = load i64, i64* %11, align 8
  %183 = load i64*, i64** %3, align 8
  %184 = load i64, i64* %183, align 8
  %185 = icmp ult i64 %182, %184
  br i1 %185, label %186, label %196

186:                                              ; preds = %181
  %187 = load i64, i64* %11, align 8
  %188 = load i8**, i8*** %5, align 8
  %189 = load i64, i64* %11, align 8
  %190 = getelementptr inbounds i8*, i8** %188, i64 %189
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @log_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64 %187, i8* %191)
  br label %193

193:                                              ; preds = %186
  %194 = load i64, i64* %11, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %11, align 8
  br label %181

196:                                              ; preds = %181
  %197 = load i8**, i8*** %5, align 8
  ret i8** %197
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i8** @xreallocarray(i8**, i64, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.options_entry* @options_get_only(i32, i8*) #1

declare dso_local %struct.options_array_item* @options_array_first(%struct.options_entry*) #1

declare dso_local %struct.TYPE_2__* @options_array_item_value(%struct.options_array_item*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @xstrndup(i8*, i64) #1

declare dso_local %struct.options_array_item* @options_array_next(%struct.options_array_item*) #1

declare dso_local i32 @log_debug(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
