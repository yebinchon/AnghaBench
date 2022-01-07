; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_handle_add_files.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_handle_add_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.index_state = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i8* }
%struct.TYPE_14__ = type { i32*, i32 }
%struct.TYPE_15__ = type { i8*, i64, i8* }

@MAX_COMMIT_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Creating partial commit after adding %s.\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Remain files for %s.\0A\00", align 1
@seaf = common dso_local global %struct.TYPE_17__* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Adding remaining files for %s.\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, %struct.index_state*, i32*, i32*, i32*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32**, i64*)* @handle_add_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @handle_add_files(%struct.TYPE_16__* %0, %struct.index_state* %1, i32* %2, i32* %3, i32* %4, %struct.TYPE_13__* %5, %struct.TYPE_14__* %6, i32** %7, i64* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.index_state*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i64*, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %11, align 8
  store %struct.index_state* %1, %struct.index_state** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %17, align 8
  store i32** %7, i32*** %18, align 8
  store i64* %8, i64** %19, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %9
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %28 = load %struct.index_state*, %struct.index_state** %12, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = load i32**, i32*** %18, align 8
  %35 = load i64*, i64** %19, align 8
  %36 = call i32 @add_path_to_index(%struct.TYPE_16__* %27, %struct.index_state* %28, i32* %29, i32 %32, i32* %33, i32** %34, i64* %35, i32** null, i32* null)
  br label %163

37:                                               ; preds = %9
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %118, label %42

42:                                               ; preds = %37
  store i32* null, i32** %21, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %44 = load %struct.index_state*, %struct.index_state** %12, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i32**, i32*** %18, align 8
  %51 = load i64*, i64** %19, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @add_path_to_index(%struct.TYPE_16__* %43, %struct.index_state* %44, i32* %45, i32 %48, i32* %49, i32** %50, i64* %51, i32** %21, i32* %52)
  %54 = load i64*, i64** %19, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MAX_COMMIT_SIZE, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %117

58:                                               ; preds = %42
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @seaf_message(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i8*, i8** @TRUE, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i32*, i32** %21, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %115

68:                                               ; preds = %58
  %69 = load i32*, i32** %21, align 8
  %70 = call i64 @g_queue_get_length(i32* %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32*, i32** %21, align 8
  %74 = call i32 @g_queue_free(i32* %73)
  %75 = load i8*, i8** @TRUE, align 8
  store i8* %75, i8** %10, align 8
  br label %165

76:                                               ; preds = %68
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @seaf_message(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** %21, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store i32* %81, i32** %83, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = call i32 @pthread_mutex_lock(i32* %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %91 = call i32 @g_queue_push_head(i32 %89, %struct.TYPE_14__* %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = call i32 @pthread_mutex_unlock(i32* %93)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** @seaf, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call %struct.TYPE_15__* @seaf_sync_manager_get_sync_info(i32 %97, i32 %100)
  store %struct.TYPE_15__* %101, %struct.TYPE_15__** %20, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %114, label %106

106:                                              ; preds = %76
  %107 = load i8*, i8** @TRUE, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load i64*, i64** %19, align 8
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %106, %76
  br label %115

115:                                              ; preds = %114, %58
  %116 = load i8*, i8** @TRUE, align 8
  store i8* %116, i8** %10, align 8
  br label %165

117:                                              ; preds = %42
  br label %162

118:                                              ; preds = %37
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @seaf_message(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %124 = load %struct.index_state*, %struct.index_state** %12, align 8
  %125 = load i32*, i32** %13, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32*, i32** %14, align 8
  %130 = load i64*, i64** %19, align 8
  %131 = call i32 @add_remain_files(%struct.TYPE_16__* %123, %struct.index_state* %124, i32* %125, i32* %128, i32* %129, i64* %130)
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = call i64 @g_queue_get_length(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %118
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = call i32 @pthread_mutex_lock(i32* %139)
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %145 = call i32 @g_queue_push_head(i32 %143, %struct.TYPE_14__* %144)
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = call i32 @pthread_mutex_unlock(i32* %147)
  %149 = load i8*, i8** @TRUE, align 8
  store i8* %149, i8** %10, align 8
  br label %165

150:                                              ; preds = %118
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** @seaf, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call %struct.TYPE_15__* @seaf_sync_manager_get_sync_info(i32 %153, i32 %156)
  store %struct.TYPE_15__* %157, %struct.TYPE_15__** %20, align 8
  %158 = load i8*, i8** @TRUE, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  %161 = load i8*, i8** @TRUE, align 8
  store i8* %161, i8** %10, align 8
  br label %165

162:                                              ; preds = %117
  br label %163

163:                                              ; preds = %162, %26
  %164 = load i8*, i8** @FALSE, align 8
  store i8* %164, i8** %10, align 8
  br label %165

165:                                              ; preds = %163, %150, %137, %115, %72
  %166 = load i8*, i8** %10, align 8
  ret i8* %166
}

declare dso_local i32 @add_path_to_index(%struct.TYPE_16__*, %struct.index_state*, i32*, i32, i32*, i32**, i64*, i32**, i32*) #1

declare dso_local i32 @seaf_message(i8*, i32) #1

declare dso_local i64 @g_queue_get_length(i32*) #1

declare dso_local i32 @g_queue_free(i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @g_queue_push_head(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_15__* @seaf_sync_manager_get_sync_info(i32, i32) #1

declare dso_local i32 @add_remain_files(%struct.TYPE_16__*, %struct.index_state*, i32*, i32*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
