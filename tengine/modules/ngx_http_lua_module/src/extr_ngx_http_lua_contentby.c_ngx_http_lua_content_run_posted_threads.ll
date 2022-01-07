; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_contentby.c_ngx_http_lua_content_run_posted_threads.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_contentby.c_ngx_http_lua_content_run_posted_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__*, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__*, %struct.TYPE_16__* }

@.str = private unnamed_addr constant [23 x i8] c"run posted threads: %p\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"posted thread status: %d\00", align 1
@NGX_HTTP_LUA_CO_RUNNING = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_lua_content_run_posted_threads(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_17__* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = call i32 @dd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %14)
  br label %16

16:                                               ; preds = %75, %70, %56, %4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %11, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %21 = icmp eq %struct.TYPE_16__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %96

23:                                               ; preds = %16
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %28, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @ngx_http_lua_probe_run_posted_thread(%struct.TYPE_15__* %29, i32 %34, i32 %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.TYPE_16__*
  %48 = call i32 @dd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_16__* %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NGX_HTTP_LUA_CO_RUNNING, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %23
  br label %16

57:                                               ; preds = %23
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %62, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %66 = call i64 @ngx_http_lua_run_thread(i32* %63, %struct.TYPE_15__* %64, %struct.TYPE_17__* %65, i32 0)
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* @NGX_AGAIN, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  br label %16

71:                                               ; preds = %57
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @NGX_DONE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %16

78:                                               ; preds = %71
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @NGX_OK, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %86, %82
  %84 = load i32, i32* %9, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %88 = load i64, i64* @NGX_DONE, align 8
  %89 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_15__* %87, i64 %88)
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %9, align 4
  br label %83

92:                                               ; preds = %83
  %93 = load i64, i64* @NGX_OK, align 8
  store i64 %93, i64* %5, align 8
  br label %123

94:                                               ; preds = %78
  %95 = load i64, i64* %10, align 8
  store i64 %95, i64* %5, align 8
  br label %123

96:                                               ; preds = %22
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i64, i64* @NGX_DONE, align 8
  store i64 %100, i64* %5, align 8
  br label %123

101:                                              ; preds = %96
  %102 = load i32, i32* %9, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load i64, i64* @NGX_DONE, align 8
  store i64 %111, i64* %5, align 8
  br label %123

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %117, %112
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %115 = load i64, i64* @NGX_DONE, align 8
  %116 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_15__* %114, i64 %115)
  br label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %9, align 4
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %113, label %121

121:                                              ; preds = %117
  %122 = load i64, i64* @NGX_DONE, align 8
  store i64 %122, i64* %5, align 8
  br label %123

123:                                              ; preds = %121, %104, %99, %94, %92
  %124 = load i64, i64* %5, align 8
  ret i64 %124
}

declare dso_local i32 @dd(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @ngx_http_lua_probe_run_posted_thread(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @ngx_http_lua_run_thread(i32*, %struct.TYPE_15__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_http_lua_finalize_request(%struct.TYPE_15__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
