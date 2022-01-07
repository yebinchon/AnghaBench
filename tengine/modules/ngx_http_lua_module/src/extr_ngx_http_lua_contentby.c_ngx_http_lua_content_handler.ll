; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_contentby.c_ngx_http_lua_content_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_contentby.c_ngx_http_lua_content_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_17__*, i32, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i64 (%struct.TYPE_18__*)*, i64 }
%struct.TYPE_20__ = type { i32, i32, i64 (%struct.TYPE_18__*)*, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"lua content handler, uri:\22%V\22 c:%ud\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"no content handler found\00", align 1
@NGX_DECLINED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"ctx = %p\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"entered? %d\00", align 1
@NGX_DONE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"calling wev handler\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"wev handler returns %d\00", align 1
@ngx_http_lua_content_phase_post_read = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"setting entered\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"calling content handler\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_lua_content_handler(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %7 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 5
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ngx_log_debug2(i32 %7, i32 %12, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %14, i32 %19)
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %22 = load i32, i32* @ngx_http_lua_module, align 4
  %23 = call %struct.TYPE_19__* @ngx_http_get_module_loc_conf(%struct.TYPE_18__* %21, i32 %22)
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %4, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i64 (%struct.TYPE_18__*)*, i64 (%struct.TYPE_18__*)** %25, align 8
  %27 = icmp eq i64 (%struct.TYPE_18__*)* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %30, i64* %2, align 8
  br label %128

31:                                               ; preds = %1
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %33 = load i32, i32* @ngx_http_lua_module, align 4
  %34 = call %struct.TYPE_20__* @ngx_http_get_module_ctx(%struct.TYPE_18__* %32, i32 %33)
  store %struct.TYPE_20__* %34, %struct.TYPE_20__** %5, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %36 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_20__* %35)
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %38 = icmp eq %struct.TYPE_20__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %41 = call %struct.TYPE_20__* @ngx_http_lua_create_ctx(%struct.TYPE_18__* %40)
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %5, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = icmp eq %struct.TYPE_20__* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %45, i64* %2, align 8
  br label %128

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i64, i64* @NGX_DONE, align 8
  store i64 %57, i64* %2, align 8
  br label %128

58:                                               ; preds = %47
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 2
  %67 = load i64 (%struct.TYPE_18__*)*, i64 (%struct.TYPE_18__*)** %66, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = call i64 %67(%struct.TYPE_18__* %68)
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = load i64, i64* %6, align 8
  store i64 %73, i64* %2, align 8
  br label %128

74:                                               ; preds = %58
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %118

79:                                               ; preds = %74
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %118, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 2
  store i32 1, i32* %90, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %92 = load i32, i32* @ngx_http_lua_content_phase_post_read, align 4
  %93 = call i64 @ngx_http_read_client_request_body(%struct.TYPE_18__* %91, i32 %92)
  store i64 %93, i64* %6, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* @NGX_ERROR, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %84
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %97, %84
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %105, align 4
  %108 = load i64, i64* %6, align 8
  store i64 %108, i64* %2, align 8
  br label %128

109:                                              ; preds = %97
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* @NGX_AGAIN, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = load i64, i64* @NGX_DONE, align 8
  store i64 %116, i64* %2, align 8
  br label %128

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %79, %74
  %119 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  %122 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load i64 (%struct.TYPE_18__*)*, i64 (%struct.TYPE_18__*)** %124, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %127 = call i64 %125(%struct.TYPE_18__* %126)
  store i64 %127, i64* %2, align 8
  br label %128

128:                                              ; preds = %118, %113, %101, %63, %56, %44, %28
  %129 = load i64, i64* %2, align 8
  ret i64 %129
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, i32) #1

declare dso_local %struct.TYPE_19__* @ngx_http_get_module_loc_conf(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local %struct.TYPE_20__* @ngx_http_get_module_ctx(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_20__* @ngx_http_lua_create_ctx(%struct.TYPE_18__*) #1

declare dso_local i64 @ngx_http_read_client_request_body(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
