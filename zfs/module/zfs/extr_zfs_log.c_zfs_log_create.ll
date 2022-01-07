; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_log.c_zfs_log_create.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_log.c_zfs_log_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i8*, i32 }
%struct.TYPE_24__ = type { i32, i32, i8*, i8*, i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { i64, i64*, i64, i8*, i8*, i32, i32, i32 }
%struct.TYPE_29__ = type { i64, i32, i8*, i32, i32 }
%struct.TYPE_25__ = type { i32 }

@ATTR_XVATTR = common dso_local global i32 0, align 4
@TX_CREATE_ATTR = common dso_local global i32 0, align 4
@TX_MKDIR_ATTR = common dso_local global i32 0, align 4
@TX_CREATE = common dso_local global i32 0, align 4
@TX_MKDIR = common dso_local global i32 0, align 4
@TX_MKXATTR = common dso_local global i32 0, align 4
@DNODE_SHIFT = common dso_local global i32 0, align 4
@VSA_ACE_ACLFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_log_create(i32* %0, i32* %1, i8* %2, %struct.TYPE_23__* %3, %struct.TYPE_23__* %4, i8* %5, %struct.TYPE_26__* %6, %struct.TYPE_24__* %7, %struct.TYPE_27__* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca %struct.TYPE_30__*, align 8
  %20 = alloca %struct.TYPE_28__*, align 8
  %21 = alloca %struct.TYPE_29__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_25__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %13, align 8
  store %struct.TYPE_23__* %4, %struct.TYPE_23__** %14, align 8
  store i8* %5, i8** %15, align 8
  store %struct.TYPE_26__* %6, %struct.TYPE_26__** %16, align 8
  store %struct.TYPE_24__* %7, %struct.TYPE_24__** %17, align 8
  store %struct.TYPE_27__* %8, %struct.TYPE_27__** %18, align 8
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %31 = bitcast %struct.TYPE_27__* %30 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %31, %struct.TYPE_25__** %25, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %28, align 8
  store i64 0, i64* %29, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i64 @zil_replaying(i32* %36, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %9
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %42 = call i64 @zfs_xattr_owner_unlinked(%struct.TYPE_23__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %9
  br label %330

45:                                               ; preds = %40
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %47 = icmp ne %struct.TYPE_24__* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %29, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %29, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = load i64, i64* %29, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %29, align 8
  br label %61

61:                                               ; preds = %48, %45
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ATTR_XVATTR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @ZIL_XVAT_SIZE(i32 %71)
  store i64 %72, i64* %23, align 8
  br label %73

73:                                               ; preds = %68, %61
  %74 = load i8*, i8** %12, align 8
  %75 = ptrtoint i8* %74 to i32
  %76 = load i32, i32* @TX_CREATE_ATTR, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %98, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** %12, align 8
  %80 = ptrtoint i8* %79 to i32
  %81 = load i32, i32* @TX_MKDIR_ATTR, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %98, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %12, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = load i32, i32* @TX_CREATE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %12, align 8
  %90 = ptrtoint i8* %89 to i32
  %91 = load i32, i32* @TX_MKDIR, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load i8*, i8** %12, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = load i32, i32* @TX_MKXATTR, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %93, %88, %83, %78, %73
  %99 = load i64, i64* %28, align 8
  %100 = add i64 56, %99
  %101 = load i64, i64* %29, align 8
  %102 = add i64 %100, %101
  %103 = load i64, i64* %23, align 8
  %104 = add i64 %102, %103
  store i64 %104, i64* %24, align 8
  store i64 56, i64* %27, align 8
  br label %116

105:                                              ; preds = %93
  %106 = load i64, i64* %28, align 8
  %107 = add i64 32, %106
  %108 = load i64, i64* %29, align 8
  %109 = add i64 %107, %108
  %110 = load i64, i64* %22, align 8
  %111 = call i32 @ZIL_ACE_LENGTH(i64 %110)
  %112 = sext i32 %111 to i64
  %113 = add i64 %109, %112
  %114 = load i64, i64* %23, align 8
  %115 = add i64 %113, %114
  store i64 %115, i64* %24, align 8
  store i64 32, i64* %27, align 8
  br label %116

116:                                              ; preds = %105, %98
  %117 = load i8*, i8** %12, align 8
  %118 = load i64, i64* %24, align 8
  %119 = call %struct.TYPE_30__* @zil_itx_create(i8* %117, i64 %118)
  store %struct.TYPE_30__* %119, %struct.TYPE_30__** %19, align 8
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 0
  %122 = bitcast i32* %121 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %122, %struct.TYPE_28__** %20, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @DNODE_SHIFT, align 4
  %140 = ashr i32 %138, %139
  %141 = call i32 @LR_FOID_SET_SLOTS(i32 %135, i32 %140)
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 5
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %148 = call i32 @ZTOUID(%struct.TYPE_23__* %147)
  %149 = call i32 @KUID_TO_SUID(i32 %148)
  %150 = call i32 @IS_EPHEMERAL(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %116
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %154 = call i32 @ZTOUID(%struct.TYPE_23__* %153)
  %155 = call i32 @KUID_TO_SUID(i32 %154)
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to i8*
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 4
  store i8* %157, i8** %159, align 8
  br label %166

160:                                              ; preds = %116
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 4
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %160, %152
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %168 = call i32 @ZTOGID(%struct.TYPE_23__* %167)
  %169 = call i32 @KGID_TO_SGID(i32 %168)
  %170 = call i32 @IS_EPHEMERAL(i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %166
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %174 = call i32 @ZTOGID(%struct.TYPE_23__* %173)
  %175 = call i32 @KGID_TO_SGID(i32 %174)
  %176 = sext i32 %175 to i64
  %177 = inttoptr i64 %176 to i8*
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 3
  store i8* %177, i8** %179, align 8
  br label %186

180:                                              ; preds = %166
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 2
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 3
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %180, %172
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %191 = call i32 @ZTOZSB(%struct.TYPE_23__* %190)
  %192 = call i32 @SA_ZPL_GEN(i32 %191)
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 2
  %195 = call i64 @sa_lookup(i32 %189, i32 %192, i64* %194, i32 8)
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %200 = call i32 @ZTOZSB(%struct.TYPE_23__* %199)
  %201 = call i32 @SA_ZPL_CRTIME(i32 %200)
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 1
  %204 = load i64*, i64** %203, align 8
  %205 = call i64 @sa_lookup(i32 %198, i32 %201, i64* %204, i32 16)
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %210 = call i32 @ZTOZSB(%struct.TYPE_23__* %209)
  %211 = call i32 @SA_ZPL_RDEV(i32 %210)
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 0, i32 0
  %214 = call i64 @sa_lookup(i32 %208, i32 %211, i64* %213, i32 8)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %186
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %218 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %217, i32 0, i32 0
  store i64 0, i64* %218, align 8
  br label %219

219:                                              ; preds = %216, %186
  %220 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %221 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @ATTR_XVATTR, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %240

226:                                              ; preds = %219
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %228 = bitcast %struct.TYPE_28__* %227 to i8*
  %229 = load i64, i64* %27, align 8
  %230 = getelementptr i8, i8* %228, i64 %229
  %231 = bitcast i8* %230 to i32*
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  %233 = call i32 @zfs_log_xvattr(i32* %231, %struct.TYPE_25__* %232)
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %235 = bitcast %struct.TYPE_28__* %234 to i8*
  %236 = load i64, i64* %27, align 8
  %237 = getelementptr i8, i8* %235, i64 %236
  %238 = load i64, i64* %23, align 8
  %239 = getelementptr i8, i8* %237, i64 %238
  store i8* %239, i8** %26, align 8
  br label %245

240:                                              ; preds = %219
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %242 = bitcast %struct.TYPE_28__* %241 to i8*
  %243 = load i64, i64* %27, align 8
  %244 = getelementptr i8, i8* %242, i64 %243
  store i8* %244, i8** %26, align 8
  br label %245

245:                                              ; preds = %240, %226
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %247 = icmp ne %struct.TYPE_26__* %246, null
  br i1 %247, label %248, label %311

248:                                              ; preds = %245
  %249 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %250 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %249, i32 0, i32 0
  %251 = bitcast i32* %250 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %251, %struct.TYPE_29__** %21, align 8
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %256 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %255, i32 0, i32 4
  store i32 %254, i32* %256, align 4
  %257 = load i64, i64* %22, align 8
  %258 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %259 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %258, i32 0, i32 0
  store i64 %257, i64* %259, align 8
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %261 = icmp ne %struct.TYPE_24__* %260, null
  br i1 %261, label %262, label %266

262:                                              ; preds = %248
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  br label %267

266:                                              ; preds = %248
  br label %267

267:                                              ; preds = %266, %262
  %268 = phi i32 [ %265, %262 ], [ 0, %266 ]
  %269 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %270 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %269, i32 0, i32 3
  store i32 %268, i32* %270, align 8
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %272 = icmp ne %struct.TYPE_24__* %271, null
  br i1 %272, label %273, label %277

273:                                              ; preds = %267
  %274 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  br label %278

277:                                              ; preds = %267
  br label %278

278:                                              ; preds = %277, %273
  %279 = phi i32 [ %276, %273 ], [ 0, %277 ]
  %280 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %281 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 8
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %283 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @VSA_ACE_ACLFLAGS, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %296

288:                                              ; preds = %278
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %290 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = sext i32 %291 to i64
  %293 = inttoptr i64 %292 to i8*
  %294 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %295 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %294, i32 0, i32 2
  store i8* %293, i8** %295, align 8
  br label %299

296:                                              ; preds = %278
  %297 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %298 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %297, i32 0, i32 2
  store i8* null, i8** %298, align 8
  br label %299

299:                                              ; preds = %296, %288
  %300 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %301 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %300, i32 0, i32 1
  %302 = load i8*, i8** %301, align 8
  %303 = load i8*, i8** %26, align 8
  %304 = load i64, i64* %22, align 8
  %305 = call i32 @bcopy(i8* %302, i8* %303, i64 %304)
  %306 = load i8*, i8** %26, align 8
  %307 = load i64, i64* %22, align 8
  %308 = call i32 @ZIL_ACE_LENGTH(i64 %307)
  %309 = sext i32 %308 to i64
  %310 = getelementptr i8, i8* %306, i64 %309
  store i8* %310, i8** %26, align 8
  br label %311

311:                                              ; preds = %299, %245
  %312 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %313 = icmp ne %struct.TYPE_24__* %312, null
  br i1 %313, label %314, label %321

314:                                              ; preds = %311
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %316 = load i8*, i8** %26, align 8
  %317 = call i8* @zfs_log_fuid_ids(%struct.TYPE_24__* %315, i8* %316)
  store i8* %317, i8** %26, align 8
  %318 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %319 = load i8*, i8** %26, align 8
  %320 = call i8* @zfs_log_fuid_domains(%struct.TYPE_24__* %318, i8* %319)
  store i8* %320, i8** %26, align 8
  br label %321

321:                                              ; preds = %314, %311
  %322 = load i8*, i8** %15, align 8
  %323 = load i8*, i8** %26, align 8
  %324 = load i64, i64* %28, align 8
  %325 = call i32 @bcopy(i8* %322, i8* %323, i64 %324)
  %326 = load i32*, i32** %10, align 8
  %327 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %328 = load i32*, i32** %11, align 8
  %329 = call i32 @zil_itx_assign(i32* %326, %struct.TYPE_30__* %327, i32* %328)
  br label %330

330:                                              ; preds = %321, %44
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @zil_replaying(i32*, i32*) #1

declare dso_local i64 @zfs_xattr_owner_unlinked(%struct.TYPE_23__*) #1

declare dso_local i64 @ZIL_XVAT_SIZE(i32) #1

declare dso_local i32 @ZIL_ACE_LENGTH(i64) #1

declare dso_local %struct.TYPE_30__* @zil_itx_create(i8*, i64) #1

declare dso_local i32 @LR_FOID_SET_SLOTS(i32, i32) #1

declare dso_local i32 @IS_EPHEMERAL(i32) #1

declare dso_local i32 @KUID_TO_SUID(i32) #1

declare dso_local i32 @ZTOUID(%struct.TYPE_23__*) #1

declare dso_local i32 @KGID_TO_SGID(i32) #1

declare dso_local i32 @ZTOGID(%struct.TYPE_23__*) #1

declare dso_local i64 @sa_lookup(i32, i32, i64*, i32) #1

declare dso_local i32 @SA_ZPL_GEN(i32) #1

declare dso_local i32 @ZTOZSB(%struct.TYPE_23__*) #1

declare dso_local i32 @SA_ZPL_CRTIME(i32) #1

declare dso_local i32 @SA_ZPL_RDEV(i32) #1

declare dso_local i32 @zfs_log_xvattr(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i8* @zfs_log_fuid_ids(%struct.TYPE_24__*, i8*) #1

declare dso_local i8* @zfs_log_fuid_domains(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @zil_itx_assign(i32*, %struct.TYPE_30__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
