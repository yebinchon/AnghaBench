; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_tx_task_download_file_blocks.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_tx_task_download_file_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { i64, i8*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i8** }

@seaf = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"Failed to find seafile object %s in repo %.8s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to create connection pool for host %s.\0A\00", align 1
@SYNC_ERROR_ID_NOT_ENOUGH_MEMORY = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to get connection to host %s.\0A\00", align 1
@HTTP_TASK_STATE_CANCELED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_tx_task_download_file_blocks(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** @seaf, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** @seaf, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct.TYPE_10__* @seaf_fs_manager_get_seafile(i32 %20, i32 %23, i32 %26, i8* %27)
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %6, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = icmp ne %struct.TYPE_10__* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %2
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %35)
  store i32 -1, i32* %3, align 4
  br label %113

37:                                               ; preds = %2
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32* @find_connection_pool(i32* %38, i32 %41)
  store i32* %42, i32** %8, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %37
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i8*, i8** @SYNC_ERROR_ID_NOT_ENOUGH_MEMORY, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = call i32 @seafile_unref(%struct.TYPE_10__* %55)
  store i32 -1, i32* %3, align 4
  br label %113

57:                                               ; preds = %37
  %58 = load i32*, i32** %8, align 8
  %59 = call i32* @connection_pool_get_connection(i32* %58)
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %74, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  %69 = load i8*, i8** @SYNC_ERROR_ID_NOT_ENOUGH_MEMORY, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = call i32 @seafile_unref(%struct.TYPE_10__* %72)
  store i32 -1, i32* %3, align 4
  br label %113

74:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %103, %74
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %75
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %12, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @get_block(%struct.TYPE_11__* %89, i32* %90, i8* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %81
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @HTTP_TASK_STATE_CANCELED, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95, %81
  br label %106

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %75

106:                                              ; preds = %101, %75
  %107 = load i32*, i32** %8, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @connection_pool_return_connection(i32* %107, i32* %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = call i32 @seafile_unref(%struct.TYPE_10__* %110)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %106, %62, %45, %31
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.TYPE_10__* @seaf_fs_manager_get_seafile(i32, i32, i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, ...) #1

declare dso_local i32* @find_connection_pool(i32*, i32) #1

declare dso_local i32 @seafile_unref(%struct.TYPE_10__*) #1

declare dso_local i32* @connection_pool_get_connection(i32*) #1

declare dso_local i32 @get_block(%struct.TYPE_11__*, i32*, i8*) #1

declare dso_local i32 @connection_pool_return_connection(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
