; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_restart_task.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_restart_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64, i32, i64, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32* }

@TRUE = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_18__* null, align 8
@CLONE_STATE_DONE = common dso_local global i32 0, align 4
@SYNC_ERROR_ID_GENERAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @restart_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restart_task(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %6, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @sqlite3_column_text(i32* %20, i32 0)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %7, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @sqlite3_column_text(i32* %23, i32 1)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %8, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @sqlite3_column_text(i32* %26, i32 2)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %9, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @sqlite3_column_text(i32* %29, i32 3)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %10, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @sqlite3_column_text(i32* %32, i32 4)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %11, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @sqlite3_column_text(i32* %35, i32 5)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %12, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i64 @sqlite3_column_text(i32* %38, i32 6)
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %13, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @sqlite3_column_text(i32* %41, i32 7)
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %14, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i64 @sqlite3_column_text(i32* %44, i32 8)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %15, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = call %struct.TYPE_17__* @clone_task_new(i8* %47, i8* %48, i8* %49, i8* %50, i8* %51, i8* %52, i8* %53, i8* %54, i8* %55)
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %16, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 4
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %59, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %2
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %66 = call i64 @load_clone_enc_info(%struct.TYPE_17__* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %70 = call i32 @clone_task_free(%struct.TYPE_17__* %69)
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %3, align 4
  br label %126

72:                                               ; preds = %64, %2
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %76 = call i32 @load_clone_repo_version_info(%struct.TYPE_17__* %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %78 = call i32 @load_clone_more_info(%struct.TYPE_17__* %77)
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** @seaf, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = call %struct.TYPE_15__* @seaf_repo_manager_get_repo(i32 %81, i8* %82)
  store %struct.TYPE_15__* %83, %struct.TYPE_15__** %17, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %85 = icmp ne %struct.TYPE_15__* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %72
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %93 = load i32, i32* @CLONE_STATE_DONE, align 4
  %94 = call i32 @transition_state(%struct.TYPE_17__* %92, i32 %93)
  %95 = load i32, i32* @TRUE, align 4
  store i32 %95, i32* %3, align 4
  br label %126

96:                                               ; preds = %86, %72
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %108 = call i32 @check_http_protocol(%struct.TYPE_17__* %107)
  br label %114

109:                                              ; preds = %101
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %111 = load i32, i32* @SYNC_ERROR_ID_GENERAL_ERROR, align 4
  %112 = call i32 @transition_to_error(%struct.TYPE_17__* %110, i32 %111)
  %113 = load i32, i32* @TRUE, align 4
  store i32 %113, i32* %3, align 4
  br label %126

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114, %96
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @g_strdup(i32 %121)
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %124 = call i32 @g_hash_table_insert(i32 %118, i32 %122, %struct.TYPE_17__* %123)
  %125 = load i32, i32* @TRUE, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %115, %109, %91, %68
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local %struct.TYPE_17__* @clone_task_new(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @load_clone_enc_info(%struct.TYPE_17__*) #1

declare dso_local i32 @clone_task_free(%struct.TYPE_17__*) #1

declare dso_local i32 @load_clone_repo_version_info(%struct.TYPE_17__*) #1

declare dso_local i32 @load_clone_more_info(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_15__* @seaf_repo_manager_get_repo(i32, i8*) #1

declare dso_local i32 @transition_state(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @check_http_protocol(%struct.TYPE_17__*) #1

declare dso_local i32 @transition_to_error(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @g_hash_table_insert(i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @g_strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
