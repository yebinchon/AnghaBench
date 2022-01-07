; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_init_headers.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_init_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32, i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64, %struct.TYPE_32__* }
%struct.TYPE_36__ = type { %struct.TYPE_28__, i32*, i32*, i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_32__ = type { %struct.TYPE_31__, %struct.TYPE_30__ }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_32__* }
%struct.TYPE_24__ = type { i8*, i32, %struct.TYPE_30__ }
%struct.TYPE_25__ = type { i8*, i32*, i32, i32, i32, i32 (i32, i32)*, %struct.TYPE_28__* }
%struct.TYPE_34__ = type { i32**, i32**, i32*, %struct.TYPE_31__*, %struct.TYPE_26__* }
%struct.TYPE_33__ = type { i32, i64 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_script_copy_len_code = common dso_local global i64 0, align 8
@ngx_http_script_copy_code = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"proxy_headers_hash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_26__*, %struct.TYPE_35__*, %struct.TYPE_36__*, %struct.TYPE_32__*)* @ngx_http_proxy_init_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_proxy_init_headers(%struct.TYPE_26__* %0, %struct.TYPE_35__* %1, %struct.TYPE_36__* %2, %struct.TYPE_32__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_27__, align 8
  %15 = alloca %struct.TYPE_27__, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca %struct.TYPE_32__*, align 8
  %18 = alloca %struct.TYPE_32__*, align 8
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca %struct.TYPE_25__, align 8
  %21 = alloca %struct.TYPE_34__, align 8
  %22 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %7, align 8
  store %struct.TYPE_36__* %2, %struct.TYPE_36__** %8, align 8
  store %struct.TYPE_32__* %3, %struct.TYPE_32__** %9, align 8
  %23 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i64, i64* @NGX_OK, align 8
  store i64 %29, i64* %5, align 8
  br label %369

30:                                               ; preds = %4
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ngx_array_init(%struct.TYPE_27__* %14, i32 %33, i32 4, i32 24)
  %35 = load i64, i64* @NGX_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i64, i64* @NGX_ERROR, align 8
  store i64 %38, i64* %5, align 8
  br label %369

39:                                               ; preds = %30
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ngx_array_init(%struct.TYPE_27__* %15, i32 %42, i32 4, i32 16)
  %44 = load i64, i64* @NGX_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* @NGX_ERROR, align 8
  store i64 %47, i64* %5, align 8
  br label %369

48:                                               ; preds = %39
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @ngx_array_create(i32 %51, i32 64, i32 1)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i64, i64* @NGX_ERROR, align 8
  store i64 %61, i64* %5, align 8
  br label %369

62:                                               ; preds = %48
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @ngx_array_create(i32 %65, i32 512, i32 1)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %68, i32 0, i32 2
  store i32* %67, i32** %69, align 8
  %70 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load i64, i64* @NGX_ERROR, align 8
  store i64 %75, i64* %5, align 8
  br label %369

76:                                               ; preds = %62
  %77 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %78, align 8
  %80 = icmp ne %struct.TYPE_29__* %79, null
  br i1 %80, label %81, label %113

81:                                               ; preds = %76
  %82 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %85, align 8
  store %struct.TYPE_32__* %86, %struct.TYPE_32__** %16, align 8
  store i64 0, i64* %13, align 8
  br label %87

87:                                               ; preds = %109, %81
  %88 = load i64, i64* %13, align 8
  %89 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %88, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %87
  %96 = call i8* @ngx_array_push(%struct.TYPE_27__* %15)
  %97 = bitcast i8* %96 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %97, %struct.TYPE_32__** %17, align 8
  %98 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %99 = icmp eq %struct.TYPE_32__* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i64, i64* @NGX_ERROR, align 8
  store i64 %101, i64* %5, align 8
  br label %369

102:                                              ; preds = %95
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %105 = load i64, i64* %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i64 %105
  %107 = bitcast %struct.TYPE_32__* %103 to i8*
  %108 = bitcast %struct.TYPE_32__* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 %108, i64 16, i1 false)
  br label %109

109:                                              ; preds = %102
  %110 = load i64, i64* %13, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %13, align 8
  br label %87

112:                                              ; preds = %87
  br label %113

113:                                              ; preds = %112, %76
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  store %struct.TYPE_32__* %114, %struct.TYPE_32__** %18, align 8
  br label %115

115:                                              ; preds = %159, %113
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %162

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %122, align 8
  store %struct.TYPE_32__* %123, %struct.TYPE_32__** %16, align 8
  store i64 0, i64* %13, align 8
  br label %124

124:                                              ; preds = %144, %121
  %125 = load i64, i64* %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ult i64 %125, %127
  br i1 %128, label %129, label %147

129:                                              ; preds = %124
  %130 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %135 = load i64, i64* %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @ngx_strcasecmp(i32 %133, i32 %139)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %129
  br label %159

143:                                              ; preds = %129
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %13, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %13, align 8
  br label %124

147:                                              ; preds = %124
  %148 = call i8* @ngx_array_push(%struct.TYPE_27__* %15)
  %149 = bitcast i8* %148 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %149, %struct.TYPE_32__** %17, align 8
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %151 = icmp eq %struct.TYPE_32__* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i64, i64* @NGX_ERROR, align 8
  store i64 %153, i64* %5, align 8
  br label %369

154:                                              ; preds = %147
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %157 = bitcast %struct.TYPE_32__* %155 to i8*
  %158 = bitcast %struct.TYPE_32__* %156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %157, i8* align 8 %158, i64 16, i1 false)
  br label %159

159:                                              ; preds = %154, %142
  %160 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %161 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %160, i32 1
  store %struct.TYPE_32__* %161, %struct.TYPE_32__** %18, align 8
  br label %115

162:                                              ; preds = %115
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %163, align 8
  store %struct.TYPE_32__* %164, %struct.TYPE_32__** %16, align 8
  store i64 0, i64* %13, align 8
  br label %165

165:                                              ; preds = %331, %162
  %166 = load i64, i64* %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ult i64 %166, %168
  br i1 %169, label %170, label %334

170:                                              ; preds = %165
  %171 = call i8* @ngx_array_push(%struct.TYPE_27__* %14)
  %172 = bitcast i8* %171 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %172, %struct.TYPE_24__** %19, align 8
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %174 = icmp eq %struct.TYPE_24__* %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = load i64, i64* @NGX_ERROR, align 8
  store i64 %176, i64* %5, align 8
  br label %369

177:                                              ; preds = %170
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %181 = load i64, i64* %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %182, i32 0, i32 1
  %184 = bitcast %struct.TYPE_30__* %179 to i8*
  %185 = bitcast %struct.TYPE_30__* %183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %184, i8* align 8 %185, i64 8, i1 false)
  %186 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %187 = load i64, i64* %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %193 = load i64, i64* %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @ngx_hash_key_lc(i32 %191, i32 %197)
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 8
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  store i8* inttoptr (i64 1 to i8*), i8** %202, align 8
  %203 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %204 = load i64, i64* %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %177
  br label %331

211:                                              ; preds = %177
  %212 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = call i8* @ngx_array_push_n(i32* %214, i32 16)
  %216 = bitcast i8* %215 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %216, %struct.TYPE_33__** %22, align 8
  %217 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %218 = icmp eq %struct.TYPE_33__* %217, null
  br i1 %218, label %219, label %221

219:                                              ; preds = %211
  %220 = load i64, i64* @NGX_ERROR, align 8
  store i64 %220, i64* %5, align 8
  br label %369

221:                                              ; preds = %211
  %222 = load i64, i64* @ngx_http_script_copy_len_code, align 8
  %223 = inttoptr i64 %222 to i8*
  %224 = ptrtoint i8* %223 to i64
  %225 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %226 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  %227 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %228 = load i64, i64* %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %234 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %236 = load i64, i64* %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = add i64 16, %241
  %243 = add i64 %242, 8
  %244 = sub i64 %243, 1
  %245 = and i64 %244, -8
  store i64 %245, i64* %11, align 8
  %246 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = load i64, i64* %11, align 8
  %250 = trunc i64 %249 to i32
  %251 = call i8* @ngx_array_push_n(i32* %248, i32 %250)
  %252 = bitcast i8* %251 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %252, %struct.TYPE_33__** %22, align 8
  %253 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %254 = icmp eq %struct.TYPE_33__* %253, null
  br i1 %254, label %255, label %257

255:                                              ; preds = %221
  %256 = load i64, i64* @NGX_ERROR, align 8
  store i64 %256, i64* %5, align 8
  br label %369

257:                                              ; preds = %221
  %258 = load i64, i64* @ngx_http_script_copy_code, align 8
  %259 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %260 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %259, i32 0, i32 1
  store i64 %258, i64* %260, align 8
  %261 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %262 = load i64, i64* %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %268 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 8
  %269 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %270 = bitcast %struct.TYPE_33__* %269 to i32*
  %271 = getelementptr inbounds i32, i32* %270, i64 16
  store i32* %271, i32** %10, align 8
  %272 = load i32*, i32** %10, align 8
  %273 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %274 = load i64, i64* %13, align 8
  %275 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %280 = load i64, i64* %13, align 8
  %281 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @ngx_memcpy(i32* %272, i32 %278, i32 %284)
  %286 = call i32 @ngx_memzero(%struct.TYPE_34__* %21, i32 40)
  %287 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 4
  store %struct.TYPE_26__* %287, %struct.TYPE_26__** %288, align 8
  %289 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %290 = load i64, i64* %13, align 8
  %291 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 3
  store %struct.TYPE_31__* %292, %struct.TYPE_31__** %293, align 8
  %294 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 2
  store i32* %295, i32** %296, align 8
  %297 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 1
  store i32** %298, i32*** %299, align 8
  %300 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 0
  store i32** %301, i32*** %302, align 8
  %303 = call i64 @ngx_http_script_compile(%struct.TYPE_34__* %21)
  %304 = load i64, i64* @NGX_OK, align 8
  %305 = icmp ne i64 %303, %304
  br i1 %305, label %306, label %308

306:                                              ; preds = %257
  %307 = load i64, i64* @NGX_ERROR, align 8
  store i64 %307, i64* %5, align 8
  br label %369

308:                                              ; preds = %257
  %309 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = call i8* @ngx_array_push_n(i32* %311, i32 8)
  %313 = bitcast i8* %312 to i64*
  store i64* %313, i64** %12, align 8
  %314 = load i64*, i64** %12, align 8
  %315 = icmp eq i64* %314, null
  br i1 %315, label %316, label %318

316:                                              ; preds = %308
  %317 = load i64, i64* @NGX_ERROR, align 8
  store i64 %317, i64* %5, align 8
  br label %369

318:                                              ; preds = %308
  %319 = load i64*, i64** %12, align 8
  store i64 0, i64* %319, align 8
  %320 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %320, i32 0, i32 2
  %322 = load i32*, i32** %321, align 8
  %323 = call i8* @ngx_array_push_n(i32* %322, i32 8)
  %324 = bitcast i8* %323 to i64*
  store i64* %324, i64** %12, align 8
  %325 = load i64*, i64** %12, align 8
  %326 = icmp eq i64* %325, null
  br i1 %326, label %327, label %329

327:                                              ; preds = %318
  %328 = load i64, i64* @NGX_ERROR, align 8
  store i64 %328, i64* %5, align 8
  br label %369

329:                                              ; preds = %318
  %330 = load i64*, i64** %12, align 8
  store i64 0, i64* %330, align 8
  br label %331

331:                                              ; preds = %329, %210
  %332 = load i64, i64* %13, align 8
  %333 = add i64 %332, 1
  store i64 %333, i64* %13, align 8
  br label %165

334:                                              ; preds = %165
  %335 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %335, i32 0, i32 1
  %337 = load i32*, i32** %336, align 8
  %338 = call i8* @ngx_array_push_n(i32* %337, i32 8)
  %339 = bitcast i8* %338 to i64*
  store i64* %339, i64** %12, align 8
  %340 = load i64*, i64** %12, align 8
  %341 = icmp eq i64* %340, null
  br i1 %341, label %342, label %344

342:                                              ; preds = %334
  %343 = load i64, i64* @NGX_ERROR, align 8
  store i64 %343, i64* %5, align 8
  br label %369

344:                                              ; preds = %334
  %345 = load i64*, i64** %12, align 8
  store i64 0, i64* %345, align 8
  %346 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 6
  store %struct.TYPE_28__* %347, %struct.TYPE_28__** %348, align 8
  %349 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 5
  store i32 (i32, i32)* @ngx_hash_key_lc, i32 (i32, i32)** %349, align 8
  %350 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 4
  store i32 %352, i32* %353, align 8
  %354 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 3
  store i32 %356, i32* %357, align 4
  %358 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %358, align 8
  %359 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 2
  store i32 %361, i32* %362, align 8
  %363 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 1
  store i32* null, i32** %363, align 8
  %364 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 1
  %365 = load %struct.TYPE_32__*, %struct.TYPE_32__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = call i64 @ngx_hash_init(%struct.TYPE_25__* %20, %struct.TYPE_32__* %365, i64 %367)
  store i64 %368, i64* %5, align 8
  br label %369

369:                                              ; preds = %344, %342, %327, %316, %306, %255, %219, %175, %152, %100, %74, %60, %46, %37, %28
  %370 = load i64, i64* %5, align 8
  ret i64 %370
}

declare dso_local i64 @ngx_array_init(%struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i8* @ngx_array_create(i32, i32, i32) #1

declare dso_local i8* @ngx_array_push(%struct.TYPE_27__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_strcasecmp(i32, i32) #1

declare dso_local i32 @ngx_hash_key_lc(i32, i32) #1

declare dso_local i8* @ngx_array_push_n(i32*, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i32, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_34__*, i32) #1

declare dso_local i64 @ngx_http_script_compile(%struct.TYPE_34__*) #1

declare dso_local i64 @ngx_hash_init(%struct.TYPE_25__*, %struct.TYPE_32__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
