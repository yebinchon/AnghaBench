; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_check_broken_connection.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_check_broken_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i64, i32, i32, i64, i64, i32 }
%struct.TYPE_10__ = type { i8* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"http tfs check client, write event:%d, \22%V\22\00", align 1
@ngx_http_tfs_module = common dso_local global i32 0, align 4
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_LEVEL_EVENT = common dso_local global i32 0, align 4
@NGX_WRITE_EVENT = common dso_local global i32 0, align 4
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_YES = common dso_local global i8* null, align 8
@MSG_PEEK = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"http tfs recv(): %d\00", align 1
@NGX_EAGAIN = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"client prematurely closed connection\00", align 1
@NGX_USE_KQUEUE_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_12__*)* @ngx_http_tfs_check_broken_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_tfs_check_broken_connection(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %11 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = call i32 @ngx_log_debug2(i32 %11, i32 %14, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %17, i32* %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %10, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = load i32, i32* @ngx_http_tfs_module, align 4
  %26 = call %struct.TYPE_10__* @ngx_http_get_module_ctx(%struct.TYPE_11__* %24, i32 %25)
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %9, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %2
  %32 = load i32, i32* @ngx_event_flags, align 4
  %33 = load i32, i32* @NGX_USE_LEVEL_EVENT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @NGX_WRITE_EVENT, align 4
  br label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @NGX_READ_EVENT, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %8, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ngx_del_event(%struct.TYPE_12__* %52, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %50, %36, %31
  %56 = load i8*, i8** @NGX_HTTP_TFS_YES, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %140

59:                                               ; preds = %2
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %64 = load i32, i32* @MSG_PEEK, align 4
  %65 = call i32 @recv(i32 %62, i8* %63, i32 1, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i64, i64* @ngx_socket_errno, align 8
  store i64 %66, i64* %7, align 8
  %67 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %7, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @ngx_log_debug1(i32 %67, i32 %70, i64 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %59
  %79 = load i32, i32* %5, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @NGX_EAGAIN, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %78
  br label %140

86:                                               ; preds = %81, %59
  %87 = load i32, i32* @ngx_event_flags, align 4
  %88 = load i32, i32* @NGX_USE_LEVEL_EVENT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %86
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %91
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @NGX_WRITE_EVENT, align 4
  br label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @NGX_READ_EVENT, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  store i32 %106, i32* %8, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @ngx_del_event(%struct.TYPE_12__* %107, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %105, %91, %86
  %111 = load i32, i32* %5, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %140

114:                                              ; preds = %110
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* @NGX_EAGAIN, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %140

122:                                              ; preds = %117
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  store i32 1, i32* %124, align 8
  br label %126

125:                                              ; preds = %114
  store i64 0, i64* %7, align 8
  br label %126

126:                                              ; preds = %125, %122
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 4
  %131 = load i32, i32* @NGX_LOG_INFO, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* %7, align 8
  %136 = call i32 @ngx_log_error(i32 %131, i32 %134, i64 %135, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %137 = load i8*, i8** @NGX_HTTP_TFS_YES, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %126, %121, %113, %85, %55
  ret void
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i32*) #1

declare dso_local %struct.TYPE_10__* @ngx_http_get_module_ctx(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ngx_del_event(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i64, i8*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
