; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_seaf_clone_manager_add_task.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_seaf_clone_manager_add_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"System not started, skip adding clone task.\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to load more sync info from json: %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"repo_salt\00", align 1
@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_GENERAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Repo already exists\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Task is already in progress\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Incorrect password\00", align 1
@SEAF_ERR_BAD_ARGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @seaf_clone_manager_add_task(i32* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i32 %8, i8* %9, i8* %10, i8* %11, i8* %12, i8* %13, i8* %14, i32** %15) #0 {
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32**, align 8
  %33 = alloca %struct.TYPE_10__*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca %struct.TYPE_8__, align 4
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %17, align 8
  store i8* %1, i8** %18, align 8
  store i32 %2, i32* %19, align 4
  store i8* %3, i8** %20, align 8
  store i8* %4, i8** %21, align 8
  store i8* %5, i8** %22, align 8
  store i8* %6, i8** %23, align 8
  store i8* %7, i8** %24, align 8
  store i32 %8, i32* %25, align 4
  store i8* %9, i8** %26, align 8
  store i8* %10, i8** %27, align 8
  store i8* %11, i8** %28, align 8
  store i8* %12, i8** %29, align 8
  store i8* %13, i8** %30, align 8
  store i8* %14, i8** %31, align 8
  store i32** %15, i32*** %32, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %33, align 8
  store i8* null, i8** %34, align 8
  store i8* null, i8** %35, align 8
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %36, align 4
  store i8* null, i8** %37, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** @seaf, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %16
  %48 = call i32 @seaf_message(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %203

49:                                               ; preds = %16
  %50 = load i8*, i8** %31, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %73

52:                                               ; preds = %49
  %53 = load i8*, i8** %31, align 8
  %54 = call i32* @json_loads(i8* %53, i32 0, %struct.TYPE_8__* %38)
  store i32* %54, i32** %39, align 8
  %55 = load i32*, i32** %39, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %203

61:                                               ; preds = %52
  %62 = load i32*, i32** %39, align 8
  %63 = call i32* @json_object_get(i32* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32* %63, i32** %40, align 8
  %64 = load i32*, i32** %40, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32*, i32** %40, align 8
  %68 = call i32 @json_string_value(i32* %67)
  %69 = call i8* @g_strdup(i32 %68)
  store i8* %69, i8** %37, align 8
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32*, i32** %39, align 8
  %72 = call i32 @json_decref(i32* %71)
  br label %73

73:                                               ; preds = %70, %49
  %74 = load i8*, i8** %23, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i8*, i8** %24, align 8
  %78 = load i32, i32* %25, align 4
  %79 = load i8*, i8** %26, align 8
  %80 = load i8*, i8** %37, align 8
  %81 = load i32**, i32*** %32, align 8
  %82 = call i32 @check_encryption_args(i8* %77, i32 %78, i8* %79, i8* %80, i32** %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  br label %203

85:                                               ; preds = %76, %73
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** @seaf, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %18, align 8
  %90 = call %struct.TYPE_9__* @seaf_sync_manager_get_sync_info(i32 %88, i8* %89)
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %41, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %92 = icmp ne %struct.TYPE_9__* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %85
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32**, i32*** %32, align 8
  %100 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %101 = load i32, i32* @SEAF_ERR_GENERAL, align 4
  %102 = call i32 @g_set_error(i32** %99, i32 %100, i32 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %203

103:                                              ; preds = %93, %85
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** @seaf, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %18, align 8
  %108 = call %struct.TYPE_10__* @seaf_repo_manager_get_repo(i32 %106, i8* %107)
  store %struct.TYPE_10__* %108, %struct.TYPE_10__** %33, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %110 = icmp ne %struct.TYPE_10__* %109, null
  br i1 %110, label %111, label %121

111:                                              ; preds = %103
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i32**, i32*** %32, align 8
  %118 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %119 = load i32, i32* @SEAF_ERR_GENERAL, align 4
  %120 = call i32 @g_set_error(i32** %117, i32 %118, i32 %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %203

121:                                              ; preds = %111, %103
  %122 = load i32*, i32** %17, align 8
  %123 = load i8*, i8** %18, align 8
  %124 = call i64 @is_duplicate_task(i32* %122, i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i32**, i32*** %32, align 8
  %128 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %129 = load i32, i32* @SEAF_ERR_GENERAL, align 4
  %130 = call i32 @g_set_error(i32** %127, i32 %128, i32 %129, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %203

131:                                              ; preds = %121
  %132 = load i8*, i8** %23, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %147

134:                                              ; preds = %131
  %135 = load i8*, i8** %18, align 8
  %136 = load i8*, i8** %23, align 8
  %137 = load i8*, i8** %24, align 8
  %138 = load i32, i32* %25, align 4
  %139 = load i8*, i8** %37, align 8
  %140 = call i64 @seafile_verify_repo_passwd(i8* %135, i8* %136, i8* %137, i32 %138, i8* %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %134
  %143 = load i32**, i32*** %32, align 8
  %144 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %145 = load i32, i32* @SEAF_ERR_GENERAL, align 4
  %146 = call i32 @g_set_error(i32** %143, i32 %144, i32 %145, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %203

147:                                              ; preds = %134, %131
  %148 = load i32*, i32** %17, align 8
  %149 = load i8*, i8** %27, align 8
  %150 = load i32**, i32*** %32, align 8
  %151 = call i32 @seaf_clone_manager_check_worktree_path(i32* %148, i8* %149, i32** %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %147
  br label %203

154:                                              ; preds = %147
  %155 = load i32*, i32** %17, align 8
  %156 = load i8*, i8** %27, align 8
  %157 = load i32, i32* @FALSE, align 4
  %158 = load i32**, i32*** %32, align 8
  %159 = call i8* @make_worktree(i32* %155, i8* %156, i32 %157, i32** %158)
  store i8* %159, i8** %34, align 8
  %160 = load i8*, i8** %34, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %154
  br label %203

163:                                              ; preds = %154
  %164 = load i8*, i8** %34, align 8
  %165 = load i8*, i8** %21, align 8
  %166 = call i32 @is_wt_repo_name_same(i8* %164, i8* %165)
  store i32 %166, i32* %36, align 4
  %167 = load i32, i32* %19, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %163
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** @seaf, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i8*, i8** %18, align 8
  %174 = call i32 @seaf_repo_manager_remove_garbage_repo(i32 %172, i8* %173)
  br label %175

175:                                              ; preds = %169, %163
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %177 = icmp ne %struct.TYPE_10__* %176, null
  br i1 %177, label %185, label %178

178:                                              ; preds = %175
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** @seaf, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i8*, i8** %18, align 8
  %183 = load i32, i32* @FALSE, align 4
  %184 = call i32 @seaf_repo_manager_remove_repo_ondisk(i32 %181, i8* %182, i32 %183)
  br label %185

185:                                              ; preds = %178, %175
  %186 = load i32*, i32** %17, align 8
  %187 = load i8*, i8** %18, align 8
  %188 = load i32, i32* %19, align 4
  %189 = load i8*, i8** %20, align 8
  %190 = load i8*, i8** %21, align 8
  %191 = load i8*, i8** %22, align 8
  %192 = load i8*, i8** %23, align 8
  %193 = load i32, i32* %25, align 4
  %194 = load i8*, i8** %26, align 8
  %195 = load i8*, i8** %34, align 8
  %196 = load i8*, i8** %28, align 8
  %197 = load i8*, i8** %29, align 8
  %198 = load i8*, i8** %30, align 8
  %199 = load i8*, i8** %31, align 8
  %200 = load i32, i32* %36, align 4
  %201 = load i32**, i32*** %32, align 8
  %202 = call i8* @add_task_common(i32* %186, i8* %187, i32 %188, i8* %189, i8* %190, i8* %191, i8* %192, i32 %193, i8* %194, i8* %195, i8* %196, i8* %197, i8* %198, i8* %199, i32 %200, i32** %201)
  store i8* %202, i8** %35, align 8
  br label %203

203:                                              ; preds = %185, %162, %153, %142, %126, %116, %98, %84, %57, %47
  %204 = load i8*, i8** %34, align 8
  %205 = call i32 @g_free(i8* %204)
  %206 = load i8*, i8** %37, align 8
  %207 = call i32 @g_free(i8* %206)
  %208 = load i8*, i8** %35, align 8
  ret i8* %208
}

declare dso_local i32 @seaf_message(i8*) #1

declare dso_local i32* @json_loads(i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i32* @json_object_get(i32*, i8*) #1

declare dso_local i8* @g_strdup(i32) #1

declare dso_local i32 @json_string_value(i32*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i32 @check_encryption_args(i8*, i32, i8*, i8*, i32**) #1

declare dso_local %struct.TYPE_9__* @seaf_sync_manager_get_sync_info(i32, i8*) #1

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*) #1

declare dso_local %struct.TYPE_10__* @seaf_repo_manager_get_repo(i32, i8*) #1

declare dso_local i64 @is_duplicate_task(i32*, i8*) #1

declare dso_local i64 @seafile_verify_repo_passwd(i8*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @seaf_clone_manager_check_worktree_path(i32*, i8*, i32**) #1

declare dso_local i8* @make_worktree(i32*, i8*, i32, i32**) #1

declare dso_local i32 @is_wt_repo_name_same(i8*, i8*) #1

declare dso_local i32 @seaf_repo_manager_remove_garbage_repo(i32, i8*) #1

declare dso_local i32 @seaf_repo_manager_remove_repo_ondisk(i32, i8*, i32) #1

declare dso_local i8* @add_task_common(i32*, i8*, i32, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32**) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
