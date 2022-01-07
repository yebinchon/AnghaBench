; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_zaccess.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_zaccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@ZFS_XATTR = common dso_local global i32 0, align 4
@ACE_WRITE_DATA = common dso_local global i32 0, align 4
@ACE_APPEND_DATA = common dso_local global i32 0, align 4
@ACE_WRITE_NAMED_ATTRS = common dso_local global i32 0, align 4
@ACE_READ_DATA = common dso_local global i32 0, align 4
@ACE_EXECUTE = common dso_local global i32 0, align 4
@ACE_READ_NAMED_ATTRS = common dso_local global i32 0, align 4
@ZFS_OWNER = common dso_local global i32 0, align 4
@ACE_READ_ACL = common dso_local global i32 0, align 4
@ACE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@ACE_SYNCHRONIZE = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@ACE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@V_APPEND = common dso_local global i32 0, align 4
@ACE_WRITE_OWNER = common dso_local global i32 0, align 4
@ACE_WRITE_ACL = common dso_local global i32 0, align 4
@ACE_DELETE = common dso_local global i32 0, align 4
@ACE_DELETE_CHILD = common dso_local global i32 0, align 4
@ZFS_CHECKED_MASKS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_zaccess(%struct.TYPE_11__* %0, i32 %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %17, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ZFS_XATTR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = call %struct.TYPE_12__* @ZTOI(%struct.TYPE_11__* %29)
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @S_ISDIR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %28, %5
  %36 = phi i1 [ false, %5 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %35
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = call i32 @ZTOZSB(%struct.TYPE_11__* %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @zfs_zget(i32 %42, i32 %45, %struct.TYPE_11__** %16)
  store i32 %46, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %374

50:                                               ; preds = %40
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %17, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @ACE_WRITE_DATA, align 4
  %54 = load i32, i32* @ACE_APPEND_DATA, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = load i32, i32* @ACE_WRITE_DATA, align 4
  %60 = load i32, i32* @ACE_APPEND_DATA, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @ACE_WRITE_NAMED_ATTRS, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %58, %50
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @ACE_READ_DATA, align 4
  %71 = load i32, i32* @ACE_EXECUTE, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load i32, i32* @ACE_READ_DATA, align 4
  %77 = load i32, i32* @ACE_EXECUTE, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* @ACE_READ_NAMED_ATTRS, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %75, %68
  br label %86

86:                                               ; preds = %85, %35
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = call i32 @ZTOZSB(%struct.TYPE_11__* %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %90 = call %struct.TYPE_12__* @ZTOI(%struct.TYPE_11__* %89)
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @KUID_TO_SUID(i32 %92)
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* @ZFS_OWNER, align 4
  %96 = call i64 @zfs_fuid_map_id(i32 %88, i32 %93, i32* %94, i32 %95)
  store i64 %96, i64* %19, align 8
  store i32 0, i32* %18, align 4
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @ACE_READ_ACL, align 4
  %100 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %98, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %86
  %105 = load i64, i64* %19, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call i64 @crgetuid(i32* %106)
  %108 = icmp eq i64 %105, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load i32, i32* @ACE_READ_ACL, align 4
  %111 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %12, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %109, %104, %86
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @ACE_READ_DATA, align 4
  %119 = load i32, i32* @ACE_READ_NAMED_ATTRS, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @ACE_READ_ACL, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @ACE_SYNCHRONIZE, align 4
  %126 = or i32 %124, %125
  %127 = and i32 %117, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %116
  %130 = load i32, i32* @S_IRUSR, align 4
  %131 = load i32, i32* %18, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %18, align 4
  br label %133

133:                                              ; preds = %129, %116
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @ACE_WRITE_DATA, align 4
  %136 = load i32, i32* @ACE_WRITE_NAMED_ATTRS, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @ACE_APPEND_DATA, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @ACE_WRITE_ATTRIBUTES, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @ACE_SYNCHRONIZE, align 4
  %143 = or i32 %141, %142
  %144 = and i32 %134, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %133
  %147 = load i32, i32* @S_IWUSR, align 4
  %148 = load i32, i32* %18, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %18, align 4
  br label %150

150:                                              ; preds = %146, %133
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @ACE_EXECUTE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* @S_IXUSR, align 4
  %157 = load i32, i32* %18, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %18, align 4
  br label %159

159:                                              ; preds = %155, %150
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %161 = load i32, i32* %8, align 4
  %162 = load i64, i64* %10, align 8
  %163 = load i32*, i32** %11, align 8
  %164 = call i32 @zfs_zaccess_common(%struct.TYPE_11__* %160, i32 %161, i32* %12, i64* %15, i64 %162, i32* %163)
  store i32 %164, i32* %13, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %159
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %171 = call %struct.TYPE_12__* @ZTOI(%struct.TYPE_11__* %170)
  %172 = call i32 @iput(%struct.TYPE_12__* %171)
  br label %173

173:                                              ; preds = %169, %166
  %174 = load i32*, i32** %11, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %176 = call %struct.TYPE_12__* @ZTOI(%struct.TYPE_11__* %175)
  %177 = load i64, i64* %19, align 8
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* %18, align 4
  %180 = call i32 @secpolicy_vnode_access2(i32* %174, %struct.TYPE_12__* %176, i64 %177, i32 %178, i32 %179)
  store i32 %180, i32* %6, align 4
  br label %374

181:                                              ; preds = %159
  %182 = load i32, i32* %13, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %196

184:                                              ; preds = %181
  %185 = load i64, i64* %15, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %196, label %187

187:                                              ; preds = %184
  %188 = load i32, i32* %14, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %192 = call %struct.TYPE_12__* @ZTOI(%struct.TYPE_11__* %191)
  %193 = call i32 @iput(%struct.TYPE_12__* %192)
  br label %194

194:                                              ; preds = %190, %187
  %195 = load i32, i32* %13, align 4
  store i32 %195, i32* %6, align 4
  br label %374

196:                                              ; preds = %184, %181
  %197 = load i32, i32* %13, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %196
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @V_APPEND, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %206 = load i32*, i32** %11, align 8
  %207 = call i32 @zfs_zaccess_append(%struct.TYPE_11__* %205, i32* %12, i64* %15, i32* %206)
  store i32 %207, i32* %13, align 4
  br label %208

208:                                              ; preds = %204, %199, %196
  %209 = load i32, i32* %13, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %353

211:                                              ; preds = %208
  %212 = load i64, i64* %15, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %353

214:                                              ; preds = %211
  store i32 0, i32* %20, align 4
  store i32 0, i32* %13, align 4
  %215 = load i32, i32* %12, align 4
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i32
  %218 = call i32 @ASSERT(i32 %217)
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* @ACE_READ_ACL, align 4
  %221 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %222 = or i32 %220, %221
  %223 = and i32 %219, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %214
  %226 = load i64, i64* %19, align 8
  %227 = load i32*, i32** %11, align 8
  %228 = call i64 @crgetuid(i32* %227)
  %229 = icmp eq i64 %226, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %225
  %231 = load i32, i32* @ACE_READ_ACL, align 4
  %232 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %233 = or i32 %231, %232
  %234 = xor i32 %233, -1
  %235 = load i32, i32* %12, align 4
  %236 = and i32 %235, %234
  store i32 %236, i32* %12, align 4
  br label %237

237:                                              ; preds = %230, %225, %214
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* @ACE_READ_DATA, align 4
  %240 = load i32, i32* @ACE_READ_NAMED_ATTRS, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* @ACE_READ_ACL, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* @ACE_SYNCHRONIZE, align 4
  %247 = or i32 %245, %246
  %248 = and i32 %238, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %237
  %251 = load i32, i32* @S_IRUSR, align 4
  %252 = load i32, i32* %20, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %20, align 4
  br label %254

254:                                              ; preds = %250, %237
  %255 = load i32, i32* %12, align 4
  %256 = load i32, i32* @ACE_WRITE_DATA, align 4
  %257 = load i32, i32* @ACE_WRITE_NAMED_ATTRS, align 4
  %258 = or i32 %256, %257
  %259 = load i32, i32* @ACE_APPEND_DATA, align 4
  %260 = or i32 %258, %259
  %261 = load i32, i32* @ACE_WRITE_ATTRIBUTES, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* @ACE_SYNCHRONIZE, align 4
  %264 = or i32 %262, %263
  %265 = and i32 %255, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %254
  %268 = load i32, i32* @S_IWUSR, align 4
  %269 = load i32, i32* %20, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %20, align 4
  br label %271

271:                                              ; preds = %267, %254
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* @ACE_EXECUTE, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %271
  %277 = load i32, i32* @S_IXUSR, align 4
  %278 = load i32, i32* %20, align 4
  %279 = or i32 %278, %277
  store i32 %279, i32* %20, align 4
  br label %280

280:                                              ; preds = %276, %271
  %281 = load i32*, i32** %11, align 8
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %283 = call %struct.TYPE_12__* @ZTOI(%struct.TYPE_11__* %282)
  %284 = load i64, i64* %19, align 8
  %285 = load i32, i32* %18, align 4
  %286 = load i32, i32* %20, align 4
  %287 = xor i32 %286, -1
  %288 = and i32 %285, %287
  %289 = load i32, i32* %18, align 4
  %290 = call i32 @secpolicy_vnode_access2(i32* %281, %struct.TYPE_12__* %283, i64 %284, i32 %288, i32 %289)
  store i32 %290, i32* %13, align 4
  %291 = load i32, i32* %13, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %280
  %294 = load i32, i32* %12, align 4
  %295 = load i32, i32* @ACE_WRITE_OWNER, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %293
  %299 = load i32*, i32** %11, align 8
  %300 = load i64, i64* %19, align 8
  %301 = call i32 @secpolicy_vnode_chown(i32* %299, i64 %300)
  store i32 %301, i32* %13, align 4
  br label %302

302:                                              ; preds = %298, %293, %280
  %303 = load i32, i32* %13, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %314

305:                                              ; preds = %302
  %306 = load i32, i32* %12, align 4
  %307 = load i32, i32* @ACE_WRITE_ACL, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %305
  %311 = load i32*, i32** %11, align 8
  %312 = load i64, i64* %19, align 8
  %313 = call i32 @secpolicy_vnode_setdac(i32* %311, i64 %312)
  store i32 %313, i32* %13, align 4
  br label %314

314:                                              ; preds = %310, %305, %302
  %315 = load i32, i32* %13, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %327

317:                                              ; preds = %314
  %318 = load i32, i32* %12, align 4
  %319 = load i32, i32* @ACE_DELETE, align 4
  %320 = load i32, i32* @ACE_DELETE_CHILD, align 4
  %321 = or i32 %319, %320
  %322 = and i32 %318, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %317
  %325 = load i32*, i32** %11, align 8
  %326 = call i32 @secpolicy_vnode_remove(i32* %325)
  store i32 %326, i32* %13, align 4
  br label %327

327:                                              ; preds = %324, %317, %314
  %328 = load i32, i32* %13, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %339

330:                                              ; preds = %327
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* @ACE_SYNCHRONIZE, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %330
  %336 = load i32*, i32** %11, align 8
  %337 = load i64, i64* %19, align 8
  %338 = call i32 @secpolicy_vnode_chown(i32* %336, i64 %337)
  store i32 %338, i32* %13, align 4
  br label %339

339:                                              ; preds = %335, %330, %327
  %340 = load i32, i32* %13, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %352

342:                                              ; preds = %339
  %343 = load i32, i32* %12, align 4
  %344 = load i32, i32* @ZFS_CHECKED_MASKS, align 4
  %345 = xor i32 %344, -1
  %346 = and i32 %343, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %351

348:                                              ; preds = %342
  %349 = load i32, i32* @EACCES, align 4
  %350 = call i32 @SET_ERROR(i32 %349)
  store i32 %350, i32* %13, align 4
  br label %351

351:                                              ; preds = %348, %342
  br label %352

352:                                              ; preds = %351, %339
  br label %365

353:                                              ; preds = %211, %208
  %354 = load i32, i32* %13, align 4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %364

356:                                              ; preds = %353
  %357 = load i32*, i32** %11, align 8
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %359 = call %struct.TYPE_12__* @ZTOI(%struct.TYPE_11__* %358)
  %360 = load i64, i64* %19, align 8
  %361 = load i32, i32* %18, align 4
  %362 = load i32, i32* %18, align 4
  %363 = call i32 @secpolicy_vnode_access2(i32* %357, %struct.TYPE_12__* %359, i64 %360, i32 %361, i32 %362)
  store i32 %363, i32* %13, align 4
  br label %364

364:                                              ; preds = %356, %353
  br label %365

365:                                              ; preds = %364, %352
  %366 = load i32, i32* %14, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %365
  %369 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %370 = call %struct.TYPE_12__* @ZTOI(%struct.TYPE_11__* %369)
  %371 = call i32 @iput(%struct.TYPE_12__* %370)
  br label %372

372:                                              ; preds = %368, %365
  %373 = load i32, i32* %13, align 4
  store i32 %373, i32* %6, align 4
  br label %374

374:                                              ; preds = %372, %194, %173, %48
  %375 = load i32, i32* %6, align 4
  ret i32 %375
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_12__* @ZTOI(%struct.TYPE_11__*) #1

declare dso_local i32 @zfs_zget(i32, i32, %struct.TYPE_11__**) #1

declare dso_local i32 @ZTOZSB(%struct.TYPE_11__*) #1

declare dso_local i64 @zfs_fuid_map_id(i32, i32, i32*, i32) #1

declare dso_local i32 @KUID_TO_SUID(i32) #1

declare dso_local i64 @crgetuid(i32*) #1

declare dso_local i32 @zfs_zaccess_common(%struct.TYPE_11__*, i32, i32*, i64*, i64, i32*) #1

declare dso_local i32 @iput(%struct.TYPE_12__*) #1

declare dso_local i32 @secpolicy_vnode_access2(i32*, %struct.TYPE_12__*, i64, i32, i32) #1

declare dso_local i32 @zfs_zaccess_append(%struct.TYPE_11__*, i32*, i64*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @secpolicy_vnode_chown(i32*, i64) #1

declare dso_local i32 @secpolicy_vnode_setdac(i32*, i64) #1

declare dso_local i32 @secpolicy_vnode_remove(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
