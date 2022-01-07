; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers_in.c_ngx_http_lua_set_input_header.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_headers_in.c_ngx_http_lua_set_input_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)*, i64, %struct.TYPE_16__ }
%struct.TYPE_21__ = type { %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)*, i64, %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, i32 }

@ngx_http_lua_set_handlers = common dso_local global %struct.TYPE_22__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"set header value: %.*s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"hv key comparison: %s <> %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Matched handler: %s %s\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_set_input_header(%struct.TYPE_21__* %0, i64 %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = alloca %struct.TYPE_20__, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i64, align 8
  %15 = bitcast %struct.TYPE_20__* %8 to { i64, i32 }*
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  store i64 %1, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  store i32 %2, i32* %17, align 8
  %18 = bitcast %struct.TYPE_20__* %9 to { i64, i32 }*
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  store i64 %3, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  store i32 %4, i32* %20, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %10, align 8
  store i32 %5, i32* %11, align 4
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** @ngx_http_lua_set_handlers, align 8
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ngx_hash_key_lc(i32 %29, i64 %31)
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 4
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 3
  %35 = bitcast %struct.TYPE_20__* %34 to i8*
  %36 = bitcast %struct.TYPE_20__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  store i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)* null, i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)** %43, align 8
  store i64 0, i64* %14, align 8
  br label %44

44:                                               ; preds = %115, %6
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %118

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %55, %61
  br i1 %62, label %81, label %63

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %68 = load i64, i64* %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %74 = load i64, i64* %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @ngx_strncasecmp(i32 %66, i32 %72, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %63, %52
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %83 = load i64, i64* %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dd(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %90)
  br label %115

92:                                               ; preds = %63
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %94 = load i64, i64* %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %104 = load i64, i64* %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 2
  store i64 %107, i64* %108, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %110 = load i64, i64* %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  store i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)* %113, i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)** %114, align 8
  br label %118

115:                                              ; preds = %81
  %116 = load i64, i64* %14, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %14, align 8
  br label %44

118:                                              ; preds = %92, %44
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %120 = load i64, i64* %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %118
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)** %130, align 8
  %132 = icmp ne i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)* %131, null
  br i1 %132, label %133, label %146

133:                                              ; preds = %126
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %135 = load i64, i64* %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 2
  store i64 %138, i64* %139, align 8
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %141 = load i64, i64* %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = load i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  store i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)* %144, i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)** %145, align 8
  br label %146

146:                                              ; preds = %133, %126, %118
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %148 = load i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)** %147, align 8
  %149 = icmp eq i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load i32, i32* @NGX_ERROR, align 4
  store i32 %151, i32* %7, align 4
  br label %172

152:                                              ; preds = %146
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 400
  br i1 %157, label %165, label %158

158:                                              ; preds = %152
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %158, %152
  %166 = load i32, i32* @NGX_OK, align 4
  store i32 %166, i32* %7, align 4
  br label %172

167:                                              ; preds = %158
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %169 = load i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_20__*)** %168, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %171 = call i32 %169(%struct.TYPE_21__* %170, %struct.TYPE_23__* %12, %struct.TYPE_20__* %9)
  store i32 %171, i32* %7, align 4
  br label %172

172:                                              ; preds = %167, %165, %150
  %173 = load i32, i32* %7, align 4
  ret i32 %173
}

declare dso_local i32 @dd(i8*, i32, i32) #1

declare dso_local i32 @ngx_hash_key_lc(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_strncasecmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
