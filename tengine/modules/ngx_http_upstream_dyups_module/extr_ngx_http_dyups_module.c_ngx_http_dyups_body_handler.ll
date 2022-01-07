; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_body_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_body_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NGX_HTTP_POST = common dso_local global i64 0, align 8
@NGX_HTTP_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_NO_CONTENT = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"[dyups] interface no content\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"no content\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"not support this interface\00", align 1
@NGX_HTTP_NOT_FOUND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"upstream\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"not support this api\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"[dyups] post upstream name: %V\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @ngx_http_dyups_body_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_dyups_body_handler(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_18__, align 4
  %5 = alloca %struct.TYPE_18__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %9 = call i32 @ngx_str_set(%struct.TYPE_18__* %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NGX_HTTP_POST, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @NGX_HTTP_NOT_ALLOWED, align 4
  store i32 %16, i32* %6, align 4
  br label %111

17:                                               ; preds = %1
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 3
  %23 = call %struct.TYPE_20__* @ngx_dyups_parse_path(i32 %20, i32* %22)
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %8, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %25 = icmp eq %struct.TYPE_20__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = call i32 @ngx_str_set(%struct.TYPE_18__* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %28, i32* %6, align 4
  br label %111

29:                                               ; preds = %17
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = icmp eq %struct.TYPE_16__* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %34, %29
  %42 = load i32, i32* @NGX_HTTP_NO_CONTENT, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ngx_log_debug0(i32 %43, i32 %48, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 @ngx_str_set(%struct.TYPE_18__* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %111

51:                                               ; preds = %34
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %60 = call i32* @ngx_http_dyups_read_body_from_file(%struct.TYPE_19__* %59)
  store i32* %60, i32** %7, align 8
  br label %64

61:                                               ; preds = %51
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %63 = call i32* @ngx_http_dyups_read_body(%struct.TYPE_19__* %62)
  store i32* %63, i32** %7, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32*, i32** %7, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %68, i32* %6, align 4
  %69 = call i32 @ngx_str_set(%struct.TYPE_18__* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %111

70:                                               ; preds = %64
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 2
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = call i32 @ngx_str_set(%struct.TYPE_18__* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i32, i32* @NGX_HTTP_NOT_FOUND, align 4
  store i32 %77, i32* %6, align 4
  br label %111

78:                                               ; preds = %70
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  store %struct.TYPE_18__* %81, %struct.TYPE_18__** %3, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 8
  br i1 %86, label %94, label %87

87:                                               ; preds = %78
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @ngx_strncasecmp(i32 %91, i32* bitcast ([9 x i8]* @.str.6 to i32*), i32 8)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87, %78
  %95 = call i32 @ngx_str_set(%struct.TYPE_18__* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i32, i32* @NGX_HTTP_NOT_FOUND, align 4
  store i32 %96, i32* %6, align 4
  br label %111

97:                                               ; preds = %87
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i64 1
  %100 = bitcast %struct.TYPE_18__* %5 to i8*
  %101 = bitcast %struct.TYPE_18__* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 8, i1 false)
  %102 = load i32, i32* @NGX_LOG_INFO, align 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ngx_log_error(i32 %102, i32 %107, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_18__* %5)
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @ngx_dyups_update_upstream(%struct.TYPE_18__* %5, i32* %109, %struct.TYPE_18__* %4)
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %97, %94, %75, %67, %41, %26, %15
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @ngx_http_dyups_send_response(%struct.TYPE_19__* %112, i32 %113, %struct.TYPE_18__* %4)
  ret void
}

declare dso_local i32 @ngx_str_set(%struct.TYPE_18__*, i8*) #1

declare dso_local %struct.TYPE_20__* @ngx_dyups_parse_path(i32, i32*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32* @ngx_http_dyups_read_body_from_file(%struct.TYPE_19__*) #1

declare dso_local i32* @ngx_http_dyups_read_body(%struct.TYPE_19__*) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_dyups_update_upstream(%struct.TYPE_18__*, i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_http_dyups_send_response(%struct.TYPE_19__*, i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
