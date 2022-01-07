; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_add_to_index.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_add_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.cache_entry = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@CE_MATCH_IGNORE_VALID = common dso_local global i32 0, align 4
@CE_MATCH_IGNORE_SKIP_WORKTREE = common dso_local global i32 0, align 4
@CE_MATCH_RACY_IS_DIRTY = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_REPLACE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"%s: can only add regular files, symbolic links or git-directories\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CE_ADDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to add %s to index\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_to_index(i8* %0, i32 %1, %struct.index_state* %2, i8* %3, i8* %4, %struct.TYPE_9__* %5, i32 %6, i32* %7, i64 (i8*, i32, i8*, i8*, i32*, i32)* %8, i8* %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.index_state*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64 (i8*, i32, i8*, i8*, i32*, i32)*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.cache_entry*, align 8
  %28 = alloca %struct.cache_entry*, align 8
  %29 = alloca [20 x i8], align 16
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store i32 %1, i32* %14, align 4
  store %struct.index_state* %2, %struct.index_state** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %18, align 8
  store i32 %6, i32* %19, align 4
  store i32* %7, i32** %20, align 8
  store i64 (i8*, i32, i8*, i8*, i32*, i32)* %8, i64 (i8*, i32, i8*, i8*, i32*, i32)** %21, align 8
  store i8* %9, i8** %22, align 8
  store i32* %10, i32** %23, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %26, align 4
  %35 = load i32, i32* @CE_MATCH_IGNORE_VALID, align 4
  %36 = load i32, i32* @CE_MATCH_IGNORE_SKIP_WORKTREE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @CE_MATCH_RACY_IS_DIRTY, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %30, align 4
  %40 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %41 = load i32, i32* @ADD_CACHE_OK_TO_REPLACE, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %31, align 4
  %43 = load i32, i32* @FALSE, align 4
  %44 = load i32*, i32** %23, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %26, align 4
  %46 = call i32 @S_ISREG(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %11
  %49 = load i32, i32* %26, align 4
  %50 = call i32 @S_ISLNK(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %26, align 4
  %54 = call i32 @S_ISDIR(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %16, align 8
  %58 = call i32 @seaf_warning(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* %57)
  store i32 -1, i32* %12, align 4
  br label %145

59:                                               ; preds = %52, %48, %11
  %60 = load i8*, i8** %16, align 8
  %61 = call i32 @strlen(i8* %60)
  store i32 %61, i32* %25, align 4
  %62 = load i32, i32* %25, align 4
  %63 = call i32 @cache_entry_size(i32 %62)
  store i32 %63, i32* %24, align 4
  %64 = load i32, i32* %24, align 4
  %65 = call %struct.cache_entry* @calloc(i32 1, i32 %64)
  store %struct.cache_entry* %65, %struct.cache_entry** %27, align 8
  %66 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %67 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %16, align 8
  %70 = load i32, i32* %25, align 4
  %71 = call i32 (i32, ...) @memcpy(i32 %68, i8* %69, i32 %70)
  %72 = load i32, i32* %25, align 4
  %73 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %74 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %77 = call i32 @fill_stat_cache_info(%struct.cache_entry* %75, %struct.TYPE_9__* %76)
  %78 = load i32, i32* %26, align 4
  %79 = call i32 @create_ce_mode(i32 %78)
  %80 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %81 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.index_state*, %struct.index_state** %15, align 8
  %83 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %84 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %87 = call i32 @ce_namelen(%struct.cache_entry* %86)
  %88 = call %struct.cache_entry* @index_name_exists(%struct.index_state* %82, i32 %85, i32 %87, i32 0)
  store %struct.cache_entry* %88, %struct.cache_entry** %28, align 8
  %89 = load %struct.cache_entry*, %struct.cache_entry** %28, align 8
  %90 = icmp ne %struct.cache_entry* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %59
  %92 = load %struct.cache_entry*, %struct.cache_entry** %28, align 8
  %93 = call i32 @ce_stage(%struct.cache_entry* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %91
  %96 = load %struct.cache_entry*, %struct.cache_entry** %28, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %98 = load i32, i32* %30, align 4
  %99 = call i32 @ie_match_stat(%struct.cache_entry* %96, %struct.TYPE_9__* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %103 = call i32 @free(%struct.cache_entry* %102)
  store i32 0, i32* %12, align 4
  br label %145

104:                                              ; preds = %95, %91
  br label %106

105:                                              ; preds = %59
  br label %106

106:                                              ; preds = %105, %104
  %107 = load i64 (i8*, i32, i8*, i8*, i32*, i32)*, i64 (i8*, i32, i8*, i8*, i32*, i32)** %21, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i8*, i8** %17, align 8
  %111 = getelementptr inbounds [20 x i8], [20 x i8]* %29, i64 0, i64 0
  %112 = load i32*, i32** %20, align 8
  %113 = load i32, i32* @TRUE, align 4
  %114 = call i64 %107(i8* %108, i32 %109, i8* %110, i8* %111, i32* %112, i32 %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %106
  %117 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %118 = call i32 @free(%struct.cache_entry* %117)
  store i32 -1, i32* %12, align 4
  br label %145

119:                                              ; preds = %106
  %120 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %121 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds [20 x i8], [20 x i8]* %29, i64 0, i64 0
  %124 = call i32 (i32, ...) @memcpy(i32 %122, i8* %123, i32 20)
  %125 = load i32, i32* @CE_ADDED, align 4
  %126 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %127 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i8*, i8** %22, align 8
  %131 = call i32 @g_strdup(i8* %130)
  %132 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %133 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.index_state*, %struct.index_state** %15, align 8
  %135 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  %136 = load i32, i32* %31, align 4
  %137 = call i64 @add_index_entry(%struct.index_state* %134, %struct.cache_entry* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %119
  %140 = load i8*, i8** %16, align 8
  %141 = call i32 @seaf_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %140)
  store i32 -1, i32* %12, align 4
  br label %145

142:                                              ; preds = %119
  %143 = load i32, i32* @TRUE, align 4
  %144 = load i32*, i32** %23, align 8
  store i32 %143, i32* %144, align 4
  store i32 0, i32* %12, align 4
  br label %145

145:                                              ; preds = %142, %139, %116, %101, %56
  %146 = load i32, i32* %12, align 4
  ret i32 %146
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cache_entry_size(i32) #1

declare dso_local %struct.cache_entry* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, ...) #1

declare dso_local i32 @fill_stat_cache_info(%struct.cache_entry*, %struct.TYPE_9__*) #1

declare dso_local i32 @create_ce_mode(i32) #1

declare dso_local %struct.cache_entry* @index_name_exists(%struct.index_state*, i32, i32, i32) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @ie_match_stat(%struct.cache_entry*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @free(%struct.cache_entry*) #1

declare dso_local i32 @g_strdup(i8*) #1

declare dso_local i64 @add_index_entry(%struct.index_state*, %struct.cache_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
