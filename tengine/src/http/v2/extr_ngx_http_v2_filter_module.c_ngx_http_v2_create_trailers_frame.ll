; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2_filter_module.c_ngx_http_v2_create_trailers_frame.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2_filter_module.c_ngx_http_v2_create_trailers_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__, i32, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_13__, %struct.TYPE_21__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }

@NGX_HTTP_V2_MAX_FIELD = common dso_local global i64 0, align 8
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"too long response trailer name: \22%V\22\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"too long response trailer value: \22%V: %V\22\00", align 1
@NGX_HTTP_V2_INT_OCTETS = common dso_local global i64 0, align 8
@NGX_HTTP_V2_NO_TRAILERS = common dso_local global i32* null, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_18__*)* @ngx_http_v2_create_trailers_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_v2_create_trailers_frame(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %12, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %10, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %11, align 8
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %145, %1
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp uge i64 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %33 = icmp eq %struct.TYPE_17__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %148

35:                                               ; preds = %29
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %10, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %11, align 8
  store i64 0, i64* %9, align 8
  br label %42

42:                                               ; preds = %35, %23
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %145

50:                                               ; preds = %42
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NGX_HTTP_V2_MAX_FIELD, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %50
  %60 = load i32, i32* @NGX_LOG_CRIT, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %62, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = call i32 (i32, %struct.TYPE_20__*, i32, i8*, %struct.TYPE_21__*, ...) @ngx_log_error(i32 %60, %struct.TYPE_20__* %63, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* %67)
  store i32* null, i32** %2, align 8
  br label %247

69:                                               ; preds = %50
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NGX_HTTP_V2_MAX_FIELD, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %69
  %79 = load i32, i32* @NGX_LOG_CRIT, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %88 = load i64, i64* %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = call i32 (i32, %struct.TYPE_20__*, i32, i8*, %struct.TYPE_21__*, ...) @ngx_log_error(i32 %79, %struct.TYPE_20__* %82, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_21__* %86, %struct.TYPE_13__* %90)
  store i32* null, i32** %2, align 8
  br label %247

92:                                               ; preds = %69
  %93 = load i64, i64* @NGX_HTTP_V2_INT_OCTETS, align 8
  %94 = add nsw i64 1, %93
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %94, %100
  %102 = load i64, i64* @NGX_HTTP_V2_INT_OCTETS, align 8
  %103 = add i64 %101, %102
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %103, %109
  %111 = load i64, i64* %7, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %7, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %8, align 8
  %120 = icmp ugt i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %92
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %123 = load i64, i64* %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %8, align 8
  br label %128

128:                                              ; preds = %121, %92
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %130 = load i64, i64* %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %8, align 8
  %136 = icmp ugt i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %128
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %139 = load i64, i64* %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %8, align 8
  br label %144

144:                                              ; preds = %137, %128
  br label %145

145:                                              ; preds = %144, %49
  %146 = load i64, i64* %9, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %9, align 8
  br label %23

148:                                              ; preds = %34
  %149 = load i64, i64* %7, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i32*, i32** @NGX_HTTP_V2_NO_TRAILERS, align 8
  store i32* %152, i32** %2, align 8
  br label %247

153:                                              ; preds = %148
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i64, i64* %8, align 8
  %158 = call i32* @ngx_palloc(i32 %156, i64 %157)
  store i32* %158, i32** %6, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i64, i64* %7, align 8
  %163 = call i32* @ngx_pnalloc(i32 %161, i64 %162)
  store i32* %163, i32** %4, align 8
  %164 = load i32*, i32** %4, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %153
  %167 = load i32*, i32** %6, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %170

169:                                              ; preds = %166, %153
  store i32* null, i32** %2, align 8
  br label %247

170:                                              ; preds = %166
  %171 = load i32*, i32** %4, align 8
  store i32* %171, i32** %5, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  store %struct.TYPE_17__* %175, %struct.TYPE_17__** %10, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  store %struct.TYPE_16__* %178, %struct.TYPE_16__** %11, align 8
  store i64 0, i64* %9, align 8
  br label %179

179:                                              ; preds = %239, %170
  %180 = load i64, i64* %9, align 8
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp uge i64 %180, %183
  br i1 %184, label %185, label %198

185:                                              ; preds = %179
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %187, align 8
  %189 = icmp eq %struct.TYPE_17__* %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %242

191:                                              ; preds = %185
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %193, align 8
  store %struct.TYPE_17__* %194, %struct.TYPE_17__** %10, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %196, align 8
  store %struct.TYPE_16__* %197, %struct.TYPE_16__** %11, align 8
  store i64 0, i64* %9, align 8
  br label %198

198:                                              ; preds = %191, %179
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %200 = load i64, i64* %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %198
  br label %239

206:                                              ; preds = %198
  %207 = load i32*, i32** %4, align 8
  %208 = getelementptr inbounds i32, i32* %207, i32 1
  store i32* %208, i32** %4, align 8
  store i32 0, i32* %207, align 4
  %209 = load i32*, i32** %4, align 8
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %211 = load i64, i64* %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %217 = load i64, i64* %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i32*, i32** %6, align 8
  %223 = call i32* @ngx_http_v2_write_name(i32* %209, i32 %215, i64 %221, i32* %222)
  store i32* %223, i32** %4, align 8
  %224 = load i32*, i32** %4, align 8
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %226 = load i64, i64* %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %232 = load i64, i64* %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i32*, i32** %6, align 8
  %238 = call i32* @ngx_http_v2_write_value(i32* %224, i32 %230, i64 %236, i32* %237)
  store i32* %238, i32** %4, align 8
  br label %239

239:                                              ; preds = %206, %205
  %240 = load i64, i64* %9, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %9, align 8
  br label %179

242:                                              ; preds = %190
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %244 = load i32*, i32** %5, align 8
  %245 = load i32*, i32** %4, align 8
  %246 = call i32* @ngx_http_v2_create_headers_frame(%struct.TYPE_18__* %243, i32* %244, i32* %245, i32 1)
  store i32* %246, i32** %2, align 8
  br label %247

247:                                              ; preds = %242, %169, %151, %78, %59
  %248 = load i32*, i32** %2, align 8
  ret i32* %248
}

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_20__*, i32, i8*, %struct.TYPE_21__*, ...) #1

declare dso_local i32* @ngx_palloc(i32, i64) #1

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32* @ngx_http_v2_write_name(i32*, i32, i64, i32*) #1

declare dso_local i32* @ngx_http_v2_write_value(i32*, i32, i64, i32*) #1

declare dso_local i32* @ngx_http_v2_create_headers_frame(%struct.TYPE_18__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
