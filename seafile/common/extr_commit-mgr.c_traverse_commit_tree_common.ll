; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_commit-mgr.c_traverse_commit_tree_common.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_commit-mgr.c_traverse_commit_tree_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Failed to find commit %s.\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@g_free = common dso_local global i32 0, align 4
@compare_commit_by_time = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"[comit-mgr] CommitTraverseFunc failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"[comit-mgr] insert parent commit failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"[comit-mgr]insert second parent commit failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i32, i8*, i32 (%struct.TYPE_14__*, i8*, i64*)*, i8*, i64, i64)* @traverse_commit_tree_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @traverse_commit_tree_common(i32* %0, i8* %1, i32 %2, i8* %3, i32 (%struct.TYPE_14__*, i8*, i64*)* %4, i8* %5, i64 %6, i64 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32 (%struct.TYPE_14__*, i8*, i64*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 (%struct.TYPE_14__*, i8*, i64*)* %4, i32 (%struct.TYPE_14__*, i8*, i64*)** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %19, align 8
  %24 = load i64, i64* @TRUE, align 8
  store i64 %24, i64* %21, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i8*, i8** %13, align 8
  %29 = call %struct.TYPE_14__* @seaf_commit_manager_get_commit(i32* %25, i8* %26, i32 %27, i8* %28)
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %18, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %31 = icmp ne %struct.TYPE_14__* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %8
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %9, align 8
  br label %155

36:                                               ; preds = %8
  %37 = load i32, i32* @g_str_hash, align 4
  %38 = load i32, i32* @g_str_equal, align 4
  %39 = load i32, i32* @g_free, align 4
  %40 = call i32* @g_hash_table_new_full(i32 %37, i32 %38, i32 %39, i32* null)
  store i32* %40, i32** %20, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %43 = load i32, i32* @compare_commit_by_time, align 4
  %44 = call %struct.TYPE_15__* @g_list_insert_sorted_with_data(%struct.TYPE_15__* %41, %struct.TYPE_14__* %42, i32 %43, i32* null)
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %19, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @g_strdup(i32 %47)
  store i8* %48, i8** %22, align 8
  %49 = load i32*, i32** %20, align 8
  %50 = load i8*, i8** %22, align 8
  %51 = load i8*, i8** %22, align 8
  %52 = call i32 @g_hash_table_replace(i32* %49, i8* %50, i8* %51)
  br label %53

53:                                               ; preds = %134, %81, %36
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %55 = icmp ne %struct.TYPE_15__* %54, null
  br i1 %55, label %56, label %137

56:                                               ; preds = %53
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %23, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %18, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %63 = call %struct.TYPE_15__* @g_list_delete_link(%struct.TYPE_15__* %61, %struct.TYPE_15__* %62)
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %19, align 8
  %64 = load i32 (%struct.TYPE_14__*, i8*, i64*)*, i32 (%struct.TYPE_14__*, i8*, i64*)** %14, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = call i32 %64(%struct.TYPE_14__* %65, i8* %66, i64* %23)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %56
  %70 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i64, i64* %16, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %75 = call i32 @seaf_commit_unref(%struct.TYPE_14__* %74)
  %76 = load i64, i64* @FALSE, align 8
  store i64 %76, i64* %21, align 8
  br label %138

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %56
  %79 = load i64, i64* %23, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %83 = call i32 @seaf_commit_unref(%struct.TYPE_14__* %82)
  br label %53

84:                                               ; preds = %78
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %84
  %90 = load i32*, i32** %20, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %17, align 8
  %97 = call i64 @insert_parent_commit(%struct.TYPE_15__** %19, i32* %90, i8* %91, i32 %92, i64 %95, i64 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %89
  %100 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i64, i64* %16, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %105 = call i32 @seaf_commit_unref(%struct.TYPE_14__* %104)
  %106 = load i64, i64* @FALSE, align 8
  store i64 %106, i64* %21, align 8
  br label %138

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %89
  br label %109

109:                                              ; preds = %108, %84
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %109
  %115 = load i32*, i32** %20, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %17, align 8
  %122 = call i64 @insert_parent_commit(%struct.TYPE_15__** %19, i32* %115, i8* %116, i32 %117, i64 %120, i64 %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %114
  %125 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i64, i64* %16, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %130 = call i32 @seaf_commit_unref(%struct.TYPE_14__* %129)
  %131 = load i64, i64* @FALSE, align 8
  store i64 %131, i64* %21, align 8
  br label %138

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %114
  br label %134

134:                                              ; preds = %133, %109
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %136 = call i32 @seaf_commit_unref(%struct.TYPE_14__* %135)
  br label %53

137:                                              ; preds = %53
  br label %138

138:                                              ; preds = %137, %128, %103, %73
  %139 = load i32*, i32** %20, align 8
  %140 = call i32 @g_hash_table_destroy(i32* %139)
  br label %141

141:                                              ; preds = %144, %138
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %143 = icmp ne %struct.TYPE_15__* %142, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %18, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %149 = call i32 @seaf_commit_unref(%struct.TYPE_14__* %148)
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %152 = call %struct.TYPE_15__* @g_list_delete_link(%struct.TYPE_15__* %150, %struct.TYPE_15__* %151)
  store %struct.TYPE_15__* %152, %struct.TYPE_15__** %19, align 8
  br label %141

153:                                              ; preds = %141
  %154 = load i64, i64* %21, align 8
  store i64 %154, i64* %9, align 8
  br label %155

155:                                              ; preds = %153, %32
  %156 = load i64, i64* %9, align 8
  ret i64 %156
}

declare dso_local %struct.TYPE_14__* @seaf_commit_manager_get_commit(i32*, i8*, i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i32* @g_hash_table_new_full(i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_15__* @g_list_insert_sorted_with_data(%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32*) #1

declare dso_local i8* @g_strdup(i32) #1

declare dso_local i32 @g_hash_table_replace(i32*, i8*, i8*) #1

declare dso_local %struct.TYPE_15__* @g_list_delete_link(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @seaf_commit_unref(%struct.TYPE_14__*) #1

declare dso_local i64 @insert_parent_commit(%struct.TYPE_15__**, i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @g_hash_table_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
