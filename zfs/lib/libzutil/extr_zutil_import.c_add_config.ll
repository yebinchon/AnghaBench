; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_add_config.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_add_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_11__*, i64, i32* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_12__*, i32 }

@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@POOL_STATE_SPARE = common dso_local global i64 0, align 8
@POOL_STATE_L2CACHE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TOP_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_TXG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i8*, i32, i32, i32*)* @add_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_config(i32* %0, %struct.TYPE_9__* %1, i8* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca %struct.TYPE_12__*, align 8
  %22 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %25 = call i64 @nvlist_lookup_uint64(i32* %23, i32 %24, i64* %18)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %6
  %28 = load i64, i64* %18, align 8
  %29 = load i64, i64* @POOL_STATE_SPARE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %18, align 8
  %33 = load i64, i64* @POOL_STATE_L2CACHE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %31, %27
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %38 = call i64 @nvlist_lookup_uint64(i32* %36, i32 %37, i64* %15)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %35
  %41 = load i32*, i32** %8, align 8
  %42 = call i8* @zutil_alloc(i32* %41, i32 32)
  %43 = bitcast i8* %42 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %22, align 8
  %44 = icmp eq %struct.TYPE_11__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 -1, i32* %7, align 4
  br label %258

46:                                               ; preds = %40
  %47 = load i32*, i32** %8, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i8* @zutil_strdup(i32* %47, i8* %48)
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 4
  store i32* %50, i32** %52, align 8
  %53 = icmp eq i32* %50, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %56 = call i32 @free(%struct.TYPE_11__* %55)
  store i32 -1, i32* %7, align 4
  br label %258

57:                                               ; preds = %46
  %58 = load i64, i64* %15, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** %71, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %74, align 8
  store i32 0, i32* %7, align 4
  br label %258

75:                                               ; preds = %35, %31, %6
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* @ZPOOL_CONFIG_POOL_GUID, align 4
  %78 = call i64 @nvlist_lookup_uint64(i32* %76, i32 %77, i64* %14)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %75
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %83 = call i64 @nvlist_lookup_uint64(i32* %81, i32 %82, i64* %15)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %80
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* @ZPOOL_CONFIG_TOP_GUID, align 4
  %88 = call i64 @nvlist_lookup_uint64(i32* %86, i32 %87, i64* %16)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* @ZPOOL_CONFIG_POOL_TXG, align 4
  %93 = call i64 @nvlist_lookup_uint64(i32* %91, i32 %92, i64* %17)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i64, i64* %17, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95, %90, %85, %80, %75
  store i32 0, i32* %7, align 4
  br label %258

99:                                               ; preds = %95
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  store %struct.TYPE_10__* %102, %struct.TYPE_10__** %19, align 8
  br label %103

103:                                              ; preds = %114, %99
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %105 = icmp ne %struct.TYPE_10__* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %14, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %118

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  store %struct.TYPE_10__* %117, %struct.TYPE_10__** %19, align 8
  br label %103

118:                                              ; preds = %112, %103
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %120 = icmp eq %struct.TYPE_10__* %119, null
  br i1 %120, label %121, label %139

121:                                              ; preds = %118
  %122 = load i32*, i32** %8, align 8
  %123 = call i8* @zutil_alloc(i32* %122, i32 24)
  %124 = bitcast i8* %123 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %124, %struct.TYPE_10__** %19, align 8
  %125 = icmp eq %struct.TYPE_10__* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i32 -1, i32* %7, align 4
  br label %258

127:                                              ; preds = %121
  %128 = load i64, i64* %14, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  store %struct.TYPE_10__* %133, %struct.TYPE_10__** %135, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  store %struct.TYPE_10__* %136, %struct.TYPE_10__** %138, align 8
  br label %139

139:                                              ; preds = %127, %118
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  store %struct.TYPE_8__* %142, %struct.TYPE_8__** %20, align 8
  br label %143

143:                                              ; preds = %154, %139
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %145 = icmp ne %struct.TYPE_8__* %144, null
  br i1 %145, label %146, label %158

146:                                              ; preds = %143
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %16, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %158

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  store %struct.TYPE_8__* %157, %struct.TYPE_8__** %20, align 8
  br label %143

158:                                              ; preds = %152, %143
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %160 = icmp eq %struct.TYPE_8__* %159, null
  br i1 %160, label %161, label %179

161:                                              ; preds = %158
  %162 = load i32*, i32** %8, align 8
  %163 = call i8* @zutil_alloc(i32* %162, i32 24)
  %164 = bitcast i8* %163 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %164, %struct.TYPE_8__** %20, align 8
  %165 = icmp eq %struct.TYPE_8__* %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  store i32 -1, i32* %7, align 4
  br label %258

167:                                              ; preds = %161
  %168 = load i64, i64* %16, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  store %struct.TYPE_8__* %173, %struct.TYPE_8__** %175, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  store %struct.TYPE_8__* %176, %struct.TYPE_8__** %178, align 8
  br label %179

179:                                              ; preds = %167, %158
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %181, align 8
  store %struct.TYPE_12__* %182, %struct.TYPE_12__** %21, align 8
  br label %183

183:                                              ; preds = %194, %179
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %185 = icmp ne %struct.TYPE_12__* %184, null
  br i1 %185, label %186, label %198

186:                                              ; preds = %183
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %17, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %198

193:                                              ; preds = %186
  br label %194

194:                                              ; preds = %193
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  store %struct.TYPE_12__* %197, %struct.TYPE_12__** %21, align 8
  br label %183

198:                                              ; preds = %192, %183
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %200 = icmp eq %struct.TYPE_12__* %199, null
  br i1 %200, label %201, label %223

201:                                              ; preds = %198
  %202 = load i32*, i32** %8, align 8
  %203 = call i8* @zutil_alloc(i32* %202, i32 24)
  %204 = bitcast i8* %203 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %204, %struct.TYPE_12__** %21, align 8
  %205 = icmp eq %struct.TYPE_12__* %204, null
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  store i32 -1, i32* %7, align 4
  br label %258

207:                                              ; preds = %201
  %208 = load i64, i64* %17, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  store i64 %208, i64* %210, align 8
  %211 = load i32*, i32** %13, align 8
  %212 = call i32 @fnvlist_dup(i32* %211)
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %216, align 8
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 1
  store %struct.TYPE_12__* %217, %struct.TYPE_12__** %219, align 8
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  store %struct.TYPE_12__* %220, %struct.TYPE_12__** %222, align 8
  br label %223

223:                                              ; preds = %207, %198
  %224 = load i32*, i32** %8, align 8
  %225 = call i8* @zutil_alloc(i32* %224, i32 32)
  %226 = bitcast i8* %225 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %226, %struct.TYPE_11__** %22, align 8
  %227 = icmp eq %struct.TYPE_11__* %226, null
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  store i32 -1, i32* %7, align 4
  br label %258

229:                                              ; preds = %223
  %230 = load i32*, i32** %8, align 8
  %231 = load i8*, i8** %10, align 8
  %232 = call i8* @zutil_strdup(i32* %230, i8* %231)
  %233 = bitcast i8* %232 to i32*
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 4
  store i32* %233, i32** %235, align 8
  %236 = icmp eq i32* %233, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %229
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %239 = call i32 @free(%struct.TYPE_11__* %238)
  store i32 -1, i32* %7, align 4
  br label %258

240:                                              ; preds = %229
  %241 = load i64, i64* %15, align 8
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 3
  store i64 %241, i64* %243, align 8
  %244 = load i32, i32* %11, align 4
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load i32, i32* %12, align 4
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 1
  store i32 %247, i32* %249, align 4
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %251, align 8
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 2
  store %struct.TYPE_11__* %252, %struct.TYPE_11__** %254, align 8
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  store %struct.TYPE_11__* %255, %struct.TYPE_11__** %257, align 8
  store i32 0, i32* %7, align 4
  br label %258

258:                                              ; preds = %240, %237, %228, %206, %166, %126, %98, %57, %54, %45
  %259 = load i32, i32* %7, align 4
  ret i32 %259
}

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i8* @zutil_alloc(i32*, i32) #1

declare dso_local i8* @zutil_strdup(i32*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @fnvlist_dup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
