; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_trim_filter_module/extr_ngx_http_trim_filter_module.c_ngx_http_trim_body_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_trim_filter_module/extr_ngx_http_trim_filter_module.c_ngx_http_trim_body_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32* }
%struct.TYPE_30__ = type { i32, i32* }
%struct.TYPE_32__ = type { i32, i32* }
%struct.TYPE_29__ = type { i32, i32* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_27__*, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i64, i64, i32, i8*, i64, i32*, i32* }
%struct.TYPE_25__ = type { i64, i32, i32, i32, i32, %struct.TYPE_27__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"http trim filter\00", align 1
@ngx_http_trim_filter_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_trim_saved_html = common dso_local global %struct.TYPE_31__ zeroinitializer, align 8
@NGX_HTTP_TRIM_SAVE_SLASH = common dso_local global i64 0, align 8
@ngx_http_trim_saved_jscss = common dso_local global %struct.TYPE_30__ zeroinitializer, align 8
@NGX_HTTP_TRIM_SAVE_SPACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@NGX_HTTP_TRIM_SAVE_JSCSS = common dso_local global i64 0, align 8
@NGX_HTTP_TRIM_SAVE_HACKCSS = common dso_local global i64 0, align 8
@ngx_http_trim_saved_css_hack = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@NGX_HTTP_TRIM_SAVE_JAVASCRIPT = common dso_local global i64 0, align 8
@ngx_http_trim_script = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_26__*, %struct.TYPE_27__*)* @ngx_http_trim_body_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_trim_body_filter(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_27__**, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %12 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ngx_log_debug0(i32 %12, i32 %17, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %20 = load i32, i32* @ngx_http_trim_filter_module, align 4
  %21 = call %struct.TYPE_25__* @ngx_http_get_module_ctx(%struct.TYPE_26__* %19, i32 %20)
  store %struct.TYPE_25__* %21, %struct.TYPE_25__** %11, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %23 = icmp eq %struct.TYPE_25__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %27 = call i64 @ngx_http_next_body_filter(%struct.TYPE_26__* %25, %struct.TYPE_27__* %26)
  store i64 %27, i64* %3, align 8
  br label %399

28:                                               ; preds = %2
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %30 = icmp eq %struct.TYPE_27__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %34 = call i64 @ngx_http_next_body_filter(%struct.TYPE_26__* %32, %struct.TYPE_27__* %33)
  store i64 %34, i64* %3, align 8
  br label %399

35:                                               ; preds = %28
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 5
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %37, align 8
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %44 = call i64 @ngx_chain_add_copy(i32 %40, %struct.TYPE_27__** %42, %struct.TYPE_27__* %43)
  %45 = load i64, i64* @NGX_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i64, i64* @NGX_ERROR, align 8
  store i64 %48, i64* %3, align 8
  br label %399

49:                                               ; preds = %35
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__** %9, %struct.TYPE_27__*** %10, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %51, align 8
  store %struct.TYPE_27__* %52, %struct.TYPE_27__** %8, align 8
  br label %53

53:                                               ; preds = %377, %49
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %55 = icmp ne %struct.TYPE_27__* %54, null
  br i1 %55, label %56, label %381

56:                                               ; preds = %53
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 7
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 6
  %66 = load i32*, i32** %65, align 8
  %67 = ptrtoint i32* %61 to i64
  %68 = ptrtoint i32* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 4
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %80 = call i64 @ngx_http_trim_parse(%struct.TYPE_26__* %77, %struct.TYPE_27__* %78, %struct.TYPE_25__* %79)
  store i64 %80, i64* %6, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* @NGX_ERROR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %56
  %85 = load i64, i64* %6, align 8
  store i64 %85, i64* %3, align 8
  br label %399

86:                                               ; preds = %56
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %282

91:                                               ; preds = %86
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 2
  %97 = call %struct.TYPE_27__* @ngx_chain_get_free_buf(i32 %94, i32* %96)
  store %struct.TYPE_27__* %97, %struct.TYPE_27__** %7, align 8
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %99 = icmp eq %struct.TYPE_27__* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i64, i64* @NGX_ERROR, align 8
  store i64 %101, i64* %3, align 8
  br label %399

102:                                              ; preds = %91
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 4
  store i8* bitcast (i32* @ngx_http_trim_filter_module to i8*), i8** %106, align 8
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %102
  %116 = load i32*, i32** getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @ngx_http_trim_saved_html, i32 0, i32 0), align 8
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 6
  store i32* %116, i32** %120, align 8
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 6
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 7
  store i32* %129, i32** %133, align 8
  br label %255

134:                                              ; preds = %102
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @NGX_HTTP_TRIM_SAVE_SLASH, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %134
  %141 = load i32*, i32** getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @ngx_http_trim_saved_jscss, i32 0, i32 1), align 8
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 6
  store i32* %141, i32** %145, align 8
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 6
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 7
  store i32* %151, i32** %155, align 8
  br label %254

156:                                              ; preds = %134
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @NGX_HTTP_TRIM_SAVE_SPACE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %177

162:                                              ; preds = %156
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 6
  store i32* bitcast ([2 x i8]* @.str.1 to i32*), i32** %166, align 8
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 6
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 7
  store i32* %172, i32** %176, align 8
  br label %253

177:                                              ; preds = %156
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @NGX_HTTP_TRIM_SAVE_JSCSS, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %201

183:                                              ; preds = %177
  %184 = load i32*, i32** getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @ngx_http_trim_saved_jscss, i32 0, i32 1), align 8
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 6
  store i32* %184, i32** %188, align 8
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 6
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @ngx_http_trim_saved_jscss, i32 0, i32 0), align 8
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %199, i32 0, i32 7
  store i32* %196, i32** %200, align 8
  br label %252

201:                                              ; preds = %177
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @NGX_HTTP_TRIM_SAVE_HACKCSS, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %225

207:                                              ; preds = %201
  %208 = load i32*, i32** getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @ngx_http_trim_saved_css_hack, i32 0, i32 1), align 8
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %211, i32 0, i32 6
  store i32* %208, i32** %212, align 8
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %215, i32 0, i32 6
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @ngx_http_trim_saved_css_hack, i32 0, i32 0), align 8
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 7
  store i32* %220, i32** %224, align 8
  br label %251

225:                                              ; preds = %201
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @NGX_HTTP_TRIM_SAVE_JAVASCRIPT, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %250

231:                                              ; preds = %225
  %232 = load i32*, i32** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @ngx_http_trim_script, i32 0, i32 1), align 8
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 6
  store i32* %232, i32** %236, align 8
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %239, i32 0, i32 6
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @ngx_http_trim_script, i32 0, i32 0), align 8
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = getelementptr inbounds i32, i32* %244, i64 -1
  %246 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 7
  store i32* %245, i32** %249, align 8
  br label %250

250:                                              ; preds = %231, %225
  br label %251

251:                                              ; preds = %250, %207
  br label %252

252:                                              ; preds = %251, %183
  br label %253

253:                                              ; preds = %252, %162
  br label %254

254:                                              ; preds = %253, %140
  br label %255

255:                                              ; preds = %254, %115
  %256 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %257 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %10, align 8
  store %struct.TYPE_27__* %256, %struct.TYPE_27__** %257, align 8
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i32 0, i32 0
  store %struct.TYPE_27__** %259, %struct.TYPE_27__*** %10, align 8
  %260 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i32 0, i32 7
  %264 = load i32*, i32** %263, align 8
  %265 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %267, i32 0, i32 6
  %269 = load i32*, i32** %268, align 8
  %270 = ptrtoint i32* %264 to i64
  %271 = ptrtoint i32* %269 to i64
  %272 = sub i64 %270, %271
  %273 = sdiv exact i64 %272, 4
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  %278 = add nsw i64 %277, %273
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* %275, align 8
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %280, i32 0, i32 0
  store i64 0, i64* %281, align 8
  br label %282

282:                                              ; preds = %255, %86
  %283 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %283, i32 0, i32 1
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %285, i32 0, i32 5
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %321

289:                                              ; preds = %282
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_28__*, %struct.TYPE_28__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = sub nsw i64 %294, %299
  %301 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_28__*, %struct.TYPE_28__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %303, i32 0, i32 7
  %305 = load i32*, i32** %304, align 8
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_28__*, %struct.TYPE_28__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %308, i32 0, i32 6
  %310 = load i32*, i32** %309, align 8
  %311 = ptrtoint i32* %305 to i64
  %312 = ptrtoint i32* %310 to i64
  %313 = sub i64 %311, %312
  %314 = sdiv exact i64 %313, 4
  %315 = icmp ne i64 %300, %314
  br i1 %315, label %316, label %321

316:                                              ; preds = %289
  %317 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_28__*, %struct.TYPE_28__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %319, i32 0, i32 5
  store i64 0, i64* %320, align 8
  br label %321

321:                                              ; preds = %316, %289, %282
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_28__*, %struct.TYPE_28__** %323, align 8
  %325 = call i64 @ngx_buf_size(%struct.TYPE_28__* %324)
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %371

327:                                              ; preds = %321
  %328 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %328, i32 0, i32 1
  %330 = load %struct.TYPE_28__*, %struct.TYPE_28__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %362

334:                                              ; preds = %327
  %335 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %339 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %338, i32 0, i32 2
  %340 = call %struct.TYPE_27__* @ngx_chain_get_free_buf(i32 %337, i32* %339)
  store %struct.TYPE_27__* %340, %struct.TYPE_27__** %7, align 8
  %341 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %342 = icmp eq %struct.TYPE_27__* %341, null
  br i1 %342, label %343, label %345

343:                                              ; preds = %334
  %344 = load i64, i64* @NGX_ERROR, align 8
  store i64 %344, i64* %3, align 8
  br label %399

345:                                              ; preds = %334
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %346, i32 0, i32 1
  %348 = load %struct.TYPE_28__*, %struct.TYPE_28__** %347, align 8
  %349 = call i32 @ngx_memzero(%struct.TYPE_28__* %348, i32 4)
  %350 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %350, i32 0, i32 1
  %352 = load %struct.TYPE_28__*, %struct.TYPE_28__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %352, i32 0, i32 4
  store i8* bitcast (i32* @ngx_http_trim_filter_module to i8*), i8** %353, align 8
  %354 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %354, i32 0, i32 1
  %356 = load %struct.TYPE_28__*, %struct.TYPE_28__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %356, i32 0, i32 3
  store i32 1, i32* %357, align 8
  %358 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %359 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %10, align 8
  store %struct.TYPE_27__* %358, %struct.TYPE_27__** %359, align 8
  %360 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %360, i32 0, i32 0
  store %struct.TYPE_27__** %361, %struct.TYPE_27__*** %10, align 8
  br label %370

362:                                              ; preds = %327
  %363 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %364 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_27__*, %struct.TYPE_27__** %364, align 8
  %366 = icmp eq %struct.TYPE_27__* %365, null
  br i1 %366, label %367, label %369

367:                                              ; preds = %362
  %368 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %10, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %368, align 8
  br label %369

369:                                              ; preds = %367, %362
  br label %370

370:                                              ; preds = %369, %345
  br label %376

371:                                              ; preds = %321
  %372 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %373 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %10, align 8
  store %struct.TYPE_27__* %372, %struct.TYPE_27__** %373, align 8
  %374 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %375 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %374, i32 0, i32 0
  store %struct.TYPE_27__** %375, %struct.TYPE_27__*** %10, align 8
  br label %376

376:                                              ; preds = %371, %370
  br label %377

377:                                              ; preds = %376
  %378 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_27__*, %struct.TYPE_27__** %379, align 8
  store %struct.TYPE_27__* %380, %struct.TYPE_27__** %8, align 8
  br label %53

381:                                              ; preds = %53
  %382 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %383 = icmp eq %struct.TYPE_27__* %382, null
  br i1 %383, label %384, label %386

384:                                              ; preds = %381
  %385 = load i64, i64* @NGX_OK, align 8
  store i64 %385, i64* %3, align 8
  br label %399

386:                                              ; preds = %381
  %387 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %388 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %389 = call i64 @ngx_http_next_body_filter(%struct.TYPE_26__* %387, %struct.TYPE_27__* %388)
  store i64 %389, i64* %6, align 8
  %390 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %394 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %393, i32 0, i32 2
  %395 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %396 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %395, i32 0, i32 1
  %397 = call i32 @ngx_chain_update_chains(i32 %392, i32* %394, i32* %396, %struct.TYPE_27__** %9, i8* bitcast (i32* @ngx_http_trim_filter_module to i8*))
  %398 = load i64, i64* %6, align 8
  store i64 %398, i64* %3, align 8
  br label %399

399:                                              ; preds = %386, %384, %343, %100, %84, %47, %31, %24
  %400 = load i64, i64* %3, align 8
  ret i64 %400
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_25__* @ngx_http_get_module_ctx(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @ngx_http_next_body_filter(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i64 @ngx_chain_add_copy(i32, %struct.TYPE_27__**, %struct.TYPE_27__*) #1

declare dso_local i64 @ngx_http_trim_parse(%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_27__* @ngx_chain_get_free_buf(i32, i32*) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_28__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @ngx_chain_update_chains(i32, i32*, i32*, %struct.TYPE_27__**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
