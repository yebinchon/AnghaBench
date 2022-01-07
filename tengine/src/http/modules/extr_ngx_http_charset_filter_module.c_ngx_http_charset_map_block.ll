; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_charset_map_block.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_charset_map_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i8*, i32, %struct.TYPE_23__*, i32, %struct.TYPE_18__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64, i8**, i8* }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_25__, %struct.TYPE_17__ }
%struct.TYPE_25__ = type { %struct.TYPE_21__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_20__* }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"\22charset_map\22 between the same charsets \22%V\22 and \22%V\22\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"duplicate \22charset_map\22 between \22%V\22 and \22%V\22\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@NGX_UTF_LEN = common dso_local global i32 0, align 4
@ngx_http_charset_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_24__*, i32*, i8*)* @ngx_http_charset_map_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_charset_map_block(%struct.TYPE_24__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8***, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca %struct.TYPE_24__, align 8
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %8, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  store %struct.TYPE_19__* %28, %struct.TYPE_19__** %17, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i64 1
  %33 = call i64 @ngx_http_add_charset(%struct.TYPE_25__* %30, %struct.TYPE_19__* %32)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @NGX_ERROR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %38, i8** %4, align 8
  br label %365

39:                                               ; preds = %3
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i64 2
  %44 = call i64 @ngx_http_add_charset(%struct.TYPE_25__* %41, %struct.TYPE_19__* %43)
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* @NGX_ERROR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %49, i8** %4, align 8
  br label %365

50:                                               ; preds = %39
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %14, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32, i32* @NGX_LOG_EMERG, align 4
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i64 1
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i64 2
  %61 = call i32 @ngx_conf_log_error(i32 %55, %struct.TYPE_24__* %56, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %58, %struct.TYPE_19__* %60)
  %62 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %62, i8** %4, align 8
  br label %365

63:                                               ; preds = %50
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %20, align 8
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %109, %63
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %112

75:                                               ; preds = %68
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i64, i64* %14, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %99, label %87

87:                                               ; preds = %81, %75
  %88 = load i64, i64* %13, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %88, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %87
  %94 = load i64, i64* %14, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %94, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %93, %81
  %100 = load i32, i32* @NGX_LOG_EMERG, align 4
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i64 1
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i64 2
  %106 = call i32 @ngx_conf_log_error(i32 %100, %struct.TYPE_24__* %101, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_19__* %103, %struct.TYPE_19__* %105)
  %107 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %107, i8** %4, align 8
  br label %365

108:                                              ; preds = %93, %87
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %68

112:                                              ; preds = %68
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  %115 = call %struct.TYPE_20__* @ngx_array_push(%struct.TYPE_17__* %114)
  store %struct.TYPE_20__* %115, %struct.TYPE_20__** %20, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %117 = icmp eq %struct.TYPE_20__* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %119, i8** %4, align 8
  br label %365

120:                                              ; preds = %112
  %121 = load i64, i64* %13, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load i64, i64* %14, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i64 2
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @ngx_strcasecmp(i32 %130, i8** bitcast ([6 x i8]* @.str.2 to i8**))
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %231

133:                                              ; preds = %120
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @NGX_UTF_LEN, align 4
  %138 = mul nsw i32 256, %137
  %139 = call i8* @ngx_pcalloc(i32 %136, i32 %138)
  %140 = bitcast i8* %139 to i8**
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 2
  store i8** %140, i8*** %142, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 2
  %145 = load i8**, i8*** %144, align 8
  %146 = icmp eq i8** %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %133
  %148 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %148, i8** %4, align 8
  br label %365

149:                                              ; preds = %133
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i8* @ngx_pcalloc(i32 %152, i32 2048)
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 3
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 3
  %158 = load i8*, i8** %157, align 8
  %159 = icmp eq i8* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %149
  %161 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %161, i8** %4, align 8
  br label %365

162:                                              ; preds = %149
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = call i8* @ngx_pcalloc(i32 %165, i32 256)
  %167 = bitcast i8* %166 to i8**
  store i8** %167, i8*** %11, align 8
  %168 = load i8**, i8*** %11, align 8
  %169 = icmp eq i8** %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %162
  %171 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %171, i8** %4, align 8
  br label %365

172:                                              ; preds = %162
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 3
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  %177 = bitcast i8* %176 to i8***
  store i8*** %177, i8**** %12, align 8
  %178 = load i8**, i8*** %11, align 8
  %179 = load i8***, i8**** %12, align 8
  %180 = getelementptr inbounds i8**, i8*** %179, i64 0
  store i8** %178, i8*** %180, align 8
  store i32 0, i32* %15, align 4
  br label %181

181:                                              ; preds = %207, %172
  %182 = load i32, i32* %15, align 4
  %183 = icmp slt i32 %182, 128
  br i1 %183, label %184, label %210

184:                                              ; preds = %181
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 2
  %187 = load i8**, i8*** %186, align 8
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* @NGX_UTF_LEN, align 4
  %190 = mul nsw i32 %188, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %187, i64 %191
  store i8** %192, i8*** %10, align 8
  %193 = load i8**, i8*** %10, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 0
  store i8* inttoptr (i64 1 to i8*), i8** %194, align 8
  %195 = load i32, i32* %15, align 4
  %196 = sext i32 %195 to i64
  %197 = inttoptr i64 %196 to i8*
  %198 = load i8**, i8*** %10, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 1
  store i8* %197, i8** %199, align 8
  %200 = load i32, i32* %15, align 4
  %201 = sext i32 %200 to i64
  %202 = inttoptr i64 %201 to i8*
  %203 = load i8**, i8*** %11, align 8
  %204 = load i32, i32* %15, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  store i8* %202, i8** %206, align 8
  br label %207

207:                                              ; preds = %184
  %208 = load i32, i32* %15, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %15, align 4
  br label %181

210:                                              ; preds = %181
  br label %211

211:                                              ; preds = %227, %210
  %212 = load i32, i32* %15, align 4
  %213 = icmp slt i32 %212, 256
  br i1 %213, label %214, label %230

214:                                              ; preds = %211
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 2
  %217 = load i8**, i8*** %216, align 8
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* @NGX_UTF_LEN, align 4
  %220 = mul nsw i32 %218, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8*, i8** %217, i64 %221
  store i8** %222, i8*** %10, align 8
  %223 = load i8**, i8*** %10, align 8
  %224 = getelementptr inbounds i8*, i8** %223, i64 0
  store i8* inttoptr (i64 1 to i8*), i8** %224, align 8
  %225 = load i8**, i8*** %10, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 1
  store i8* inttoptr (i64 63 to i8*), i8** %226, align 8
  br label %227

227:                                              ; preds = %214
  %228 = load i32, i32* %15, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %15, align 4
  br label %211

230:                                              ; preds = %211
  br label %306

231:                                              ; preds = %120
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = call i8* @ngx_palloc(i32 %234, i32 256)
  %236 = bitcast i8* %235 to i8**
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 2
  store i8** %236, i8*** %238, align 8
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 2
  %241 = load i8**, i8*** %240, align 8
  %242 = icmp eq i8** %241, null
  br i1 %242, label %243, label %245

243:                                              ; preds = %231
  %244 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %244, i8** %4, align 8
  br label %365

245:                                              ; preds = %231
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = call i8* @ngx_palloc(i32 %248, i32 256)
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 3
  store i8* %249, i8** %251, align 8
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 3
  %254 = load i8*, i8** %253, align 8
  %255 = icmp eq i8* %254, null
  br i1 %255, label %256, label %258

256:                                              ; preds = %245
  %257 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %257, i8** %4, align 8
  br label %365

258:                                              ; preds = %245
  store i32 0, i32* %15, align 4
  br label %259

259:                                              ; preds = %282, %258
  %260 = load i32, i32* %15, align 4
  %261 = icmp slt i32 %260, 128
  br i1 %261, label %262, label %285

262:                                              ; preds = %259
  %263 = load i32, i32* %15, align 4
  %264 = sext i32 %263 to i64
  %265 = inttoptr i64 %264 to i8*
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 2
  %268 = load i8**, i8*** %267, align 8
  %269 = load i32, i32* %15, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8*, i8** %268, i64 %270
  store i8* %265, i8** %271, align 8
  %272 = load i32, i32* %15, align 4
  %273 = sext i32 %272 to i64
  %274 = inttoptr i64 %273 to i8*
  %275 = ptrtoint i8* %274 to i8
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 3
  %278 = load i8*, i8** %277, align 8
  %279 = load i32, i32* %15, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  store i8 %275, i8* %281, align 1
  br label %282

282:                                              ; preds = %262
  %283 = load i32, i32* %15, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %15, align 4
  br label %259

285:                                              ; preds = %259
  br label %286

286:                                              ; preds = %302, %285
  %287 = load i32, i32* %15, align 4
  %288 = icmp slt i32 %287, 256
  br i1 %288, label %289, label %305

289:                                              ; preds = %286
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 2
  %292 = load i8**, i8*** %291, align 8
  %293 = load i32, i32* %15, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8*, i8** %292, i64 %294
  store i8* inttoptr (i64 63 to i8*), i8** %295, align 8
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 3
  %298 = load i8*, i8** %297, align 8
  %299 = load i32, i32* %15, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %298, i64 %300
  store i8 63, i8* %301, align 1
  br label %302

302:                                              ; preds = %289
  %303 = load i32, i32* %15, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %15, align 4
  br label %286

305:                                              ; preds = %286
  br label %306

306:                                              ; preds = %305, %230
  %307 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %309, align 8
  store %struct.TYPE_21__* %310, %struct.TYPE_21__** %19, align 8
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %312 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 2
  store %struct.TYPE_20__* %311, %struct.TYPE_20__** %312, align 8
  %313 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %314 = load i64, i64* %14, align 8
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %313, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  store %struct.TYPE_21__* %315, %struct.TYPE_21__** %316, align 8
  %317 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  store i32 0, i32* %317, align 8
  %318 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %319 = bitcast %struct.TYPE_24__* %18 to i8*
  %320 = bitcast %struct.TYPE_24__* %318 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %319, i8* align 8 %320, i64 40, i1 false)
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %321, i32 0, i32 2
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %322, align 8
  %323 = load i32, i32* @ngx_http_charset_map, align 4
  %324 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %324, i32 0, i32 1
  store i32 %323, i32* %325, align 8
  %326 = load i8*, i8** %7, align 8
  %327 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %327, i32 0, i32 0
  store i8* %326, i8** %328, align 8
  %329 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %330 = call i8* @ngx_conf_parse(%struct.TYPE_24__* %329, i32* null)
  store i8* %330, i8** %9, align 8
  %331 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %332 = bitcast %struct.TYPE_24__* %331 to i8*
  %333 = bitcast %struct.TYPE_24__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %332, i8* align 8 %333, i64 40, i1 false)
  %334 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %363

337:                                              ; preds = %306
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  store i32 %341, i32* %16, align 4
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  %345 = load %struct.TYPE_21__*, %struct.TYPE_21__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = sdiv i32 %347, %343
  store i32 %348, i32* %346, align 4
  %349 = load i32, i32* %16, align 4
  %350 = mul nsw i32 %349, 10
  %351 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = sdiv i32 %350, %352
  %354 = srem i32 %353, 10
  %355 = icmp sgt i32 %354, 4
  br i1 %355, label %356, label %362

356:                                              ; preds = %337
  %357 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  %358 = load %struct.TYPE_21__*, %struct.TYPE_21__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %359, align 4
  br label %362

362:                                              ; preds = %356, %337
  br label %363

363:                                              ; preds = %362, %306
  %364 = load i8*, i8** %9, align 8
  store i8* %364, i8** %4, align 8
  br label %365

365:                                              ; preds = %363, %256, %243, %170, %160, %147, %118, %99, %54, %48, %37
  %366 = load i8*, i8** %4, align 8
  ret i8* %366
}

declare dso_local i64 @ngx_http_add_charset(%struct.TYPE_25__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_24__*, i32, i8*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @ngx_array_push(%struct.TYPE_17__*) #1

declare dso_local i64 @ngx_strcasecmp(i32, i8**) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i8* @ngx_palloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_24__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
