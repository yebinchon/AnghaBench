; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_delete_worktree_dir_recursive.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_delete_worktree_dir_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.cache_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to open dir %s: %s.\0A\00", align 1
@G_NORMALIZE_NFC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Failed to stat %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"File %s is changed, skip deleting it.\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to delete file %s: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to delete dir %s: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i8*, i8*)* @delete_worktree_dir_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_worktree_dir_recursive(%struct.index_state* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %16, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32* @g_dir_open(i8* %19, i32 0, %struct.TYPE_8__** %11)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %27)
  store i32 -1, i32* %4, align 4
  br label %131

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %108, %90, %51, %29
  %31 = load i32*, i32** %8, align 8
  %32 = call i8* @g_dir_read_name(i32* %31)
  store i8* %32, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %113

34:                                               ; preds = %30
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* @G_NORMALIZE_NFC, align 4
  %37 = call i8* @g_utf8_normalize(i8* %35, i32 -1, i32 %36)
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i8* @g_build_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %39, i32* null)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i8* @g_build_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %41, i8* %42, i32* null)
  store i8* %43, i8** %13, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @is_built_in_ignored_file(i8* %44)
  store i32 %45, i32* %16, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @g_free(i8* %46)
  %48 = load i8*, i8** %13, align 8
  %49 = call i64 @lstat(i8* %48, %struct.TYPE_7__* %14)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %34
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @g_free(i8* %54)
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 @g_free(i8* %56)
  store i32 -1, i32* %15, align 4
  br label %30

58:                                               ; preds = %34
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @S_ISDIR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.index_state*, %struct.index_state** %5, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @delete_worktree_dir_recursive(%struct.index_state* %64, i8* %65, i8* %66)
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 -1, i32* %15, align 4
  br label %70

70:                                               ; preds = %69, %63
  br label %108

71:                                               ; preds = %58
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %98, label %74

74:                                               ; preds = %71
  %75 = load %struct.index_state*, %struct.index_state** %5, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = call %struct.cache_entry* @index_name_exists(%struct.index_state* %75, i8* %76, i32 %78, i32 0)
  store %struct.cache_entry* %79, %struct.cache_entry** %17, align 8
  %80 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  %81 = icmp ne %struct.cache_entry* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  %84 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %86, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %82, %74
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @seaf_message(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  %93 = load i8*, i8** %12, align 8
  %94 = call i32 @g_free(i8* %93)
  %95 = load i8*, i8** %13, align 8
  %96 = call i32 @g_free(i8* %95)
  store i32 -1, i32* %15, align 4
  br label %30

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %97, %71
  %99 = load i8*, i8** %13, align 8
  %100 = call i64 @seaf_util_unlink(i8* %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i8*, i8** %13, align 8
  %104 = load i32, i32* @errno, align 4
  %105 = call i32 @strerror(i32 %104)
  %106 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %103, i32 %105)
  store i32 -1, i32* %15, align 4
  br label %107

107:                                              ; preds = %102, %98
  br label %108

108:                                              ; preds = %107, %70
  %109 = load i8*, i8** %12, align 8
  %110 = call i32 @g_free(i8* %109)
  %111 = load i8*, i8** %13, align 8
  %112 = call i32 @g_free(i8* %111)
  br label %30

113:                                              ; preds = %30
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @g_dir_close(i32* %114)
  %116 = load i32, i32* %15, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %4, align 4
  br label %131

120:                                              ; preds = %113
  %121 = load i8*, i8** %7, align 8
  %122 = call i64 @g_rmdir(i8* %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i8*, i8** %7, align 8
  %126 = load i32, i32* @errno, align 4
  %127 = call i32 @strerror(i32 %126)
  %128 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %125, i32 %127)
  store i32 -1, i32* %15, align 4
  br label %129

129:                                              ; preds = %124, %120
  %130 = load i32, i32* %15, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %118, %23
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32* @g_dir_open(i8*, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @seaf_warning(i8*, i8*, ...) #1

declare dso_local i8* @g_dir_read_name(i32*) #1

declare dso_local i8* @g_utf8_normalize(i8*, i32, i32) #1

declare dso_local i8* @g_build_path(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @is_built_in_ignored_file(i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i64 @lstat(i8*, %struct.TYPE_7__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.cache_entry* @index_name_exists(%struct.index_state*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @seaf_message(i8*, i8*) #1

declare dso_local i64 @seaf_util_unlink(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @g_dir_close(i32*) #1

declare dso_local i64 @g_rmdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
