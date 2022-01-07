; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_get_repo_sync_status.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_get_repo_sync_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i64, i32, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }

@path_status_tbl = common dso_local global i32* null, align 8
@SYNC_STATUS_ERROR = common dso_local global i64 0, align 8
@seaf = common dso_local global %struct.TYPE_16__* null, align 8
@SYNC_STATUS_NONE = common dso_local global i64 0, align 8
@SYNC_STATUS_PAUSED = common dso_local global i64 0, align 8
@SYNC_STATE_COMMIT = common dso_local global i64 0, align 8
@SYNC_STATE_FETCH = common dso_local global i64 0, align 8
@SYNC_STATE_UPLOAD = common dso_local global i64 0, align 8
@SYNC_STATE_MERGE = common dso_local global i64 0, align 8
@SYNC_STATUS_SYNCING = common dso_local global i64 0, align 8
@SYNC_STATUS_SYNCED = common dso_local global i64 0, align 8
@SYNC_STATUS_READONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_14__*, i8*)* @get_repo_sync_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_repo_sync_status(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca [41 x i8], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.TYPE_13__* @get_sync_info(%struct.TYPE_14__* %9, i8* %10)
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %6, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32*, i32** @path_status_tbl, align 8
  %18 = load i64, i64* @SYNC_STATUS_ERROR, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @g_strdup(i32 %20)
  store i8* %21, i8** %3, align 8
  br label %133

22:                                               ; preds = %2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** @seaf, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call %struct.TYPE_15__* @seaf_repo_manager_get_repo(i32 %25, i8* %26)
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %7, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %29 = icmp ne %struct.TYPE_15__* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %22
  %31 = load i32*, i32** @path_status_tbl, align 8
  %32 = load i64, i64* @SYNC_STATUS_NONE, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @g_strdup(i32 %34)
  store i8* %35, i8** %3, align 8
  br label %133

36:                                               ; preds = %22
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %41, %36
  %49 = load i32*, i32** @path_status_tbl, align 8
  %50 = load i64, i64* @SYNC_STATUS_PAUSED, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @g_strdup(i32 %52)
  store i8* %53, i8** %3, align 8
  br label %133

54:                                               ; preds = %41
  %55 = bitcast [41 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %55, i8 0, i64 41, i1 false)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds [41 x i8], [41 x i8]* %8, i64 0, i64 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @memcmp(i8* %61, i32 %64, i32 41)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32*, i32** @path_status_tbl, align 8
  %69 = load i64, i64* @SYNC_STATUS_NONE, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @g_strdup(i32 %71)
  store i8* %72, i8** %3, align 8
  br label %133

73:                                               ; preds = %60, %54
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %116

78:                                               ; preds = %73
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SYNC_STATE_COMMIT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %110, label %86

86:                                               ; preds = %78
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SYNC_STATE_FETCH, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %110, label %94

94:                                               ; preds = %86
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SYNC_STATE_UPLOAD, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %110, label %102

102:                                              ; preds = %94
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SYNC_STATE_MERGE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %102, %94, %86, %78
  %111 = load i32*, i32** @path_status_tbl, align 8
  %112 = load i64, i64* @SYNC_STATUS_SYNCING, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @g_strdup(i32 %114)
  store i8* %115, i8** %3, align 8
  br label %133

116:                                              ; preds = %102, %73
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %116
  %122 = load i32*, i32** @path_status_tbl, align 8
  %123 = load i64, i64* @SYNC_STATUS_SYNCED, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @g_strdup(i32 %125)
  store i8* %126, i8** %3, align 8
  br label %133

127:                                              ; preds = %116
  %128 = load i32*, i32** @path_status_tbl, align 8
  %129 = load i64, i64* @SYNC_STATUS_READONLY, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @g_strdup(i32 %131)
  store i8* %132, i8** %3, align 8
  br label %133

133:                                              ; preds = %127, %121, %110, %67, %48, %30, %16
  %134 = load i8*, i8** %3, align 8
  ret i8* %134
}

declare dso_local %struct.TYPE_13__* @get_sync_info(%struct.TYPE_14__*, i8*) #1

declare dso_local i8* @g_strdup(i32) #1

declare dso_local %struct.TYPE_15__* @seaf_repo_manager_get_repo(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
