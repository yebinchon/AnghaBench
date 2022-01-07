; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers_out.c_ngx_http_lua_set_output_header.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers_out.c_ngx_http_lua_set_output_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)*, i64, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i32, i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)*, i64, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32 }

@ngx_http_lua_set_handlers = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"set header value: %.*s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"hv key comparison: %s <> %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Matched handler: %s %s\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_set_output_header(i32* %0, %struct.TYPE_18__* %1, i64 %2, i32 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i64, align 8
  %17 = bitcast %struct.TYPE_15__* %9 to { i64, i32 }*
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  store i64 %2, i64* %18, align 8
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  store i32 %3, i32* %19, align 8
  %20 = bitcast %struct.TYPE_15__* %10 to { i64, i32 }*
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  store i64 %4, i64* %21, align 8
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  store i32 %5, i32* %22, align 8
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %12, align 8
  store i32 %6, i32* %13, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ngx_http_lua_set_handlers, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ngx_hash_key_lc(i32 %31, i64 %33)
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 4
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  %37 = bitcast %struct.TYPE_15__* %36 to i8*
  %38 = bitcast %struct.TYPE_15__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)* null, i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)** %45, align 8
  store i64 0, i64* %16, align 8
  br label %46

46:                                               ; preds = %124, %7
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %48 = load i64, i64* %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %127

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %59 = load i64, i64* %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %57, %63
  br i1 %64, label %83, label %65

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %70 = load i64, i64* %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %76 = load i64, i64* %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @ngx_strncasecmp(i32 %68, i32 %74, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %65, %54
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %85 = load i64, i64* %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dd(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %92)
  br label %124

94:                                               ; preds = %65
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %96 = load i64, i64* %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %106 = load i64, i64* %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  store i64 %109, i64* %110, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %112 = load i64, i64* %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)*, i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)* %115, i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)** %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %118 = load i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)*, i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)** %117, align 8
  %119 = icmp eq i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)* %118, @ngx_http_set_content_type_header
  br i1 %119, label %120, label %123

120:                                              ; preds = %94
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %94
  br label %127

124:                                              ; preds = %83
  %125 = load i64, i64* %16, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %16, align 8
  br label %46

127:                                              ; preds = %123, %46
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %129 = load i64, i64* %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %127
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %137 = load i64, i64* %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)*, i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)** %139, align 8
  %141 = icmp ne i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)* %140, null
  br i1 %141, label %142, label %155

142:                                              ; preds = %135
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %144 = load i64, i64* %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  store i64 %147, i64* %148, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %150 = load i64, i64* %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)*, i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)* %153, i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)** %154, align 8
  br label %155

155:                                              ; preds = %142, %135, %127
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %157 = load i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)*, i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)** %156, align 8
  %158 = icmp eq i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)* %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i32, i32* @NGX_ERROR, align 4
  store i32 %160, i32* %8, align 4
  br label %166

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %163 = load i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)*, i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_15__*)** %162, align 8
  %164 = load i32*, i32** %11, align 8
  %165 = call i32 %163(i32* %164, %struct.TYPE_17__* %14, %struct.TYPE_15__* %10)
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %161, %159
  %167 = load i32, i32* %8, align 4
  ret i32 %167
}

declare dso_local i32 @dd(i8*, i32, i32) #1

declare dso_local i32 @ngx_hash_key_lc(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_strncasecmp(i32, i32, i64) #1

declare dso_local i32 @ngx_http_set_content_type_header(i32*, %struct.TYPE_17__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
