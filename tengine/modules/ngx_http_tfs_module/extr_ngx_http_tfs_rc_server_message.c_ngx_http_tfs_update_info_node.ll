; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_rc_server_message.c_ngx_http_tfs_update_info_node.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_rc_server_message.c_ngx_http_tfs_update_info_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_24__*, %struct.TYPE_25__, i64, %struct.TYPE_22__*, i64, i32* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, i32* }
%struct.TYPE_22__ = type { i32, i64, %struct.TYPE_21__*, i64, %struct.TYPE_17__ }
%struct.TYPE_21__ = type { %struct.TYPE_25__, i64, %struct.TYPE_25__ }
%struct.TYPE_17__ = type { %struct.TYPE_25__* }

@NGX_HTTP_TFS_TAIR_SERVER_ADDR_PART_COUNT = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_19__*, i32*)* @ngx_http_tfs_update_info_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_tfs_update_info_node(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, %struct.TYPE_19__* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  store i32* %19, i32** %10, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 7
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 7
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @ngx_slab_free_locked(i32 %27, i32* %30)
  br label %32

32:                                               ; preds = %24, %4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %15, align 8
  store i64 0, i64* %12, align 8
  br label %38

38:                                               ; preds = %163, %32
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %166

44:                                               ; preds = %38
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %92

49:                                               ; preds = %44
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 4
  store %struct.TYPE_17__* %51, %struct.TYPE_17__** %18, align 8
  store i64 0, i64* %13, align 8
  br label %52

52:                                               ; preds = %84, %49
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* @NGX_HTTP_TFS_TAIR_SERVER_ADDR_PART_COUNT, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %52
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %58, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %87

66:                                               ; preds = %56
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %71, align 8
  %73 = load i64, i64* %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @ngx_slab_free_locked(i32 %69, i32* %76)
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %79, align 8
  %81 = load i64, i64* %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i64 %81
  %83 = call i32 @ngx_str_null(%struct.TYPE_25__* %82)
  br label %84

84:                                               ; preds = %66
  %85 = load i64, i64* %13, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %13, align 8
  br label %52

87:                                               ; preds = %65, %52
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  store i32 -1, i32* %89, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %87, %44
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  store %struct.TYPE_21__* %95, %struct.TYPE_21__** %16, align 8
  store i64 0, i64* %13, align 8
  br label %96

96:                                               ; preds = %155, %92
  %97 = load i64, i64* %13, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %97, %100
  br i1 %101, label %102, label %158

102:                                              ; preds = %96
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sle i64 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %108, %102
  br label %158

115:                                              ; preds = %108
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @ngx_slab_free_locked(i32 %118, i32* %122)
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 2
  %126 = call i32 @ngx_str_null(%struct.TYPE_25__* %125)
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 1
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp sle i64 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %115
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %134, %115
  br label %158

141:                                              ; preds = %134
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @ngx_slab_free_locked(i32 %144, i32* %148)
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = call i32 @ngx_str_null(%struct.TYPE_25__* %151)
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 1
  store %struct.TYPE_21__* %154, %struct.TYPE_21__** %16, align 8
  br label %155

155:                                              ; preds = %141
  %156 = load i64, i64* %12, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %12, align 8
  br label %96

158:                                              ; preds = %140, %114, %96
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 1
  store i64 0, i64* %160, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 1
  store %struct.TYPE_22__* %162, %struct.TYPE_22__** %15, align 8
  br label %163

163:                                              ; preds = %158
  %164 = load i64, i64* %12, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %12, align 8
  br label %38

166:                                              ; preds = %38
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  store i64 0, i64* %168, align 8
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 4
  store i64 0, i64* %170, align 8
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp sgt i64 %174, 0
  br i1 %175, label %176, label %194

176:                                              ; preds = %166
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %194

182:                                              ; preds = %176
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @ngx_slab_free_locked(i32 %185, i32* %189)
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 3
  %193 = call i32 @ngx_str_null(%struct.TYPE_25__* %192)
  br label %194

194:                                              ; preds = %182, %176, %166
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  store i64 0, i64* %197, align 8
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %199, align 8
  store %struct.TYPE_24__* %200, %struct.TYPE_24__** %17, align 8
  store i64 0, i64* %12, align 8
  br label %201

201:                                              ; preds = %252, %194
  %202 = load i64, i64* %12, align 8
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = icmp ult i64 %202, %205
  br i1 %206, label %207, label %255

207:                                              ; preds = %201
  store i64 0, i64* %13, align 8
  br label %208

208:                                              ; preds = %248, %207
  %209 = load i64, i64* %13, align 8
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %211 = load i64, i64* %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ult i64 %209, %214
  br i1 %215, label %216, label %251

216:                                              ; preds = %208
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %218 = load i64, i64* %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %220, align 8
  %222 = load i64, i64* %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i64 %222
  store %struct.TYPE_23__* %223, %struct.TYPE_23__** %14, align 8
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp sle i64 %227, 0
  br i1 %228, label %235, label %229

229:                                              ; preds = %216
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = icmp eq i32* %233, null
  br i1 %234, label %235, label %236

235:                                              ; preds = %229, %216
  br label %251

236:                                              ; preds = %229
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @ngx_slab_free_locked(i32 %239, i32* %243)
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 0
  %247 = call i32 @ngx_str_null(%struct.TYPE_25__* %246)
  br label %248

248:                                              ; preds = %236
  %249 = load i64, i64* %13, align 8
  %250 = add i64 %249, 1
  store i64 %250, i64* %13, align 8
  br label %208

251:                                              ; preds = %235, %208
  br label %252

252:                                              ; preds = %251
  %253 = load i64, i64* %12, align 8
  %254 = add i64 %253, 1
  store i64 %254, i64* %12, align 8
  br label %201

255:                                              ; preds = %201
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 1
  store i64 0, i64* %257, align 8
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %260 = load i32*, i32** %10, align 8
  %261 = call i64 @ngx_http_tfs_parse_rc_info(%struct.TYPE_19__* %258, %struct.TYPE_20__* %259, i32* %260)
  store i64 %261, i64* %11, align 8
  %262 = load i64, i64* %11, align 8
  %263 = load i64, i64* @NGX_ERROR, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %255
  %266 = load i64, i64* @NGX_ERROR, align 8
  store i64 %266, i64* %5, align 8
  br label %275

267:                                              ; preds = %255
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 0
  store %struct.TYPE_19__* %268, %struct.TYPE_19__** %270, align 8
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %273 = call i32 @ngx_http_tfs_update_rc_servers(%struct.TYPE_18__* %271, %struct.TYPE_19__* %272)
  %274 = load i64, i64* @NGX_OK, align 8
  store i64 %274, i64* %5, align 8
  br label %275

275:                                              ; preds = %267, %265
  %276 = load i64, i64* %5, align 8
  ret i64 %276
}

declare dso_local i32 @ngx_slab_free_locked(i32, i32*) #1

declare dso_local i32 @ngx_str_null(%struct.TYPE_25__*) #1

declare dso_local i64 @ngx_http_tfs_parse_rc_info(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @ngx_http_tfs_update_rc_servers(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
