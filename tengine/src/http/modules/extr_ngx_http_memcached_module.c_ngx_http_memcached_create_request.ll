; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_memcached_module.c_ngx_http_memcached_create_request.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_memcached_module.c_ngx_http_memcached_create_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__*, %struct.TYPE_19__*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32*, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_24__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32* }
%struct.TYPE_21__ = type { i32, i32, i64 }
%struct.TYPE_23__ = type { i32 }

@ngx_http_memcached_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"the \22$memcached_key\22 variable is not set\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_ESCAPE_MEMCACHED = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"http memcached request: \22%V\22\00", align 1
@CR = common dso_local global i32 0, align 4
@LF = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @ngx_http_memcached_create_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_memcached_create_request(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %12 = load i32, i32* @ngx_http_memcached_module, align 4
  %13 = call %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__* %11, i32 %12)
  store %struct.TYPE_23__* %13, %struct.TYPE_23__** %10, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_21__* @ngx_http_get_indexed_variable(%struct.TYPE_22__* %14, i32 %17)
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %9, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %20 = icmp eq %struct.TYPE_21__* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26, %21, %1
  %32 = load i32, i32* @NGX_LOG_ERR, align 4
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ngx_log_error(i32 %32, i32 %37, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @NGX_ERROR, align 4
  store i32 %39, i32* %2, align 4
  br label %181

40:                                               ; preds = %26
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NGX_ESCAPE_MEMCACHED, align 4
  %48 = call i32 @ngx_escape_uri(i32* null, i32 %43, i32 %46, i32 %47)
  %49 = mul nsw i32 2, %48
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %5, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = add i64 4, %54
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %55, %56
  %58 = add i64 %57, 4
  %59 = sub i64 %58, 1
  store i64 %59, i64* %4, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %4, align 8
  %64 = call %struct.TYPE_26__* @ngx_create_temp_buf(i32 %62, i64 %63)
  store %struct.TYPE_26__* %64, %struct.TYPE_26__** %6, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %66 = icmp eq %struct.TYPE_26__* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %40
  %68 = load i32, i32* @NGX_ERROR, align 4
  store i32 %68, i32* %2, align 4
  br label %181

69:                                               ; preds = %40
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call %struct.TYPE_25__* @ngx_alloc_chain_link(i32 %72)
  store %struct.TYPE_25__* %73, %struct.TYPE_25__** %7, align 8
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %75 = icmp eq %struct.TYPE_25__* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @NGX_ERROR, align 4
  store i32 %77, i32* %2, align 4
  br label %181

78:                                               ; preds = %69
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 1
  store %struct.TYPE_26__* %79, %struct.TYPE_26__** %81, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  store %struct.TYPE_25__* %84, %struct.TYPE_25__** %88, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %90, align 8
  store i32 103, i32* %91, align 4
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %94, align 8
  store i32 101, i32* %95, align 4
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %98, align 8
  store i32 116, i32* %99, align 4
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %102, align 8
  store i32 32, i32* %103, align 4
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %106 = load i32, i32* @ngx_http_memcached_module, align 4
  %107 = call %struct.TYPE_24__* @ngx_http_get_module_ctx(%struct.TYPE_22__* %105, i32 %106)
  store %struct.TYPE_24__* %107, %struct.TYPE_24__** %8, align 8
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 1
  store i32* %110, i32** %113, align 8
  %114 = load i64, i64* %5, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %78
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32* @ngx_copy(i32* %119, i32 %122, i32 %125)
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  store i32* %126, i32** %128, align 8
  br label %145

129:                                              ; preds = %78
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @NGX_ESCAPE_MEMCACHED, align 4
  %140 = call i32 @ngx_escape_uri(i32* %132, i32 %135, i32 %138, i32 %139)
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i32*
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 0
  store i32* %142, i32** %144, align 8
  br label %145

145:                                              ; preds = %129, %116
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = ptrtoint i32* %148 to i64
  %154 = ptrtoint i32* %152 to i64
  %155 = sub i64 %153, %154
  %156 = sdiv exact i64 %155, 4
  %157 = trunc i64 %156 to i32
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 0
  store i32 %157, i32* %160, align 8
  %161 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 0
  %169 = call i32 @ngx_log_debug1(i32 %161, i32 %166, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_27__* %168)
  %170 = load i32, i32* @CR, align 4
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %172, align 8
  store i32 %170, i32* %173, align 4
  %175 = load i32, i32* @LF, align 4
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %179, i32** %177, align 8
  store i32 %175, i32* %178, align 4
  %180 = load i32, i32* @NGX_OK, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %145, %76, %67, %31
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_21__* @ngx_http_get_indexed_variable(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_escape_uri(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_26__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local %struct.TYPE_25__* @ngx_alloc_chain_link(i32) #1

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_ctx(%struct.TYPE_22__*, i32) #1

declare dso_local i32* @ngx_copy(i32*, i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
