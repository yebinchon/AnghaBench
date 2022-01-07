; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_charset_body_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_charset_body_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_25__*, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i64, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32*, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i64, i64 }

@ngx_http_charset_filter_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_24__*)* @ngx_http_charset_body_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_charset_body_filter(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_24__**, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %13 = load i32, i32* @ngx_http_charset_filter_module, align 4
  %14 = call %struct.TYPE_23__* @ngx_http_get_module_ctx(%struct.TYPE_22__* %12, i32 %13)
  store %struct.TYPE_23__* %14, %struct.TYPE_23__** %11, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %16 = icmp eq %struct.TYPE_23__* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17, %2
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %25 = call i32 @ngx_http_next_body_filter(%struct.TYPE_22__* %23, %struct.TYPE_24__* %24)
  store i32 %25, i32* %3, align 4
  br label %239

26:                                               ; preds = %17
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %38, align 8
  %40 = icmp ne %struct.TYPE_24__* %39, null
  br i1 %40, label %41, label %218

41:                                               ; preds = %36, %31, %26
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_24__** %9, %struct.TYPE_24__*** %10, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %42, %struct.TYPE_24__** %8, align 8
  br label %43

43:                                               ; preds = %112, %41
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %45 = icmp ne %struct.TYPE_24__* %44, null
  br i1 %45, label %46, label %116

46:                                               ; preds = %43
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %48, align 8
  store %struct.TYPE_25__* %49, %struct.TYPE_25__** %7, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %51 = call i64 @ngx_buf_size(%struct.TYPE_25__* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %46
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.TYPE_24__* @ngx_alloc_chain_link(i32 %56)
  %58 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  store %struct.TYPE_24__* %57, %struct.TYPE_24__** %58, align 8
  %59 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %59, align 8
  %61 = icmp eq %struct.TYPE_24__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @NGX_ERROR, align 4
  store i32 %63, i32* %3, align 4
  br label %239

64:                                               ; preds = %53
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %66 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  store %struct.TYPE_25__* %65, %struct.TYPE_25__** %68, align 8
  %69 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 1
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %71, align 8
  %72 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 1
  store %struct.TYPE_24__** %74, %struct.TYPE_24__*** %10, align 8
  br label %112

75:                                               ; preds = %46
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %86 = call %struct.TYPE_24__* @ngx_http_charset_recode_to_utf8(i32 %83, %struct.TYPE_25__* %84, %struct.TYPE_23__* %85)
  %87 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  store %struct.TYPE_24__* %86, %struct.TYPE_24__** %87, align 8
  br label %96

88:                                               ; preds = %75
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %94 = call %struct.TYPE_24__* @ngx_http_charset_recode_from_utf8(i32 %91, %struct.TYPE_25__* %92, %struct.TYPE_23__* %93)
  %95 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  store %struct.TYPE_24__* %94, %struct.TYPE_24__** %95, align 8
  br label %96

96:                                               ; preds = %88, %80
  %97 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %97, align 8
  %99 = icmp eq %struct.TYPE_24__* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @NGX_ERROR, align 4
  store i32 %101, i32* %3, align 4
  br label %239

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %107, %102
  %104 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %104, align 8
  %106 = icmp ne %struct.TYPE_24__* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 1
  store %struct.TYPE_24__** %110, %struct.TYPE_24__*** %10, align 8
  br label %103

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %64
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %114, align 8
  store %struct.TYPE_24__* %115, %struct.TYPE_24__** %8, align 8
  br label %43

116:                                              ; preds = %43
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %119 = call i32 @ngx_http_next_body_filter(%struct.TYPE_22__* %117, %struct.TYPE_24__* %118)
  store i32 %119, i32* %6, align 4
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %121 = icmp ne %struct.TYPE_24__* %120, null
  br i1 %121, label %122, label %150

122:                                              ; preds = %116
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %124, align 8
  %126 = icmp eq %struct.TYPE_24__* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 3
  store %struct.TYPE_24__* %128, %struct.TYPE_24__** %130, align 8
  br label %149

131:                                              ; preds = %122
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %133, align 8
  store %struct.TYPE_24__* %134, %struct.TYPE_24__** %8, align 8
  br label %135

135:                                              ; preds = %141, %131
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %137, align 8
  %139 = icmp ne %struct.TYPE_24__* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  br label %141

141:                                              ; preds = %140
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %143, align 8
  store %struct.TYPE_24__* %144, %struct.TYPE_24__** %8, align 8
  br label %135

145:                                              ; preds = %135
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 1
  store %struct.TYPE_24__* %146, %struct.TYPE_24__** %148, align 8
  br label %149

149:                                              ; preds = %145, %127
  br label %150

150:                                              ; preds = %149, %116
  br label %151

151:                                              ; preds = %207, %198, %177, %150
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %153, align 8
  %155 = icmp ne %struct.TYPE_24__* %154, null
  br i1 %155, label %156, label %216

156:                                              ; preds = %151
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %158, align 8
  store %struct.TYPE_24__* %159, %struct.TYPE_24__** %8, align 8
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %161, align 8
  store %struct.TYPE_25__* %162, %struct.TYPE_25__** %7, align 8
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %164 = call i64 @ngx_buf_size(%struct.TYPE_25__* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %156
  br label %216

167:                                              ; preds = %156
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %169, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 3
  store %struct.TYPE_24__* %170, %struct.TYPE_24__** %172, align 8
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, ptrtoint (i32* @ngx_http_charset_filter_module to i64)
  br i1 %176, label %177, label %178

177:                                              ; preds = %167
  br label %151

178:                                              ; preds = %167
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %180, align 8
  %182 = icmp ne %struct.TYPE_21__* %181, null
  br i1 %182, label %183, label %193

183:                                              ; preds = %178
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 1
  store i32 %188, i32* %192, align 4
  br label %193

193:                                              ; preds = %183, %178
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %193
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %200, align 8
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 1
  store %struct.TYPE_24__* %201, %struct.TYPE_24__** %203, align 8
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 2
  store %struct.TYPE_24__* %204, %struct.TYPE_24__** %206, align 8
  br label %151

207:                                              ; preds = %193
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %209, align 8
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 1
  store %struct.TYPE_24__* %210, %struct.TYPE_24__** %212, align 8
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 1
  store %struct.TYPE_24__* %213, %struct.TYPE_24__** %215, align 8
  br label %151

216:                                              ; preds = %166, %151
  %217 = load i32, i32* %6, align 4
  store i32 %217, i32* %3, align 4
  br label %239

218:                                              ; preds = %36
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %219, %struct.TYPE_24__** %8, align 8
  br label %220

220:                                              ; preds = %231, %218
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %222 = icmp ne %struct.TYPE_24__* %221, null
  br i1 %222, label %223, label %235

223:                                              ; preds = %220
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %225, align 8
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @ngx_http_charset_recode(%struct.TYPE_25__* %226, i32* %229)
  br label %231

231:                                              ; preds = %223
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %233, align 8
  store %struct.TYPE_24__* %234, %struct.TYPE_24__** %8, align 8
  br label %220

235:                                              ; preds = %220
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %238 = call i32 @ngx_http_next_body_filter(%struct.TYPE_22__* %236, %struct.TYPE_24__* %237)
  store i32 %238, i32* %3, align 4
  br label %239

239:                                              ; preds = %235, %216, %100, %62, %22
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local %struct.TYPE_23__* @ngx_http_get_module_ctx(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_http_next_body_filter(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_24__* @ngx_alloc_chain_link(i32) #1

declare dso_local %struct.TYPE_24__* @ngx_http_charset_recode_to_utf8(i32, %struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_24__* @ngx_http_charset_recode_from_utf8(i32, %struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ngx_http_charset_recode(%struct.TYPE_25__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
