; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_concat_module/extr_ngx_http_concat_module.c_ngx_http_concat_add_path.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_concat_module/extr_ngx_http_concat_module.c_ngx_http_concat_add_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i32, i8* }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"client sent zero concat filename\00", align 1
@NGX_HTTP_BAD_REQUEST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"client sent too many concat filenames\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_LOG_UNSAFE = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"http concat add file: \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_16__*, i64, %struct.TYPE_14__*, i8*, i8*)* @ngx_http_concat_add_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_concat_add_path(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i64 %2, %struct.TYPE_14__* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_14__, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %6
  %22 = load i32, i32* @NGX_LOG_ERR, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ngx_log_error(i32 %22, i32 %27, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* @NGX_HTTP_BAD_REQUEST, align 8
  store i64 %29, i64* %7, align 8
  br label %125

30:                                               ; preds = %6
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load i32, i32* @NGX_LOG_ERR, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ngx_log_error(i32 %37, i32 %42, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i64, i64* @NGX_HTTP_BAD_REQUEST, align 8
  store i64 %44, i64* %7, align 8
  br label %125

45:                                               ; preds = %30
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %47 = call %struct.TYPE_14__* @ngx_array_push(%struct.TYPE_16__* %46)
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %15, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %49 = icmp eq %struct.TYPE_14__* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %51, i64* %7, align 8
  br label %125

52:                                               ; preds = %45
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8*, i8** %13, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  %73 = call i8* @ngx_pnalloc(i32 %68, i32 %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %52
  %81 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %81, i64* %7, align 8
  br label %125

82:                                               ; preds = %52
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @ngx_cpymem(i8* %85, i8* %88, i32 %91)
  store i8* %92, i8** %14, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = trunc i64 %99 to i32
  %101 = call i8* @ngx_cpymem(i8* %93, i8* %94, i32 %100)
  store i8* %101, i8** %14, align 8
  %102 = load i8*, i8** %14, align 8
  store i8 0, i8* %102, align 1
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  store i8* null, i8** %104, align 8
  %105 = load i32, i32* @NGX_HTTP_LOG_UNSAFE, align 4
  store i32 %105, i32* %17, align 4
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %108 = call i64 @ngx_http_parse_unsafe_uri(%struct.TYPE_15__* %106, %struct.TYPE_14__* %107, %struct.TYPE_14__* %16, i32* %17)
  %109 = load i64, i64* @NGX_OK, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %82
  %112 = load i64, i64* @NGX_HTTP_BAD_REQUEST, align 8
  store i64 %112, i64* %7, align 8
  br label %125

113:                                              ; preds = %82
  %114 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @ngx_log_debug1(i32 %114, i32 %119, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %122)
  %124 = load i64, i64* @NGX_OK, align 8
  store i64 %124, i64* %7, align 8
  br label %125

125:                                              ; preds = %113, %111, %80, %50, %36, %21
  %126 = load i64, i64* %7, align 8
  ret i64 %126
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_14__* @ngx_array_push(%struct.TYPE_16__*) #1

declare dso_local i8* @ngx_pnalloc(i32, i32) #1

declare dso_local i8* @ngx_cpymem(i8*, i8*, i32) #1

declare dso_local i64 @ngx_http_parse_unsafe_uri(%struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
