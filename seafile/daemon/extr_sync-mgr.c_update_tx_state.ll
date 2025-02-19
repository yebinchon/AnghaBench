; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_update_tx_state.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_update_tx_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i8*, i32, i8* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_13__* }

@seaf = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"transfer\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @update_tx_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_tx_state(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %3, align 8
  %10 = call %struct.TYPE_12__* @g_string_new(i32* null)
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %4, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = call i8* @g_atomic_int_get(i32* %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = call i32 @g_atomic_int_set(i32* %17, i32 0)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = call i8* @g_atomic_int_get(i32* %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = call i32 @g_atomic_int_set(i32* %25, i32 0)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_13__* @http_tx_manager_get_upload_tasks(i32 %29)
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %5, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %6, align 8
  br label %32

32:                                               ; preds = %42, %1
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = icmp ne %struct.TYPE_13__* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = call i32 @format_http_task_detail(i32* %39, %struct.TYPE_12__* %40)
  br label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %6, align 8
  br label %32

46:                                               ; preds = %32
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = call i32 @g_list_free(%struct.TYPE_13__* %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.TYPE_13__* @http_tx_manager_get_download_tasks(i32 %51)
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %5, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %6, align 8
  br label %54

54:                                               ; preds = %64, %46
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = icmp ne %struct.TYPE_13__* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = call i32 @format_http_task_detail(i32* %61, %struct.TYPE_12__* %62)
  br label %64

64:                                               ; preds = %57
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %6, align 8
  br label %54

68:                                               ; preds = %54
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = call i32 @g_list_free(%struct.TYPE_13__* %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @seaf_mq_manager_publish_notification(i32 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %75, %68
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = load i32, i32* @TRUE, align 4
  %86 = call i32 @g_string_free(%struct.TYPE_12__* %84, i32 %85)
  %87 = load i32, i32* @TRUE, align 4
  ret i32 %87
}

declare dso_local %struct.TYPE_12__* @g_string_new(i32*) #1

declare dso_local i8* @g_atomic_int_get(i32*) #1

declare dso_local i32 @g_atomic_int_set(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @http_tx_manager_get_upload_tasks(i32) #1

declare dso_local i32 @format_http_task_detail(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @g_list_free(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @http_tx_manager_get_download_tasks(i32) #1

declare dso_local i32 @seaf_mq_manager_publish_notification(i32, i8*, i32) #1

declare dso_local i32 @g_string_free(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
