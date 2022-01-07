; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_chmod.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64 (...)*, i32 (i8*)* }
%struct.TYPE_15__ = type { i32, i32, i8* }

@ALLOW = common dso_local global i32 0, align 4
@ACE_OWNER = common dso_local global i32 0, align 4
@DENY = common dso_local global i32 0, align 4
@OWNING_GROUP = common dso_local global i32 0, align 4
@ACE_TYPE_FLAGS = common dso_local global i32 0, align 4
@ALL_INHERIT = common dso_local global i32 0, align 4
@ACE_EVERYONE = common dso_local global i32 0, align 4
@ACE_INHERIT_ONLY_ACE = common dso_local global i32 0, align 4
@ZFS_INHERIT_ACE = common dso_local global i32 0, align 4
@ZFS_ACL_OBJ_ACE = common dso_local global i32 0, align 4
@ZFS_ACL_RESTRICTED = common dso_local global i64 0, align 8
@S_IRGRP = common dso_local global i32 0, align 4
@ACE_READ_DATA = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@ACE_WRITE_DATA = common dso_local global i32 0, align 4
@ACE_APPEND_DATA = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@ACE_EXECUTE = common dso_local global i32 0, align 4
@ACE_WRITE_OWNER = common dso_local global i32 0, align 4
@ACE_WRITE_ACL = common dso_local global i32 0, align 4
@ACE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@ACE_WRITE_NAMED_ATTRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, %struct.TYPE_14__*)* @zfs_acl_chmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_acl_chmod(%struct.TYPE_13__* %0, i32 %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  store i8* null, i8** %7, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64 (...)*, i64 (...)** %29, align 8
  %31 = call i64 (...) %30()
  store i64 %31, i64* %17, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @acl_trivial_access_masks(i32 %32, i32* %24, i32* %22, i32* %23, i32* %19, i32* %20, i32* %21)
  %34 = load i64, i64* %17, align 8
  %35 = mul i64 %34, 6
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %35, %38
  %40 = call %struct.TYPE_15__* @zfs_acl_node_alloc(i64 %39)
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %16, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %18, align 8
  %44 = load i32, i32* %24, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %3
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = load i8*, i8** %18, align 8
  %49 = load i32, i32* %24, align 4
  %50 = load i32, i32* @ALLOW, align 4
  %51 = load i32, i32* @ACE_OWNER, align 4
  %52 = call i32 @zfs_set_ace(%struct.TYPE_14__* %47, i8* %48, i32 %49, i32 %50, i32 -1, i32 %51)
  %53 = load i8*, i8** %18, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load i64, i64* %17, align 8
  %56 = add i64 %54, %55
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %18, align 8
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  %60 = load i64, i64* %17, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %46, %3
  %66 = load i32, i32* %22, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* @DENY, align 4
  %73 = load i32, i32* @ACE_OWNER, align 4
  %74 = call i32 @zfs_set_ace(%struct.TYPE_14__* %69, i8* %70, i32 %71, i32 %72, i32 -1, i32 %73)
  %75 = load i8*, i8** %18, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = load i64, i64* %17, align 8
  %78 = add i64 %76, %77
  %79 = inttoptr i64 %78 to i8*
  store i8* %79, i8** %18, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  %82 = load i64, i64* %17, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %68, %65
  %88 = load i32, i32* %23, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = load i8*, i8** %18, align 8
  %93 = load i32, i32* %23, align 4
  %94 = load i32, i32* @DENY, align 4
  %95 = load i32, i32* @OWNING_GROUP, align 4
  %96 = call i32 @zfs_set_ace(%struct.TYPE_14__* %91, i8* %92, i32 %93, i32 %94, i32 -1, i32 %95)
  %97 = load i8*, i8** %18, align 8
  %98 = ptrtoint i8* %97 to i64
  %99 = load i64, i64* %17, align 8
  %100 = add i64 %98, %99
  %101 = inttoptr i64 %100 to i8*
  store i8* %101, i8** %18, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  %104 = load i64, i64* %17, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %90, %87
  br label %110

110:                                              ; preds = %220, %138, %109
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = call i8* @zfs_acl_next_ace(%struct.TYPE_14__* %111, i8* %112, i32* %8, i32* %15, i32* %13, i32* %14)
  store i8* %113, i8** %7, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %246

115:                                              ; preds = %110
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @ACE_TYPE_FLAGS, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @ALL_INHERIT, align 4
  %121 = and i32 %119, %120
  store i32 %121, i32* %25, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @ACE_OWNER, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %133, label %125

125:                                              ; preds = %115
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @ACE_EVERYONE, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @OWNING_GROUP, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %129, %125, %115
  %134 = load i32, i32* %25, align 4
  %135 = load i32, i32* @ACE_INHERIT_ONLY_ACE, align 4
  %136 = and i32 %134, %135
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %110

139:                                              ; preds = %133, %129
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @ALLOW, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* @DENY, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %152, label %147

147:                                              ; preds = %143, %139
  %148 = load i32, i32* %25, align 4
  %149 = load i32, i32* @ACE_INHERIT_ONLY_ACE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %170

152:                                              ; preds = %147, %143
  %153 = load i32, i32* %25, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load i32, i32* @ZFS_INHERIT_ACE, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %155, %152
  %162 = load i32, i32* %14, align 4
  switch i32 %162, label %169 [
    i32 131, label %163
    i32 130, label %163
    i32 128, label %163
    i32 129, label %163
  ]

163:                                              ; preds = %161, %161, %161, %161
  %164 = load i32, i32* @ZFS_ACL_OBJ_ACE, align 4
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %161, %163
  br label %220

170:                                              ; preds = %147
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @ZFS_ACL_RESTRICTED, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %219

176:                                              ; preds = %170
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @S_IRGRP, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %176
  %182 = load i32, i32* @ACE_READ_DATA, align 4
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %15, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %15, align 4
  br label %186

186:                                              ; preds = %181, %176
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @S_IWGRP, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %186
  %192 = load i32, i32* @ACE_WRITE_DATA, align 4
  %193 = load i32, i32* @ACE_APPEND_DATA, align 4
  %194 = or i32 %192, %193
  %195 = xor i32 %194, -1
  %196 = load i32, i32* %15, align 4
  %197 = and i32 %196, %195
  store i32 %197, i32* %15, align 4
  br label %198

198:                                              ; preds = %191, %186
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* @S_IXGRP, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %198
  %204 = load i32, i32* @ACE_EXECUTE, align 4
  %205 = xor i32 %204, -1
  %206 = load i32, i32* %15, align 4
  %207 = and i32 %206, %205
  store i32 %207, i32* %15, align 4
  br label %208

208:                                              ; preds = %203, %198
  %209 = load i32, i32* @ACE_WRITE_OWNER, align 4
  %210 = load i32, i32* @ACE_WRITE_ACL, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @ACE_WRITE_ATTRIBUTES, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @ACE_WRITE_NAMED_ATTRS, align 4
  %215 = or i32 %213, %214
  %216 = xor i32 %215, -1
  %217 = load i32, i32* %15, align 4
  %218 = and i32 %217, %216
  store i32 %218, i32* %15, align 4
  br label %219

219:                                              ; preds = %208, %170
  br label %220

220:                                              ; preds = %219, %169
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %222 = load i8*, i8** %18, align 8
  %223 = load i32, i32* %15, align 4
  %224 = load i32, i32* %14, align 4
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* %13, align 4
  %227 = call i32 @zfs_set_ace(%struct.TYPE_14__* %221, i8* %222, i32 %223, i32 %224, i32 %225, i32 %226)
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 3
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 1
  %232 = load i32 (i8*)*, i32 (i8*)** %231, align 8
  %233 = load i8*, i8** %7, align 8
  %234 = call i32 %232(i8* %233)
  store i32 %234, i32* %11, align 4
  %235 = load i8*, i8** %18, align 8
  %236 = ptrtoint i8* %235 to i64
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = add i64 %236, %238
  %240 = inttoptr i64 %239 to i8*
  store i8* %240, i8** %18, align 8
  %241 = load i32, i32* %9, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %9, align 4
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* %10, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %10, align 4
  br label %110

246:                                              ; preds = %110
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %248 = load i8*, i8** %18, align 8
  %249 = load i32, i32* %19, align 4
  %250 = load i32, i32* @ACE_OWNER, align 4
  %251 = call i32 @zfs_set_ace(%struct.TYPE_14__* %247, i8* %248, i32 %249, i32 0, i32 -1, i32 %250)
  %252 = load i8*, i8** %18, align 8
  %253 = ptrtoint i8* %252 to i64
  %254 = load i64, i64* %17, align 8
  %255 = add i64 %253, %254
  %256 = inttoptr i64 %255 to i8*
  store i8* %256, i8** %18, align 8
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %258 = load i8*, i8** %18, align 8
  %259 = load i32, i32* %20, align 4
  %260 = load i32, i32* @OWNING_GROUP, align 4
  %261 = call i32 @zfs_set_ace(%struct.TYPE_14__* %257, i8* %258, i32 %259, i32 0, i32 -1, i32 %260)
  %262 = load i8*, i8** %18, align 8
  %263 = ptrtoint i8* %262 to i64
  %264 = load i64, i64* %17, align 8
  %265 = add i64 %263, %264
  %266 = inttoptr i64 %265 to i8*
  store i8* %266, i8** %18, align 8
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %268 = load i8*, i8** %18, align 8
  %269 = load i32, i32* %21, align 4
  %270 = load i32, i32* @ACE_EVERYONE, align 4
  %271 = call i32 @zfs_set_ace(%struct.TYPE_14__* %267, i8* %268, i32 %269, i32 0, i32 -1, i32 %270)
  %272 = load i32, i32* %9, align 4
  %273 = add nsw i32 %272, 3
  store i32 %273, i32* %9, align 4
  %274 = load i64, i64* %17, align 8
  %275 = mul i64 %274, 3
  %276 = load i32, i32* %10, align 4
  %277 = sext i32 %276 to i64
  %278 = add i64 %277, %275
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* %10, align 4
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %281 = call i32 @zfs_acl_release_nodes(%struct.TYPE_14__* %280)
  %282 = load i32, i32* %9, align 4
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 1
  store i32 %282, i32* %284, align 8
  %285 = load i32, i32* %10, align 4
  %286 = sext i32 %285 to i64
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 0
  store i64 %286, i64* %288, align 8
  %289 = load i32, i32* %9, align 4
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 8
  %292 = load i32, i32* %10, align 4
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 1
  store i32 %292, i32* %294, align 4
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 2
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %298 = call i32 @list_insert_tail(i32* %296, %struct.TYPE_15__* %297)
  ret void
}

declare dso_local i32 @acl_trivial_access_masks(i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @zfs_acl_node_alloc(i64) #1

declare dso_local i32 @zfs_set_ace(%struct.TYPE_14__*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @zfs_acl_next_ace(%struct.TYPE_14__*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @zfs_acl_release_nodes(%struct.TYPE_14__*) #1

declare dso_local i32 @list_insert_tail(i32*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
