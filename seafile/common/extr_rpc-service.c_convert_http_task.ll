; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_convert_http_task.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_convert_http_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"repo_id\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"rt_state\00", align 1
@HTTP_TASK_TYPE_DOWNLOAD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"ttype\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"download\00", align 1
@HTTP_TASK_RT_STATE_BLOCK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"block_total\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"block_done\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@HTTP_TASK_RT_STATE_FS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"fs_objects_total\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"fs_objects_done\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"upload\00", align 1
@seaf = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*)* @convert_http_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @convert_http_task(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = call i32* (...) @seafile_task_new()
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @http_task_state_to_str(i32 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @http_task_rt_state_to_str(i64 %18)
  %20 = call i32 (i32*, i8*, i8*, i8*, ...) @g_object_set(i32* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %19, i8* null)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HTTP_TASK_TYPE_DOWNLOAD, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %68

26:                                               ; preds = %1
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 (i32*, i8*, i8*, i8*, ...) @g_object_set(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* null)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HTTP_TASK_RT_STATE_BLOCK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %26
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32*, i8*, i8*, i8*, ...) @g_object_set(i32* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %43, i8* null)
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = call i8* @http_tx_task_get_rate(%struct.TYPE_8__* %46)
  %48 = call i32 (i32*, i8*, i8*, i8*, ...) @g_object_set(i32* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %47, i8* null)
  br label %67

49:                                               ; preds = %26
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HTTP_TASK_RT_STATE_FS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i32*, i32** %3, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32*, i8*, i8*, i8*, ...) @g_object_set(i32* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %64, i8* null)
  br label %66

66:                                               ; preds = %55, %49
  br label %67

67:                                               ; preds = %66, %34
  br label %121

68:                                               ; preds = %1
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 (i32*, i8*, i8*, i8*, ...) @g_object_set(i32* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* null)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @HTTP_TASK_RT_STATE_BLOCK, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %120

76:                                               ; preds = %68
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** @seaf, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.TYPE_7__* @seaf_sync_manager_get_sync_info(i32 %79, i32 %82)
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %4, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = icmp ne %struct.TYPE_7__* %84, null
  br i1 %85, label %86, label %102

86:                                               ; preds = %76
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load i32*, i32** %3, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i32*, i8*, i8*, i8*, ...) @g_object_set(i32* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %100, i8* null)
  br label %115

102:                                              ; preds = %86, %76
  %103 = load i32*, i32** %3, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 (i32*, i8*, i8*, i8*, ...) @g_object_set(i32* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %113, i8* null)
  br label %115

115:                                              ; preds = %102, %91
  %116 = load i32*, i32** %3, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %118 = call i8* @http_tx_task_get_rate(%struct.TYPE_8__* %117)
  %119 = call i32 (i32*, i8*, i8*, i8*, ...) @g_object_set(i32* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %118, i8* null)
  br label %120

120:                                              ; preds = %115, %68
  br label %121

121:                                              ; preds = %120, %67
  %122 = load i32*, i32** %3, align 8
  ret i32* %122
}

declare dso_local i32* @seafile_task_new(...) #1

declare dso_local i32 @g_object_set(i32*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @http_task_state_to_str(i32) #1

declare dso_local i32 @http_task_rt_state_to_str(i64) #1

declare dso_local i8* @http_tx_task_get_rate(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_7__* @seaf_sync_manager_get_sync_info(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
