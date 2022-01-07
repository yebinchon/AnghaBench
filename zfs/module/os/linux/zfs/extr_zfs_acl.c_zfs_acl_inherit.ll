; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_inherit.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64 (i8*)*, i64 (i8*, i8**)*, i64 (i8*)*, i32 (i8*, i64)* }
%struct.TYPE_18__ = type { i64, i32, i8* }

@ZFS_ACL_PASSTHROUGH_X = common dso_local global i64 0, align 8
@ZFS_ACL_PASSTHROUGH = common dso_local global i64 0, align 8
@ZFS_ACL_NOALLOW = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@ZFS_ACL_DISCARD = common dso_local global i64 0, align 8
@ALLOW = common dso_local global i64 0, align 8
@ACE_OWNER = common dso_local global i64 0, align 8
@ACE_EVERYONE = common dso_local global i64 0, align 8
@OWNING_GROUP = common dso_local global i64 0, align 8
@ACE_DIRECTORY_INHERIT_ACE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@ACE_EXECUTE = common dso_local global i32 0, align 4
@ACE_INHERITED_ACE = common dso_local global i64 0, align 8
@ZFS_INHERIT_ACE = common dso_local global i32 0, align 4
@ACE_NO_PROPAGATE_INHERIT_ACE = common dso_local global i64 0, align 8
@ALL_INHERIT = common dso_local global i64 0, align 8
@ACE_FILE_INHERIT_ACE = common dso_local global i64 0, align 8
@ACE_INHERIT_ONLY_ACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, i32, i32*)* @zfs_acl_inherit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @zfs_acl_inherit(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_17__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %15, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @S_ISDIR(i32 %31)
  store i32 %32, i32* %26, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @S_ISREG(i32 %33)
  store i32 %34, i32* %27, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ZFS_ACL_PASSTHROUGH_X, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %29, align 4
  %41 = load i32, i32* %29, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %5
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ZFS_ACL_PASSTHROUGH, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %43, %5
  %50 = phi i1 [ true, %5 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %28, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ZFS_ACL_NOALLOW, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %30, align 4
  %58 = load i32, i32* @B_TRUE, align 4
  %59 = load i32*, i32** %11, align 8
  store i32 %58, i32* %59, align 4
  store i8* null, i8** %12, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.TYPE_17__* @zfs_acl_alloc(i32 %62)
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %15, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ZFS_ACL_DISCARD, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %49
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @S_ISLNK(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69, %49
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %6, align 8
  br label %303

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %300, %242, %107, %94, %86, %75
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = call i8* @zfs_acl_next_ace(%struct.TYPE_17__* %77, i8* %78, i32* %16, i32* %17, i64* %18, i64* %20)
  store i8* %79, i8** %12, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %301

81:                                               ; preds = %76
  %82 = load i64, i64* %20, align 8
  %83 = load i64, i64* %18, align 8
  %84 = call i32 @zfs_acl_valid_ace_type(i64 %82, i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  br label %76

87:                                               ; preds = %81
  %88 = load i32, i32* %30, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i64, i64* %20, align 8
  %92 = load i64, i64* @ALLOW, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %76

95:                                               ; preds = %90, %87
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i64 (i8*)*, i64 (i8*)** %99, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = call i64 %100(i8* %101)
  store i64 %102, i64* %21, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i64, i64* %18, align 8
  %105 = call i32 @zfs_ace_can_use(i32 %103, i64 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %95
  br label %76

108:                                              ; preds = %95
  %109 = load i32, i32* %28, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %138

111:                                              ; preds = %108
  %112 = load i64, i64* %18, align 8
  %113 = load i64, i64* @ACE_OWNER, align 8
  %114 = load i64, i64* @ACE_EVERYONE, align 8
  %115 = or i64 %113, %114
  %116 = and i64 %112, %115
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %111
  %119 = load i64, i64* %18, align 8
  %120 = load i64, i64* @OWNING_GROUP, align 8
  %121 = and i64 %119, %120
  %122 = load i64, i64* @OWNING_GROUP, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %118, %111
  %125 = load i32, i32* %27, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %26, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load i64, i64* %18, align 8
  %132 = load i64, i64* @ACE_DIRECTORY_INHERIT_ACE, align 8
  %133 = and i64 %131, %132
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130, %124
  %136 = load i32, i32* @B_FALSE, align 4
  %137 = load i32*, i32** %11, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %135, %130, %127, %118, %108
  %139 = load i32, i32* %26, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %158, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %29, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @S_IXUSR, align 4
  %147 = load i32, i32* @S_IXGRP, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @S_IXOTH, align 4
  %150 = or i32 %148, %149
  %151 = and i32 %145, %150
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %144
  %154 = load i32, i32* @ACE_EXECUTE, align 4
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %17, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %17, align 4
  br label %158

158:                                              ; preds = %153, %144, %141, %138
  %159 = load i64, i64* %21, align 8
  %160 = call %struct.TYPE_18__* @zfs_acl_node_alloc(i64 %159)
  store %struct.TYPE_18__* %160, %struct.TYPE_18__** %14, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %164 = call i32 @list_insert_tail(i32* %162, %struct.TYPE_18__* %163)
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %13, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %169 = load i8*, i8** %13, align 8
  %170 = load i32, i32* %17, align 4
  %171 = load i64, i64* %20, align 8
  %172 = load i32, i32* %16, align 4
  %173 = load i64, i64* %18, align 8
  %174 = load i64, i64* @ACE_INHERITED_ACE, align 8
  %175 = or i64 %173, %174
  %176 = call i32 @zfs_set_ace(%struct.TYPE_17__* %168, i8* %169, i32 %170, i64 %171, i32 %172, i64 %175)
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = load i64 (i8*, i8**)*, i64 (i8*, i8**)** %180, align 8
  %182 = load i8*, i8** %12, align 8
  %183 = call i64 %181(i8* %182, i8** %22)
  store i64 %183, i64* %24, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %201

185:                                              ; preds = %158
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 1
  %190 = load i64 (i8*, i8**)*, i64 (i8*, i8**)** %189, align 8
  %191 = load i8*, i8** %13, align 8
  %192 = call i64 %190(i8* %191, i8** %23)
  store i64 %192, i64* %25, align 8
  %193 = load i64, i64* %24, align 8
  %194 = icmp eq i64 %192, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @VERIFY(i32 %195)
  %197 = load i8*, i8** %22, align 8
  %198 = load i8*, i8** %23, align 8
  %199 = load i64, i64* %25, align 8
  %200 = call i32 @bcopy(i8* %197, i8* %198, i64 %199)
  br label %201

201:                                              ; preds = %185, %158
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 8
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %216, %212
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %214, align 4
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 2
  %223 = load i64 (i8*)*, i64 (i8*)** %222, align 8
  %224 = load i8*, i8** %13, align 8
  %225 = call i64 %223(i8* %224)
  store i64 %225, i64* %19, align 8
  %226 = load i32, i32* %26, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %201
  %229 = load i32, i32* @ZFS_INHERIT_ACE, align 4
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 8
  br label %234

234:                                              ; preds = %228, %201
  %235 = load i64, i64* %18, align 8
  %236 = load i64, i64* @ACE_NO_PROPAGATE_INHERIT_ACE, align 8
  %237 = and i64 %235, %236
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %234
  %240 = load i32, i32* %26, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %261, label %242

242:                                              ; preds = %239, %234
  %243 = load i64, i64* @ALL_INHERIT, align 8
  %244 = xor i64 %243, -1
  %245 = load i64, i64* %19, align 8
  %246 = and i64 %245, %244
  store i64 %246, i64* %19, align 8
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 3
  %251 = load i32 (i8*, i64)*, i32 (i8*, i64)** %250, align 8
  %252 = load i8*, i8** %13, align 8
  %253 = load i64, i64* %19, align 8
  %254 = load i64, i64* @ACE_INHERITED_ACE, align 8
  %255 = or i64 %253, %254
  %256 = call i32 %251(i8* %252, i64 %255)
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %259 = load i8*, i8** %13, align 8
  %260 = call i32 @zfs_restricted_update(%struct.TYPE_16__* %257, %struct.TYPE_17__* %258, i8* %259)
  br label %76

261:                                              ; preds = %239
  %262 = load i32, i32* %26, align 4
  %263 = call i32 @ASSERT(i32 %262)
  %264 = load i64, i64* %18, align 8
  %265 = load i64, i64* @ACE_FILE_INHERIT_ACE, align 8
  %266 = load i64, i64* @ACE_DIRECTORY_INHERIT_ACE, align 8
  %267 = or i64 %265, %266
  %268 = and i64 %264, %267
  %269 = load i64, i64* @ACE_FILE_INHERIT_ACE, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %285

271:                                              ; preds = %261
  %272 = load i64, i64* @ACE_INHERIT_ONLY_ACE, align 8
  %273 = load i64, i64* %19, align 8
  %274 = or i64 %273, %272
  store i64 %274, i64* %19, align 8
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 3
  %279 = load i32 (i8*, i64)*, i32 (i8*, i64)** %278, align 8
  %280 = load i8*, i8** %13, align 8
  %281 = load i64, i64* %19, align 8
  %282 = load i64, i64* @ACE_INHERITED_ACE, align 8
  %283 = or i64 %281, %282
  %284 = call i32 %279(i8* %280, i64 %283)
  br label %300

285:                                              ; preds = %261
  %286 = load i64, i64* @ACE_INHERIT_ONLY_ACE, align 8
  %287 = xor i64 %286, -1
  %288 = load i64, i64* %19, align 8
  %289 = and i64 %288, %287
  store i64 %289, i64* %19, align 8
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 3
  %294 = load i32 (i8*, i64)*, i32 (i8*, i64)** %293, align 8
  %295 = load i8*, i8** %13, align 8
  %296 = load i64, i64* %19, align 8
  %297 = load i64, i64* @ACE_INHERITED_ACE, align 8
  %298 = or i64 %296, %297
  %299 = call i32 %294(i8* %295, i64 %298)
  br label %300

300:                                              ; preds = %285, %271
  br label %76

301:                                              ; preds = %76
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %302, %struct.TYPE_17__** %6, align 8
  br label %303

303:                                              ; preds = %301, %73
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  ret %struct.TYPE_17__* %304
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.TYPE_17__* @zfs_acl_alloc(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i8* @zfs_acl_next_ace(%struct.TYPE_17__*, i8*, i32*, i32*, i64*, i64*) #1

declare dso_local i32 @zfs_acl_valid_ace_type(i64, i64) #1

declare dso_local i32 @zfs_ace_can_use(i32, i64) #1

declare dso_local %struct.TYPE_18__* @zfs_acl_node_alloc(i64) #1

declare dso_local i32 @list_insert_tail(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @zfs_set_ace(%struct.TYPE_17__*, i8*, i32, i64, i32, i64) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @zfs_restricted_update(%struct.TYPE_16__*, %struct.TYPE_17__*, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
