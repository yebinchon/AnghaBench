; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_ids_create.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_zfs_acl_ids_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.TYPE_31__ = type { i32, i32, i8*, i8* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_32__*, i8*, i8*, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_29__ = type { i32, i64, i64 }
%struct.TYPE_28__ = type { i32, i32 }

@B_TRUE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i64 0, align 8
@IS_ROOT_NODE = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@ZFS_INHERIT_ACE = common dso_local global i32 0, align 4
@ZFS_XATTR = common dso_local global i32 0, align 4
@ZFS_ACL_TRIVIAL = common dso_local global i32 0, align 4
@ZFS_ACL_AUTO_INHERIT = common dso_local global i32 0, align 4
@zfs_ace_walk = common dso_local global i32 0, align 4
@AT_GID = common dso_local global i32 0, align 4
@IS_XATTR = common dso_local global i32 0, align 4
@ZFS_GROUP = common dso_local global i32 0, align 4
@ZFS_OWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_acl_ids_create(%struct.TYPE_27__* %0, i32 %1, %struct.TYPE_31__* %2, i32* %3, i32* %4, %struct.TYPE_30__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_29__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_30__* %5, %struct.TYPE_30__** %13, align 8
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %21 = call %struct.TYPE_29__* @ZTOZSB(%struct.TYPE_27__* %20)
  store %struct.TYPE_29__* %21, %struct.TYPE_29__** %15, align 8
  %22 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %17, align 8
  %25 = load i64, i64* @B_TRUE, align 8
  store i64 %25, i64* %18, align 8
  %26 = load i64, i64* @B_FALSE, align 8
  store i64 %26, i64* %19, align 8
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %28 = call i32 @bzero(%struct.TYPE_30__* %27, i32 40)
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %6
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 1
  %47 = call i32 @zfs_vsec_2_aclp(%struct.TYPE_29__* %37, i32 %40, i32* %41, i32* %42, i32* %44, %struct.TYPE_32__** %46)
  store i32 %47, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %7, align 4
  br label %253

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %6
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @IS_ROOT_NODE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %52
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @S_ISGID, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %67
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @S_ISDIR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i32, i32* @S_ISGID, align 4
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %106

86:                                               ; preds = %74, %67, %52
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @S_ISGID, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %86
  %94 = load i32*, i32** %11, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = call i64 @secpolicy_vnode_setids_setgids(i32* %94, i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i32, i32* @S_ISGID, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %98, %93, %86
  br label %106

106:                                              ; preds = %105, %80
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_32__*, %struct.TYPE_32__** %108, align 8
  %110 = icmp eq %struct.TYPE_32__* %109, null
  br i1 %110, label %111, label %211

111:                                              ; preds = %106
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 2
  %114 = call i32 @mutex_enter(i32* %113)
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 3
  %117 = call i32 @mutex_enter(i32* %116)
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @IS_ROOT_NODE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %163, label %122

122:                                              ; preds = %111
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %124 = call %struct.TYPE_28__* @ZTOI(%struct.TYPE_27__* %123)
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @S_ISDIR(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %163

129:                                              ; preds = %122
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ZFS_INHERIT_ACE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %163

136:                                              ; preds = %129
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ZFS_XATTR, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %163, label %143

143:                                              ; preds = %136
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %145 = load i64, i64* @B_TRUE, align 8
  %146 = load i64, i64* @B_FALSE, align 8
  %147 = call i64 @zfs_acl_node_read(%struct.TYPE_27__* %144, i64 %145, i32** %16, i64 %146)
  %148 = icmp eq i64 0, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @VERIFY(i32 %149)
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32*, i32** %16, align 8
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call %struct.TYPE_32__* @zfs_acl_inherit(%struct.TYPE_29__* %151, i32 %154, i32* %155, i32 %158, i64* %18)
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 1
  store %struct.TYPE_32__* %159, %struct.TYPE_32__** %161, align 8
  %162 = load i64, i64* @B_TRUE, align 8
  store i64 %162, i64* %19, align 8
  br label %176

163:                                              ; preds = %136, %129, %122, %111
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %165 = call i32 @zfs_acl_version_zp(%struct.TYPE_27__* %164)
  %166 = call %struct.TYPE_32__* @zfs_acl_alloc(i32 %165)
  %167 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %167, i32 0, i32 1
  store %struct.TYPE_32__* %166, %struct.TYPE_32__** %168, align 8
  %169 = load i32, i32* @ZFS_ACL_TRIVIAL, align 4
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %169
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %163, %143
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 3
  %179 = call i32 @mutex_exit(i32* %178)
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 2
  %182 = call i32 @mutex_exit(i32* %181)
  %183 = load i64, i64* %18, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %210

185:                                              ; preds = %176
  %186 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i64 @S_ISDIR(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = load i32, i32* @ZFS_ACL_AUTO_INHERIT, align 4
  br label %194

193:                                              ; preds = %185
  br label %194

194:                                              ; preds = %193, %191
  %195 = phi i32 [ %192, %191 ], [ 0, %193 ]
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_32__*, %struct.TYPE_32__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %195
  store i32 %201, i32* %199, align 4
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %203 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %207, align 8
  %209 = call i32 @zfs_acl_chmod(%struct.TYPE_29__* %202, i32 %205, %struct.TYPE_32__* %208)
  br label %210

210:                                              ; preds = %194, %176
  br label %211

211:                                              ; preds = %210, %106
  %212 = load i64, i64* %19, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = load i32*, i32** %12, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %252

217:                                              ; preds = %214, %211
  %218 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %222, align 8
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_32__*, %struct.TYPE_32__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %228, i32 0, i32 3
  %230 = load i8*, i8** %229, align 8
  %231 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %231, i32 0, i32 2
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @zfs_mode_compute(i32 %220, %struct.TYPE_32__* %223, i32* %227, i8* %230, i8* %233)
  %235 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %236 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 8
  %237 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_32__*, %struct.TYPE_32__** %238, align 8
  %240 = load i32, i32* @zfs_ace_walk, align 4
  %241 = call i64 @ace_trivial_common(%struct.TYPE_32__* %239, i32 0, i32 %240)
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %217
  %244 = load i32, i32* @ZFS_ACL_TRIVIAL, align 4
  %245 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_32__*, %struct.TYPE_32__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %244
  store i32 %250, i32* %248, align 4
  br label %251

251:                                              ; preds = %243, %217
  br label %252

252:                                              ; preds = %251, %214
  store i32 0, i32* %7, align 4
  br label %253

253:                                              ; preds = %252, %49
  %254 = load i32, i32* %7, align 4
  ret i32 %254
}

declare dso_local %struct.TYPE_29__* @ZTOZSB(%struct.TYPE_27__*) #1

declare dso_local i32 @bzero(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @zfs_vsec_2_aclp(%struct.TYPE_29__*, i32, i32*, i32*, i32*, %struct.TYPE_32__**) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @secpolicy_vnode_setids_setgids(i32*, i8*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_28__* @ZTOI(%struct.TYPE_27__*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zfs_acl_node_read(%struct.TYPE_27__*, i64, i32**, i64) #1

declare dso_local %struct.TYPE_32__* @zfs_acl_inherit(%struct.TYPE_29__*, i32, i32*, i32, i64*) #1

declare dso_local %struct.TYPE_32__* @zfs_acl_alloc(i32) #1

declare dso_local i32 @zfs_acl_version_zp(%struct.TYPE_27__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zfs_acl_chmod(%struct.TYPE_29__*, i32, %struct.TYPE_32__*) #1

declare dso_local i32 @zfs_mode_compute(i32, %struct.TYPE_32__*, i32*, i8*, i8*) #1

declare dso_local i64 @ace_trivial_common(%struct.TYPE_32__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
