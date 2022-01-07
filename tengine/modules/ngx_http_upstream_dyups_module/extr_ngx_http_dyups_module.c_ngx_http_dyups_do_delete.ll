; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_do_delete.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_do_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_22__ = type { i64, i64, i32 }
%struct.TYPE_21__ = type { i32*, %struct.TYPE_22__* }

@NGX_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"not support this interface\00", align 1
@NGX_HTTP_NOT_ALLOWED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"upstream\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"not support this api\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_FLUSH = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, %struct.TYPE_23__*)* @ngx_http_dyups_do_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_dyups_do_delete(%struct.TYPE_20__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__, align 8
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_21__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = call i64 @ngx_http_discard_request_body(%struct.TYPE_20__* %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @NGX_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* %3, align 8
  br label %114

20:                                               ; preds = %2
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = call i32 @ngx_str_set(%struct.TYPE_19__* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* @NGX_HTTP_NOT_ALLOWED, align 8
  store i64 %27, i64* %9, align 8
  br label %53

28:                                               ; preds = %20
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  store %struct.TYPE_19__* %31, %struct.TYPE_19__** %6, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 8
  br i1 %36, label %44, label %37

37:                                               ; preds = %28
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @ngx_strncasecmp(i64 %41, i32* bitcast ([9 x i8]* @.str.1 to i32*), i32 8)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37, %28
  %45 = call i32 @ngx_str_set(%struct.TYPE_19__* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i64, i64* @NGX_HTTP_NOT_ALLOWED, align 8
  store i64 %46, i64* %9, align 8
  br label %53

47:                                               ; preds = %37
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i64 1
  %50 = bitcast %struct.TYPE_19__* %7 to i8*
  %51 = bitcast %struct.TYPE_19__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false)
  %52 = call i64 @ngx_dyups_delete_upstream(%struct.TYPE_19__* %7, %struct.TYPE_19__* %8)
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %47, %44, %25
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  store i64 %54, i64* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %64 = call i64 @ngx_http_send_header(%struct.TYPE_20__* %63)
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @NGX_ERROR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %53
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* @NGX_OK, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68, %53
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %3, align 8
  br label %114

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %80 = load i32, i32* @NGX_HTTP_FLUSH, align 4
  %81 = call i64 @ngx_http_send_special(%struct.TYPE_20__* %79, i32 %80)
  store i64 %81, i64* %3, align 8
  br label %114

82:                                               ; preds = %74
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = call %struct.TYPE_22__* @ngx_create_temp_buf(i32 %85, i64 %88)
  store %struct.TYPE_22__* %89, %struct.TYPE_22__** %11, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %91 = icmp eq %struct.TYPE_22__* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %93, i64* %3, align 8
  br label %114

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %100, %103
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 2
  store i32 1, i32* %108, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  store %struct.TYPE_22__* %109, %struct.TYPE_22__** %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  store i32* null, i32** %111, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %113 = call i64 @ngx_http_output_filter(%struct.TYPE_20__* %112, %struct.TYPE_21__* %12)
  store i64 %113, i64* %3, align 8
  br label %114

114:                                              ; preds = %94, %92, %78, %72, %18
  %115 = load i64, i64* %3, align 8
  ret i64 %115
}

declare dso_local i64 @ngx_http_discard_request_body(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_str_set(%struct.TYPE_19__*, i8*) #1

declare dso_local i64 @ngx_strncasecmp(i64, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_dyups_delete_upstream(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i64 @ngx_http_send_header(%struct.TYPE_20__*) #1

declare dso_local i64 @ngx_http_send_special(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_22__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i64 @ngx_http_output_filter(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
