; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_dav_module.c_ngx_http_dav_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_dav_module.c_ngx_http_dav_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_18__ = type { i32 }

@ngx_http_dav_module = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot PUT to a collection\00", align 1
@NGX_HTTP_CONFLICT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"PUT with range is unsupported\00", align 1
@NGX_HTTP_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@ngx_http_dav_put_handler = common dso_local global i32 0, align 4
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @ngx_http_dav_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_dav_handler(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %7 = load i32, i32* @ngx_http_dav_module, align 4
  %8 = call %struct.TYPE_18__* @ngx_http_get_module_loc_conf(%struct.TYPE_17__* %6, i32 %7)
  store %struct.TYPE_18__* %8, %struct.TYPE_18__** %5, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %18, i32* %2, align 4
  br label %98

19:                                               ; preds = %1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %96 [
    i32 128, label %23
    i32 131, label %83
    i32 130, label %86
    i32 132, label %90
    i32 129, label %93
  ]

23:                                               ; preds = %19
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %27, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 47
  br i1 %37, label %38, label %47

38:                                               ; preds = %23
  %39 = load i32, i32* @NGX_LOG_ERR, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 6
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ngx_log_error(i32 %39, i32 %44, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @NGX_HTTP_CONFLICT, align 4
  store i32 %46, i32* %2, align 4
  br label %98

47:                                               ; preds = %23
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load i32, i32* @NGX_LOG_ERR, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ngx_log_error(i32 %54, i32 %59, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @NGX_HTTP_NOT_IMPLEMENTED, align 4
  store i32 %61, i32* %2, align 4
  br label %98

62:                                               ; preds = %47
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 3
  store i32 1, i32* %68, align 4
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 4
  store i32 1, i32* %70, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 5
  store i32 0, i32* %72, align 4
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = load i32, i32* @ngx_http_dav_put_handler, align 4
  %75 = call i32 @ngx_http_read_client_request_body(%struct.TYPE_17__* %73, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @NGX_HTTP_SPECIAL_RESPONSE, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %62
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %98

81:                                               ; preds = %62
  %82 = load i32, i32* @NGX_DONE, align 4
  store i32 %82, i32* %2, align 4
  br label %98

83:                                               ; preds = %19
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = call i32 @ngx_http_dav_delete_handler(%struct.TYPE_17__* %84)
  store i32 %85, i32* %2, align 4
  br label %98

86:                                               ; preds = %19
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = call i32 @ngx_http_dav_mkcol_handler(%struct.TYPE_17__* %87, %struct.TYPE_18__* %88)
  store i32 %89, i32* %2, align 4
  br label %98

90:                                               ; preds = %19
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %92 = call i32 @ngx_http_dav_copy_move_handler(%struct.TYPE_17__* %91)
  store i32 %92, i32* %2, align 4
  br label %98

93:                                               ; preds = %19
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %95 = call i32 @ngx_http_dav_copy_move_handler(%struct.TYPE_17__* %94)
  store i32 %95, i32* %2, align 4
  br label %98

96:                                               ; preds = %19
  %97 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %93, %90, %86, %83, %81, %79, %53, %38, %17
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_18__* @ngx_http_get_module_loc_conf(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_read_client_request_body(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_http_dav_delete_handler(%struct.TYPE_17__*) #1

declare dso_local i32 @ngx_http_dav_mkcol_handler(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_http_dav_copy_move_handler(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
