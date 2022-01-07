; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_chain_get_free_buf.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_chain_get_free_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32*, i32*, i32*, i32* }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"lua reuse free buf memory %O >= %uz, cl:%p, p:%p\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"lua reuse free buf chain, but reallocate memory because %uz >= %O, cl:%p, p:%p\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"buf start: %p\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"lua allocate new chainlink and new buf of size %uz, cl:%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @ngx_http_lua_chain_get_free_buf(i32* %0, i32* %1, %struct.TYPE_12__** %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 ptrtoint (i32* @ngx_http_lua_module to i32), i32* %14, align 4
  %15 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %165

18:                                               ; preds = %4
  %19 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %11, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %24, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %26, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %10, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %12, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %13, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %84

38:                                               ; preds = %18
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = ptrtoint i32* %39 to i64
  %42 = ptrtoint i32* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = load i64, i64* %9, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %84

47:                                               ; preds = %38
  %48 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = ptrtoint i32* %50 to i64
  %53 = ptrtoint i32* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 4
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @ngx_log_debug4(i32 %48, i32* %49, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %56, %struct.TYPE_12__* %57, i32* %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %61 = call i32 @ngx_memzero(%struct.TYPE_13__* %60, i32 40)
  %62 = load i32*, i32** %12, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  store i32* %62, i32** %64, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 4
  store i32* %65, i32** %67, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  store i32* %68, i32** %70, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 5
  store i32* %71, i32** %73, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %47
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %47
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %5, align 8
  br label %210

84:                                               ; preds = %38, %18
  %85 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = ptrtoint i32* %90 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @ngx_log_debug4(i32 %85, i32* %86, i32 0, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i64 %87, i64 %97, %struct.TYPE_12__* %98, i32* %101)
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %104 = call i64 @ngx_buf_in_memory(%struct.TYPE_13__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %84
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i32*, i32** %7, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @ngx_pfree(i32* %112, i32* %115)
  br label %117

117:                                              ; preds = %111, %106, %84
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = call i32 @ngx_memzero(%struct.TYPE_13__* %118, i32 40)
  %120 = load i64, i64* %9, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %123, %struct.TYPE_12__** %5, align 8
  br label %210

124:                                              ; preds = %117
  %125 = load i32*, i32** %7, align 8
  %126 = load i64, i64* %9, align 8
  %127 = call i32* @ngx_palloc(i32* %125, i64 %126)
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  store i32* %127, i32** %129, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %210

135:                                              ; preds = %124
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* %9, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 5
  store i32* %140, i32** %142, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @dd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %147)
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 4
  store i32* %151, i32** %153, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 3
  store i32* %156, i32** %158, align 8
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %164, %struct.TYPE_12__** %5, align 8
  br label %210

165:                                              ; preds = %4
  %166 = load i32*, i32** %7, align 8
  %167 = call %struct.TYPE_12__* @ngx_alloc_chain_link(i32* %166)
  store %struct.TYPE_12__* %167, %struct.TYPE_12__** %11, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %169 = icmp eq %struct.TYPE_12__* %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %210

171:                                              ; preds = %165
  %172 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %173 = load i32*, i32** %6, align 8
  %174 = load i64, i64* %9, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %176 = call i32 @ngx_log_debug2(i32 %172, i32* %173, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i64 %174, %struct.TYPE_12__* %175)
  %177 = load i64, i64* %9, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load i32*, i32** %7, align 8
  %181 = load i64, i64* %9, align 8
  %182 = call %struct.TYPE_13__* @ngx_create_temp_buf(i32* %180, i64 %181)
  br label %186

183:                                              ; preds = %171
  %184 = load i32*, i32** %7, align 8
  %185 = call %struct.TYPE_13__* @ngx_calloc_buf(i32* %184)
  br label %186

186:                                              ; preds = %183, %179
  %187 = phi %struct.TYPE_13__* [ %182, %179 ], [ %185, %183 ]
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  store %struct.TYPE_13__* %187, %struct.TYPE_13__** %189, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %191, align 8
  %193 = icmp eq %struct.TYPE_13__* %192, null
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %210

195:                                              ; preds = %186
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @dd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %200)
  %202 = load i32, i32* %14, align 4
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  store i32 %202, i32* %206, align 4
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %208, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %209, %struct.TYPE_12__** %5, align 8
  br label %210

210:                                              ; preds = %195, %194, %170, %135, %134, %122, %82
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %211
}

declare dso_local i32 @ngx_log_debug4(i32, i32*, i32, i8*, i64, i64, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @ngx_buf_in_memory(%struct.TYPE_13__*) #1

declare dso_local i32 @ngx_pfree(i32*, i32*) #1

declare dso_local i32* @ngx_palloc(i32*, i64) #1

declare dso_local i32 @dd(i8*, i32*) #1

declare dso_local %struct.TYPE_12__* @ngx_alloc_chain_link(i32*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32*, i32, i8*, i64, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @ngx_create_temp_buf(i32*, i64) #1

declare dso_local %struct.TYPE_13__* @ngx_calloc_buf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
