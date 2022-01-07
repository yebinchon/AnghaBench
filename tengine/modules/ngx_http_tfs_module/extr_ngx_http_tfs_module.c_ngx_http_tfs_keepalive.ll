; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_module.c_ngx_http_tfs_keepalive.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_module.c_ngx_http_tfs_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c"max_cached=\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"bucket_count=\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"connection pool init failed\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"invalid value \22%V\22 in \22%V\22 directive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_12__*, %struct.TYPE_13__*, i8*)* @ngx_http_tfs_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_tfs_keepalive(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %8, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %11, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 1, i64* %13, align 8
  br label %22

22:                                               ; preds = %110, %3
  %23 = load i64, i64* %13, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %23, %28
  br i1 %29, label %30, label %113

30:                                               ; preds = %22
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %32 = load i64, i64* %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @ngx_strncmp(i64 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %30
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 11
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 11
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  store i64 %51, i64* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @ngx_atoi(i64 %54, i64 %56)
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @NGX_ERROR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %38
  %62 = load i64, i64* %9, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %38
  br label %132

65:                                               ; preds = %61
  br label %110

66:                                               ; preds = %30
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %68 = load i64, i64* %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @ngx_strncmp(i64 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %66
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %79, 13
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i64 %80, i64* %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %83 = load i64, i64* %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 13
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  store i64 %87, i64* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @ngx_atoi(i64 %90, i64 %92)
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @NGX_ERROR, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %74
  %98 = load i64, i64* %10, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97, %74
  br label %132

101:                                              ; preds = %97
  br label %110

102:                                              ; preds = %66
  %103 = load i32, i32* @NGX_LOG_EMERG, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i64 %106
  %108 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ngx_conf_log_error(i32 %103, %struct.TYPE_12__* %104, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %107)
  %109 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %109, i8** %4, align 8
  br label %142

110:                                              ; preds = %101, %65
  %111 = load i64, i64* %13, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %13, align 8
  br label %22

113:                                              ; preds = %22
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* %10, align 8
  %119 = call i32* @ngx_http_connection_pool_init(i32 %116, i64 %117, i64 %118)
  store i32* %119, i32** %14, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %113
  %123 = load i32, i32* @NGX_LOG_EMERG, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %125 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ngx_conf_log_error(i32 %123, %struct.TYPE_12__* %124, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %126, i8** %4, align 8
  br label %142

127:                                              ; preds = %113
  %128 = load i32*, i32** %14, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store i32* %128, i32** %130, align 8
  %131 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %131, i8** %4, align 8
  br label %142

132:                                              ; preds = %100, %64
  %133 = load i32, i32* @NGX_LOG_EMERG, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %136 = load i64, i64* %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i64 %136
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = call i32 (i32, %struct.TYPE_12__*, i32, i8*, ...) @ngx_conf_log_error(i32 %133, %struct.TYPE_12__* %134, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_10__* %137, i32* %139)
  %141 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %141, i8** %4, align 8
  br label %142

142:                                              ; preds = %132, %127, %122, %102
  %143 = load i8*, i8** %4, align 8
  ret i8* %143
}

declare dso_local i64 @ngx_strncmp(i64, i8*, i32) #1

declare dso_local i64 @ngx_atoi(i64, i64) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32* @ngx_http_connection_pool_init(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
