; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_module.c_ngx_http_tfs_rcs_heartbeat.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_module.c_ngx_http_tfs_rcs_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }

@.str = private unnamed_addr constant [11 x i8] c"lock_file=\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"interval=\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"invalid value\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"tfs_poll directive must have lock file\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_MIN_TIMER_DELAY = common dso_local global i64 0, align 8
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"tfs_poll interval is small, so reset this value to 1000\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"invalid value \22%V\22 in \22%V\22 directive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_13__*, %struct.TYPE_12__*)* @ngx_http_tfs_rcs_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_tfs_rcs_heartbeat(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %6, align 8
  store i64 1, i64* %9, align 8
  br label %15

15:                                               ; preds = %91, %2
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %16, %21
  br i1 %22, label %23, label %94

23:                                               ; preds = %15
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @ngx_strncmp(i64 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %23
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 10
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i64 %37, i64* %38, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 10
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ngx_conf_full_name(i32 %48, %struct.TYPE_11__* %7, i32 0)
  %50 = load i64, i64* @NGX_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %31
  br label %120

53:                                               ; preds = %31
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = bitcast %struct.TYPE_11__* %55 to i8*
  %57 = bitcast %struct.TYPE_11__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  br label %91

58:                                               ; preds = %23
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @ngx_strncmp(i64 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %58
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 9
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i64 %72, i64* %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, 9
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i64 %79, i64* %80, align 8
  %81 = call i64 @ngx_parse_time(%struct.TYPE_11__* %7, i32 0)
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @NGX_ERROR, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %66
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %130

86:                                               ; preds = %66
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %91

90:                                               ; preds = %58
  br label %120

91:                                               ; preds = %86, %53
  %92 = load i64, i64* %9, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %9, align 8
  br label %15

94:                                               ; preds = %15
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load i32, i32* @NGX_LOG_EMERG, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ngx_conf_log_error(i32 %101, %struct.TYPE_13__* %102, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %104, i8** %3, align 8
  br label %130

105:                                              ; preds = %94
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NGX_HTTP_TFS_MIN_TIMER_DELAY, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load i64, i64* @NGX_HTTP_TFS_MIN_TIMER_DELAY, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load i32, i32* @NGX_LOG_WARN, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %117 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ngx_conf_log_error(i32 %115, %struct.TYPE_13__* %116, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %111, %105
  %119 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %119, i8** %3, align 8
  br label %130

120:                                              ; preds = %90, %52
  %121 = load i32, i32* @NGX_LOG_EMERG, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %124 = load i64, i64* %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i64 %124
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i64 0
  %128 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ngx_conf_log_error(i32 %121, %struct.TYPE_13__* %122, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_11__* %125, %struct.TYPE_11__* %127)
  %129 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %129, i8** %3, align 8
  br label %130

130:                                              ; preds = %120, %118, %100, %85
  %131 = load i8*, i8** %3, align 8
  ret i8* %131
}

declare dso_local i64 @ngx_strncmp(i64, i8*, i32) #1

declare dso_local i64 @ngx_conf_full_name(i32, %struct.TYPE_11__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_parse_time(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_13__*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
