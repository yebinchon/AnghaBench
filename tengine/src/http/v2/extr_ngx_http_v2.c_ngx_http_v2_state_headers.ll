; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_headers.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32, i64, %struct.TYPE_27__, %struct.TYPE_25__*, i32, i32, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { i32, i64, i64, i32, i32, i32*, %struct.TYPE_28__*, i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_30__*, %struct.TYPE_24__*, i32* }
%struct.TYPE_30__ = type { i32, i32*, %struct.TYPE_28__*, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_29__ = type { i64, i64, i64, i32 }

@NGX_HTTP_V2_PADDED_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_V2_PRIORITY_FLAG = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"client sent HEADERS frame with incorrect length %uz\00", align 1
@NGX_HTTP_V2_SIZE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"client sent HEADERS frame with empty header block\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"skipping http2 HEADERS frame\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"client sent padded HEADERS frame with incorrect length: %uz, padding: %uz\00", align 1
@NGX_HTTP_V2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_V2_DEFAULT_WEIGHT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [63 x i8] c"http2 HEADERS frame sid:%ui depends on %ui excl:%ui weight:%ui\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"client sent HEADERS frame with incorrect identifier %ui, the last was %ui\00", align 1
@NGX_HTTP_V2_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [67 x i8] c"client sent HEADERS frame for stream %ui with incorrect dependency\00", align 1
@ngx_http_v2_module = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"concurrent streams exceeded %ui\00", align 1
@NGX_HTTP_V2_REFUSED_STREAM = common dso_local global i32 0, align 4
@NGX_HTTP_V2_END_STREAM_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_V2_DEFAULT_WINDOW = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [63 x i8] c"client sent stream with data before settings were acknowledged\00", align 1
@NGX_HTTP_V2_NO_ERROR = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_31__*, i32*, i32*)* @ngx_http_v2_state_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_v2_state_headers(%struct.TYPE_31__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NGX_HTTP_V2_PADDED_FLAG, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @NGX_HTTP_V2_PRIORITY_FLAG, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %10, align 4
  store i64 0, i64* %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %33, %3
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 5
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %42
  %50 = load i32, i32* @NGX_LOG_INFO, align 4
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %50, i32 %55, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %62 = load i32, i32* @NGX_HTTP_V2_SIZE_ERROR, align 4
  %63 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %61, i32 %62)
  store i32* %63, i32** %4, align 8
  br label %473

64:                                               ; preds = %42
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = load i32, i32* @NGX_LOG_INFO, align 4
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %72, i32 %77, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %80 = load i32, i32* @NGX_HTTP_V2_SIZE_ERROR, align 4
  %81 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %79, i32 %80)
  store i32* %81, i32** %4, align 8
  br label %473

82:                                               ; preds = %64
  %83 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ngx_log_debug0(i32 %88, i32 %93, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call i32* @ngx_http_v2_state_skip(%struct.TYPE_31__* %95, i32* %96, i32* %97)
  store i32* %98, i32** %4, align 8
  br label %473

99:                                               ; preds = %82
  %100 = load i32*, i32** %7, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = ptrtoint i32* %100 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = load i64, i64* %8, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %99
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = call i32* @ngx_http_v2_state_save(%struct.TYPE_31__* %109, i32* %110, i32* %111, i32* (%struct.TYPE_31__*, i32*, i32*)* @ngx_http_v2_state_headers)
  store i32* %112, i32** %4, align 8
  br label %473

113:                                              ; preds = %99
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sub i64 %118, %114
  store i64 %119, i64* %117, align 8
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %168

122:                                              ; preds = %113
  %123 = load i32*, i32** %6, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %6, align 8
  %125 = load i32, i32* %123, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 2
  store i64 %126, i64* %129, align 8
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ugt i64 %133, %137
  br i1 %138, label %139, label %158

139:                                              ; preds = %122
  %140 = load i32, i32* @NGX_LOG_INFO, align 4
  %141 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %140, i32 %145, i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i64 %149, i64 %153)
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %156 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %157 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %155, i32 %156)
  store i32* %157, i32** %4, align 8
  br label %473

158:                                              ; preds = %122
  %159 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = sub i64 %166, %162
  store i64 %167, i64* %165, align 8
  br label %168

168:                                              ; preds = %158, %113
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %169 = load i32, i32* @NGX_HTTP_V2_DEFAULT_WEIGHT, align 4
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %168
  %173 = load i32*, i32** %6, align 8
  %174 = call i32 @ngx_http_v2_parse_uint32(i32* %173)
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = and i32 %175, 2147483647
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %12, align 4
  %178 = ashr i32 %177, 31
  store i32 %178, i32* %13, align 4
  %179 = load i32*, i32** %6, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 4
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %14, align 4
  %183 = load i32*, i32** %6, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 5
  store i32* %184, i32** %6, align 8
  br label %185

185:                                              ; preds = %172, %168
  %186 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @ngx_log_debug4(i32 %186, i32 %191, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %195, i32 %196, i32 %197, i32 %198)
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = srem i32 %203, 2
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %185
  %207 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp sle i32 %210, %213
  br i1 %214, label %215, label %233

215:                                              ; preds = %206, %185
  %216 = load i32, i32* @NGX_LOG_INFO, align 4
  %217 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %217, i32 0, i32 4
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %216, i32 %221, i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 %225, i32 %228)
  %230 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %231 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %232 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %230, i32 %231)
  store i32* %232, i32** %4, align 8
  br label %473

233:                                              ; preds = %206
  %234 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 4
  %240 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %240, i32 0, i32 4
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = call i32* @ngx_create_pool(i32 1024, i32 %244)
  %246 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 5
  store i32* %245, i32** %248, align 8
  %249 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 5
  %252 = load i32*, i32** %251, align 8
  %253 = icmp eq i32* %252, null
  br i1 %253, label %254, label %258

254:                                              ; preds = %233
  %255 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %256 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %257 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %255, i32 %256)
  store i32* %257, i32** %4, align 8
  br label %473

258:                                              ; preds = %233
  %259 = load i32, i32* %11, align 4
  %260 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %259, %263
  br i1 %264, label %265, label %278

265:                                              ; preds = %258
  %266 = load i32, i32* @NGX_LOG_INFO, align 4
  %267 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %267, i32 0, i32 4
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %266, i32 %271, i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 %275)
  %277 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  store i32 %277, i32* %15, align 4
  br label %454

278:                                              ; preds = %258
  %279 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %279, i32 0, i32 7
  %281 = load %struct.TYPE_26__*, %struct.TYPE_26__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @ngx_http_v2_module, align 4
  %285 = call %struct.TYPE_29__* @ngx_http_get_module_srv_conf(i32 %283, i32 %284)
  store %struct.TYPE_29__* %285, %struct.TYPE_29__** %18, align 8
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 7
  store i32 %288, i32* %291, align 8
  %292 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = icmp sge i64 %294, %297
  br i1 %298, label %299, label %311

299:                                              ; preds = %278
  %300 = load i32, i32* @NGX_LOG_INFO, align 4
  %301 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %301, i32 0, i32 4
  %303 = load %struct.TYPE_25__*, %struct.TYPE_25__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %300, i32 %305, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %308)
  %310 = load i32, i32* @NGX_HTTP_V2_REFUSED_STREAM, align 4
  store i32 %310, i32* %15, align 4
  br label %454

311:                                              ; preds = %278
  %312 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %312, i32 0, i32 6
  %314 = load i32, i32* %313, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %339, label %316

316:                                              ; preds = %311
  %317 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %317, i32 0, i32 3
  %319 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @NGX_HTTP_V2_END_STREAM_FLAG, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %339, label %324

324:                                              ; preds = %316
  %325 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %326 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @NGX_HTTP_V2_DEFAULT_WINDOW, align 8
  %329 = icmp slt i64 %327, %328
  br i1 %329, label %330, label %339

330:                                              ; preds = %324
  %331 = load i32, i32* @NGX_LOG_INFO, align 4
  %332 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %332, i32 0, i32 4
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %331, i32 %336, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0))
  %338 = load i32, i32* @NGX_HTTP_V2_REFUSED_STREAM, align 4
  store i32 %338, i32* %15, align 4
  br label %454

339:                                              ; preds = %324, %316, %311
  %340 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %341 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %341, i32 0, i32 3
  %343 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 8
  %345 = call %struct.TYPE_30__* @ngx_http_v2_get_node_by_id(%struct.TYPE_31__* %340, i32 %344, i32 1)
  store %struct.TYPE_30__* %345, %struct.TYPE_30__** %16, align 8
  %346 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %347 = icmp eq %struct.TYPE_30__* %346, null
  br i1 %347, label %348, label %352

348:                                              ; preds = %339
  %349 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %350 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %351 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %349, i32 %350)
  store i32* %351, i32** %4, align 8
  br label %473

352:                                              ; preds = %339
  %353 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %354 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %353, i32 0, i32 1
  %355 = load i32*, i32** %354, align 8
  %356 = icmp ne i32* %355, null
  br i1 %356, label %357, label %365

357:                                              ; preds = %352
  %358 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %359 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %358, i32 0, i32 3
  %360 = call i32 @ngx_queue_remove(i32* %359)
  %361 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %361, i32 0, i32 5
  %363 = load i32, i32* %362, align 8
  %364 = add nsw i32 %363, -1
  store i32 %364, i32* %362, align 8
  br label %365

365:                                              ; preds = %357, %352
  %366 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %367 = call %struct.TYPE_28__* @ngx_http_v2_create_stream(%struct.TYPE_31__* %366, i32 0)
  store %struct.TYPE_28__* %367, %struct.TYPE_28__** %17, align 8
  %368 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %369 = icmp eq %struct.TYPE_28__* %368, null
  br i1 %369, label %370, label %374

370:                                              ; preds = %365
  %371 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %372 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %373 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %371, i32 %372)
  store i32* %373, i32** %4, align 8
  br label %473

374:                                              ; preds = %365
  %375 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %376 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %376, i32 0, i32 3
  %378 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %377, i32 0, i32 6
  store %struct.TYPE_28__* %375, %struct.TYPE_28__** %378, align 8
  %379 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %379, i32 0, i32 3
  %381 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %380, i32 0, i32 5
  %382 = load i32*, i32** %381, align 8
  %383 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %384 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %383, i32 0, i32 3
  store i32* %382, i32** %384, align 8
  %385 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %385, i32 0, i32 3
  %387 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %386, i32 0, i32 4
  store i32 1, i32* %387, align 4
  %388 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %388, i32 0, i32 3
  %390 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %393 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %392, i32 0, i32 2
  %394 = load %struct.TYPE_24__*, %struct.TYPE_24__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %394, i32 0, i32 0
  store i64 %391, i64* %395, align 8
  %396 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %396, i32 0, i32 3
  %398 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @NGX_HTTP_V2_END_STREAM_FLAG, align 4
  %401 = and i32 %399, %400
  %402 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %403 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %402, i32 0, i32 0
  store i32 %401, i32* %403, align 8
  %404 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %405 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %406 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %405, i32 0, i32 1
  store %struct.TYPE_30__* %404, %struct.TYPE_30__** %406, align 8
  %407 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %408 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %409 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %408, i32 0, i32 2
  store %struct.TYPE_28__* %407, %struct.TYPE_28__** %409, align 8
  %410 = load i32, i32* %10, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %417, label %412

412:                                              ; preds = %374
  %413 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %414 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %413, i32 0, i32 1
  %415 = load i32*, i32** %414, align 8
  %416 = icmp eq i32* %415, null
  br i1 %416, label %417, label %426

417:                                              ; preds = %412, %374
  %418 = load i32, i32* %14, align 4
  %419 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %420 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %419, i32 0, i32 0
  store i32 %418, i32* %420, align 8
  %421 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %422 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %423 = load i32, i32* %11, align 4
  %424 = load i32, i32* %13, align 4
  %425 = call i32 @ngx_http_v2_set_dependency(%struct.TYPE_31__* %421, %struct.TYPE_30__* %422, i32 %423, i32 %424)
  br label %426

426:                                              ; preds = %417, %412
  %427 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %427, i32 0, i32 4
  %429 = load %struct.TYPE_25__*, %struct.TYPE_25__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %429, i32 0, i32 0
  %431 = load i64, i64* %430, align 8
  %432 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %433 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %432, i32 0, i32 2
  %434 = load i64, i64* %433, align 8
  %435 = icmp sge i64 %431, %434
  br i1 %435, label %436, label %449

436:                                              ; preds = %426
  %437 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %437, i32 0, i32 0
  store i32 1, i32* %438, align 8
  %439 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %440 = load i32, i32* @NGX_HTTP_V2_NO_ERROR, align 4
  %441 = call i64 @ngx_http_v2_send_goaway(%struct.TYPE_31__* %439, i32 %440)
  %442 = load i64, i64* @NGX_ERROR, align 8
  %443 = icmp eq i64 %441, %442
  br i1 %443, label %444, label %448

444:                                              ; preds = %436
  %445 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %446 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %447 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %445, i32 %446)
  store i32* %447, i32** %4, align 8
  br label %473

448:                                              ; preds = %436
  br label %449

449:                                              ; preds = %448, %426
  %450 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %451 = load i32*, i32** %6, align 8
  %452 = load i32*, i32** %7, align 8
  %453 = call i32* @ngx_http_v2_state_header_block(%struct.TYPE_31__* %450, i32* %451, i32* %452)
  store i32* %453, i32** %4, align 8
  br label %473

454:                                              ; preds = %330, %299, %265
  %455 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %456 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %456, i32 0, i32 3
  %458 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %457, i32 0, i32 3
  %459 = load i32, i32* %458, align 8
  %460 = load i32, i32* %15, align 4
  %461 = call i64 @ngx_http_v2_send_rst_stream(%struct.TYPE_31__* %455, i32 %459, i32 %460)
  %462 = load i64, i64* @NGX_OK, align 8
  %463 = icmp ne i64 %461, %462
  br i1 %463, label %464, label %468

464:                                              ; preds = %454
  %465 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %466 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %467 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %465, i32 %466)
  store i32* %467, i32** %4, align 8
  br label %473

468:                                              ; preds = %454
  %469 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %470 = load i32*, i32** %6, align 8
  %471 = load i32*, i32** %7, align 8
  %472 = call i32* @ngx_http_v2_state_header_block(%struct.TYPE_31__* %469, i32* %470, i32* %471)
  store i32* %472, i32** %4, align 8
  br label %473

473:                                              ; preds = %468, %464, %449, %444, %370, %348, %254, %215, %139, %108, %87, %71, %49
  %474 = load i32*, i32** %4, align 8
  ret i32* %474
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32* @ngx_http_v2_connection_error(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32* @ngx_http_v2_state_skip(%struct.TYPE_31__*, i32*, i32*) #1

declare dso_local i32* @ngx_http_v2_state_save(%struct.TYPE_31__*, i32*, i32*, i32* (%struct.TYPE_31__*, i32*, i32*)*) #1

declare dso_local i32 @ngx_http_v2_parse_uint32(i32*) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32* @ngx_create_pool(i32, i32) #1

declare dso_local %struct.TYPE_29__* @ngx_http_get_module_srv_conf(i32, i32) #1

declare dso_local %struct.TYPE_30__* @ngx_http_v2_get_node_by_id(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @ngx_queue_remove(i32*) #1

declare dso_local %struct.TYPE_28__* @ngx_http_v2_create_stream(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @ngx_http_v2_set_dependency(%struct.TYPE_31__*, %struct.TYPE_30__*, i32, i32) #1

declare dso_local i64 @ngx_http_v2_send_goaway(%struct.TYPE_31__*, i32) #1

declare dso_local i32* @ngx_http_v2_state_header_block(%struct.TYPE_31__*, i32*, i32*) #1

declare dso_local i64 @ngx_http_v2_send_rst_stream(%struct.TYPE_31__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
