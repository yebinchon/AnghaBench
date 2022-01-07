; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_create_fake_request.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_create_fake_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i64, i64, %struct.TYPE_17__, i32, %struct.TYPE_18__*, i32, %struct.TYPE_13__*, %struct.TYPE_19__*, i32*, i32, i32*, %struct.TYPE_15__, i32, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { i32, i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"r pool allocated: %d\00", align 1
@ngx_http_max_module = common dso_local global i32 0, align 4
@NGX_HTTP_MODULE = common dso_local global i32 0, align 4
@NGX_HTTP_UNKNOWN = common dso_local global i32 0, align 4
@NGX_HTTP_MAX_URI_CHANGES = common dso_local global i64 0, align 8
@NGX_HTTP_MAX_SUBREQUESTS = common dso_local global i64 0, align 8
@NGX_HTTP_PROCESS_REQUEST_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"created fake request %p\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@cmcf = common dso_local global %struct.TYPE_20__* null, align 8
@hc = common dso_local global %struct.TYPE_13__* null, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @ngx_http_lua_create_fake_request(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %5 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i8* @ngx_pcalloc(i32 %7, i32 136)
  %9 = bitcast i8* %8 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %4, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %11 = icmp eq %struct.TYPE_18__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %86

13:                                               ; preds = %1
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 12
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @ngx_http_max_module, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 8, %24
  %26 = add i64 4, %25
  %27 = add i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ngx_http_max_module, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 8, %34
  %36 = trunc i64 %35 to i32
  %37 = call i8* @ngx_pcalloc(i32 %32, i32 %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 13
  store i32* %38, i32** %40, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 13
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %13
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %86

46:                                               ; preds = %13
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 10
  store %struct.TYPE_19__* %47, %struct.TYPE_19__** %49, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  store %struct.TYPE_18__* %53, %struct.TYPE_18__** %55, align 8
  %56 = load i32, i32* @NGX_HTTP_MODULE, align 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 7
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %61, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load i32, i32* @NGX_HTTP_UNKNOWN, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  store i32 -1, i32* %69, align 8
  %70 = load i64, i64* @NGX_HTTP_MAX_URI_CHANGES, align 8
  %71 = add nsw i64 %70, 1
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 4
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* @NGX_HTTP_MAX_SUBREQUESTS, align 8
  %75 = add nsw i64 %74, 1
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 3
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* @NGX_HTTP_PROCESS_REQUEST_STATE, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %84 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_18__* %83)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* %85, %struct.TYPE_18__** %2, align 8
  br label %86

86:                                               ; preds = %46, %45, %12
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  ret %struct.TYPE_18__* %87
}

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @dd(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
