; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_sub_filter_module.c_ngx_http_sub_header_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_sub_filter_module.c_ngx_http_sub_header_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_29__*, i32, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_37__ = type { i64, i32 }
%struct.TYPE_28__ = type { i32, i32*, %struct.TYPE_30__*, i64, %struct.TYPE_36__, %struct.TYPE_35__, %struct.TYPE_34__* }
%struct.TYPE_30__ = type { i64, i64 }
%struct.TYPE_36__ = type { i32* }
%struct.TYPE_35__ = type { i32* }
%struct.TYPE_34__ = type { i32, %struct.TYPE_39__* }
%struct.TYPE_39__ = type { %struct.TYPE_37__, i32* }
%struct.TYPE_38__ = type { %struct.TYPE_32__, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_37__, i32* }
%struct.TYPE_40__ = type { i64, i32, %struct.TYPE_33__*, %struct.TYPE_34__*, %struct.TYPE_30__*, i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_38__* }

@ngx_http_sub_filter_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*)* @ngx_http_sub_header_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_sub_header_filter(%struct.TYPE_29__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca %struct.TYPE_37__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_38__*, align 8
  %10 = alloca %struct.TYPE_39__*, align 8
  %11 = alloca %struct.TYPE_40__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  %12 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %13 = load i32, i32* @ngx_http_sub_filter_module, align 4
  %14 = call %struct.TYPE_40__* @ngx_http_get_module_loc_conf(%struct.TYPE_29__* %12, i32 %13)
  store %struct.TYPE_40__* %14, %struct.TYPE_40__** %11, align 8
  %15 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %18 = icmp eq %struct.TYPE_33__* %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %1
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %27 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %27, i32 0, i32 5
  %29 = call i32* @ngx_http_test_content_type(%struct.TYPE_29__* %26, i32* %28)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %19, %1
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %33 = call i32 @ngx_http_next_header_filter(%struct.TYPE_29__* %32)
  store i32 %33, i32* %2, align 4
  br label %310

34:                                               ; preds = %25
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @ngx_pcalloc(i32 %37, i32 56)
  %39 = bitcast i8* %38 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %39, %struct.TYPE_28__** %8, align 8
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %41 = icmp eq %struct.TYPE_28__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @NGX_ERROR, align 4
  store i32 %43, i32* %2, align 4
  br label %310

44:                                               ; preds = %34
  %45 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %51, align 8
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 2
  store %struct.TYPE_30__* %52, %struct.TYPE_30__** %54, align 8
  %55 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_34__*, %struct.TYPE_34__** %56, align 8
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 6
  store %struct.TYPE_34__* %57, %struct.TYPE_34__** %59, align 8
  br label %223

60:                                               ; preds = %44
  %61 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_33__*, %struct.TYPE_33__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_38__*, %struct.TYPE_38__** %64, align 8
  store %struct.TYPE_38__* %65, %struct.TYPE_38__** %9, align 8
  %66 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %7, align 4
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 24, %75
  %77 = trunc i64 %76 to i32
  %78 = call i8* @ngx_pcalloc(i32 %73, i32 %77)
  %79 = bitcast i8* %78 to %struct.TYPE_39__*
  store %struct.TYPE_39__* %79, %struct.TYPE_39__** %10, align 8
  %80 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %81 = icmp eq %struct.TYPE_39__* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %60
  %83 = load i32, i32* @NGX_ERROR, align 4
  store i32 %83, i32* %2, align 4
  br label %310

84:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %161, %84
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %164

89:                                               ; preds = %85
  %90 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %98, i32 0, i32 1
  store i32* %94, i32** %99, align 8
  %100 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %124

108:                                              ; preds = %89
  %109 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %118, i32 0, i32 0
  %120 = bitcast %struct.TYPE_37__* %113 to i8*
  %121 = bitcast %struct.TYPE_37__* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 16, i1 false)
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %161

124:                                              ; preds = %89
  %125 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %128, i32 0, i32 0
  store %struct.TYPE_37__* %129, %struct.TYPE_37__** %4, align 8
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %131 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %137 = call i64 @ngx_http_complex_value(%struct.TYPE_29__* %130, %struct.TYPE_32__* %135, %struct.TYPE_37__* %136)
  %138 = load i64, i64* @NGX_OK, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %124
  %141 = load i32, i32* @NGX_ERROR, align 4
  store i32 %141, i32* %2, align 4
  br label %310

142:                                              ; preds = %124
  %143 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %161

148:                                              ; preds = %142
  %149 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @ngx_strlow(i32 %151, i32 %154, i64 %157)
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %148, %147, %108
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %5, align 4
  br label %85

164:                                              ; preds = %85
  %165 = load i32, i32* %6, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %169 = call i32 @ngx_http_next_header_filter(%struct.TYPE_29__* %168)
  store i32 %169, i32* %2, align 4
  br label %310

170:                                              ; preds = %164
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i8* @ngx_palloc(i32 %173, i32 4)
  %175 = bitcast i8* %174 to %struct.TYPE_34__*
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 6
  store %struct.TYPE_34__* %175, %struct.TYPE_34__** %177, align 8
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 6
  %180 = load %struct.TYPE_34__*, %struct.TYPE_34__** %179, align 8
  %181 = icmp eq %struct.TYPE_34__* %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %170
  %183 = load i32, i32* @NGX_ERROR, align 4
  store i32 %183, i32* %2, align 4
  br label %310

184:                                              ; preds = %170
  %185 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 6
  %188 = load %struct.TYPE_34__*, %struct.TYPE_34__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %188, i32 0, i32 1
  store %struct.TYPE_39__* %185, %struct.TYPE_39__** %189, align 8
  %190 = load i32, i32* %6, align 4
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 6
  %193 = load %struct.TYPE_34__*, %struct.TYPE_34__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %193, i32 0, i32 0
  store i32 %190, i32* %194, align 8
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i8* @ngx_palloc(i32 %197, i32 4)
  %199 = bitcast i8* %198 to %struct.TYPE_30__*
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %200, i32 0, i32 2
  store %struct.TYPE_30__* %199, %struct.TYPE_30__** %201, align 8
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %203, align 8
  %205 = icmp eq %struct.TYPE_30__* %204, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %184
  %207 = load i32, i32* @NGX_ERROR, align 4
  store i32 %207, i32* %2, align 4
  br label %310

208:                                              ; preds = %184
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %210, align 8
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 0, i32 6
  %214 = load %struct.TYPE_34__*, %struct.TYPE_34__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_39__*, %struct.TYPE_39__** %215, align 8
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %217, i32 0, i32 6
  %219 = load %struct.TYPE_34__*, %struct.TYPE_34__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @ngx_http_sub_init_tables(%struct.TYPE_30__* %211, %struct.TYPE_39__* %216, i32 %221)
  br label %223

223:                                              ; preds = %208, %49
  %224 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_30__*, %struct.TYPE_30__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = sub nsw i64 %231, 1
  %233 = call i8* @ngx_pnalloc(i32 %226, i64 %232)
  %234 = bitcast i8* %233 to i32*
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %236, i32 0, i32 0
  store i32* %234, i32** %237, align 8
  %238 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = icmp eq i32* %241, null
  br i1 %242, label %243, label %245

243:                                              ; preds = %223
  %244 = load i32, i32* @NGX_ERROR, align 4
  store i32 %244, i32* %2, align 4
  br label %310

245:                                              ; preds = %223
  %246 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %249, i32 0, i32 2
  %251 = load %struct.TYPE_30__*, %struct.TYPE_30__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = sub nsw i64 %253, 1
  %255 = call i8* @ngx_pnalloc(i32 %248, i64 %254)
  %256 = bitcast i8* %255 to i32*
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %258, i32 0, i32 0
  store i32* %256, i32** %259, align 8
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = icmp eq i32* %263, null
  br i1 %264, label %265, label %267

265:                                              ; preds = %245
  %266 = load i32, i32* @NGX_ERROR, align 4
  store i32 %266, i32* %2, align 4
  br label %310

267:                                              ; preds = %245
  %268 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %269 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %270 = load i32, i32* @ngx_http_sub_filter_module, align 4
  %271 = call i32 @ngx_http_set_ctx(%struct.TYPE_29__* %268, %struct.TYPE_28__* %269, i32 %270)
  %272 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %272, i32 0, i32 2
  %274 = load %struct.TYPE_30__*, %struct.TYPE_30__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = sub nsw i64 %276, 1
  %278 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %278, i32 0, i32 3
  store i64 %277, i64* %279, align 8
  %280 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %282, i32 0, i32 1
  store i32* %281, i32** %283, align 8
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %284, i32 0, i32 0
  store i32 1, i32* %285, align 8
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %287 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %288, align 8
  %290 = icmp eq %struct.TYPE_29__* %286, %289
  br i1 %290, label %291, label %307

291:                                              ; preds = %267
  %292 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %293 = call i32 @ngx_http_clear_content_length(%struct.TYPE_29__* %292)
  %294 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %295 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %303, label %298

298:                                              ; preds = %291
  %299 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %300 = call i32 @ngx_http_clear_last_modified(%struct.TYPE_29__* %299)
  %301 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %302 = call i32 @ngx_http_clear_etag(%struct.TYPE_29__* %301)
  br label %306

303:                                              ; preds = %291
  %304 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %305 = call i32 @ngx_http_weak_etag(%struct.TYPE_29__* %304)
  br label %306

306:                                              ; preds = %303, %298
  br label %307

307:                                              ; preds = %306, %267
  %308 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %309 = call i32 @ngx_http_next_header_filter(%struct.TYPE_29__* %308)
  store i32 %309, i32* %2, align 4
  br label %310

310:                                              ; preds = %307, %265, %243, %206, %182, %167, %140, %82, %42, %31
  %311 = load i32, i32* %2, align 4
  ret i32 %311
}

declare dso_local %struct.TYPE_40__* @ngx_http_get_module_loc_conf(%struct.TYPE_29__*, i32) #1

declare dso_local i32* @ngx_http_test_content_type(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @ngx_http_next_header_filter(%struct.TYPE_29__*) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_http_complex_value(%struct.TYPE_29__*, %struct.TYPE_32__*, %struct.TYPE_37__*) #1

declare dso_local i32 @ngx_strlow(i32, i32, i64) #1

declare dso_local i8* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_http_sub_init_tables(%struct.TYPE_30__*, %struct.TYPE_39__*, i32) #1

declare dso_local i8* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_29__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @ngx_http_clear_content_length(%struct.TYPE_29__*) #1

declare dso_local i32 @ngx_http_clear_last_modified(%struct.TYPE_29__*) #1

declare dso_local i32 @ngx_http_clear_etag(%struct.TYPE_29__*) #1

declare dso_local i32 @ngx_http_weak_etag(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
