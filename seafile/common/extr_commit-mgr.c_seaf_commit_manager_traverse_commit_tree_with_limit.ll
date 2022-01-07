; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_commit-mgr.c_seaf_commit_manager_traverse_commit_tree_with_limit.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_commit-mgr.c_seaf_commit_manager_traverse_commit_tree_with_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }

@TRUE = common dso_local global i64 0, align 8
@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@g_free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to find commit %s.\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@compare_commit_by_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @seaf_commit_manager_traverse_commit_tree_with_limit(i32* %0, i8* %1, i32 %2, i8* %3, i32 (%struct.TYPE_14__*, i8*, i64*)* %4, i32 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32 (%struct.TYPE_14__*, i8*, i64*)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 (%struct.TYPE_14__*, i8*, i64*)* %4, i32 (%struct.TYPE_14__*, i8*, i64*)** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %19, align 8
  %25 = load i64, i64* @TRUE, align 8
  store i64 %25, i64* %21, align 8
  %26 = load i32, i32* @g_str_hash, align 4
  %27 = load i32, i32* @g_str_equal, align 4
  %28 = load i32, i32* @g_free, align 4
  %29 = call i32* @g_hash_table_new_full(i32 %26, i32 %27, i32 %28, i32* null)
  store i32* %29, i32** %20, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i8*, i8** %13, align 8
  %34 = call %struct.TYPE_14__* @seaf_commit_manager_get_commit(i32* %30, i8* %31, i32 %32, i8* %33)
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %18, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %36 = icmp ne %struct.TYPE_14__* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %8
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @seaf_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %9, align 8
  br label %164

41:                                               ; preds = %8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %44 = load i32, i32* @compare_commit_by_time, align 4
  %45 = call %struct.TYPE_15__* @g_list_insert_sorted_with_data(%struct.TYPE_15__* %42, %struct.TYPE_14__* %43, i32 %44, i32* null)
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %19, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @g_strdup(i32 %48)
  store i8* %49, i8** %22, align 8
  %50 = load i32*, i32** %20, align 8
  %51 = load i8*, i8** %22, align 8
  %52 = load i8*, i8** %22, align 8
  %53 = call i32 @g_hash_table_replace(i32* %50, i8* %51, i8* %52)
  store i32 0, i32* %23, align 4
  br label %54

54:                                               ; preds = %143, %92, %41
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %56 = icmp ne %struct.TYPE_15__* %55, null
  br i1 %56, label %57, label %146

57:                                               ; preds = %54
  %58 = load i64, i64* @FALSE, align 8
  store i64 %58, i64* %24, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %18, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %64 = call %struct.TYPE_15__* @g_list_delete_link(%struct.TYPE_15__* %62, %struct.TYPE_15__* %63)
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %19, align 8
  %65 = load i32 (%struct.TYPE_14__*, i8*, i64*)*, i32 (%struct.TYPE_14__*, i8*, i64*)** %14, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = call i32 %65(%struct.TYPE_14__* %66, i8* %67, i64* %24)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %57
  %71 = load i64, i64* %17, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %75 = call i32 @seaf_commit_unref(%struct.TYPE_14__* %74)
  %76 = load i64, i64* @FALSE, align 8
  store i64 %76, i64* %21, align 8
  br label %147

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %57
  %79 = load i32, i32* %15, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i32, i32* %23, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %23, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %88 = call i32 @seaf_commit_unref(%struct.TYPE_14__* %87)
  br label %146

89:                                               ; preds = %81, %78
  %90 = load i64, i64* %24, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %94 = call i32 @seaf_commit_unref(%struct.TYPE_14__* %93)
  br label %54

95:                                               ; preds = %89
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %95
  %101 = load i32*, i32** %20, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @FALSE, align 8
  %108 = call i64 @insert_parent_commit(%struct.TYPE_15__** %19, i32* %101, i8* %102, i32 %103, i64 %106, i64 %107)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %100
  %111 = load i64, i64* %17, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %115 = call i32 @seaf_commit_unref(%struct.TYPE_14__* %114)
  %116 = load i64, i64* @FALSE, align 8
  store i64 %116, i64* %21, align 8
  br label %147

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %100
  br label %119

119:                                              ; preds = %118, %95
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %119
  %125 = load i32*, i32** %20, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @FALSE, align 8
  %132 = call i64 @insert_parent_commit(%struct.TYPE_15__** %19, i32* %125, i8* %126, i32 %127, i64 %130, i64 %131)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %124
  %135 = load i64, i64* %17, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %139 = call i32 @seaf_commit_unref(%struct.TYPE_14__* %138)
  %140 = load i64, i64* @FALSE, align 8
  store i64 %140, i64* %21, align 8
  br label %147

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141, %124
  br label %143

143:                                              ; preds = %142, %119
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %145 = call i32 @seaf_commit_unref(%struct.TYPE_14__* %144)
  br label %54

146:                                              ; preds = %86, %54
  br label %147

147:                                              ; preds = %146, %137, %113, %73
  %148 = load i32*, i32** %20, align 8
  %149 = call i32 @g_hash_table_destroy(i32* %148)
  br label %150

150:                                              ; preds = %153, %147
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %152 = icmp ne %struct.TYPE_15__* %151, null
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  store %struct.TYPE_14__* %156, %struct.TYPE_14__** %18, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %158 = call i32 @seaf_commit_unref(%struct.TYPE_14__* %157)
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %161 = call %struct.TYPE_15__* @g_list_delete_link(%struct.TYPE_15__* %159, %struct.TYPE_15__* %160)
  store %struct.TYPE_15__* %161, %struct.TYPE_15__** %19, align 8
  br label %150

162:                                              ; preds = %150
  %163 = load i64, i64* %21, align 8
  store i64 %163, i64* %9, align 8
  br label %164

164:                                              ; preds = %162, %37
  %165 = load i64, i64* %9, align 8
  ret i64 %165
}

declare dso_local i32* @g_hash_table_new_full(i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @seaf_commit_manager_get_commit(i32*, i8*, i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

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
