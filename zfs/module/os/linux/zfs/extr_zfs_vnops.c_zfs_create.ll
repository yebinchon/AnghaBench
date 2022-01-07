; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_create.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_44__ = type { i32, i64, i32 }
%struct.TYPE_41__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_42__ = type { i64, %struct.TYPE_45__*, i32, i64, i64, i32* }
%struct.TYPE_45__ = type { i64 }
%struct.TYPE_43__ = type { i32, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i64 }

@B_FALSE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@U8_VALIDATE_ENTIRE = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@ATTR_XVATTR = common dso_local global i32 0, align 4
@FIGNORECASE = common dso_local global i32 0, align 4
@ZCILOOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@EISDIR = common dso_local global i32 0, align 4
@ZFS_DEFAULT_PROJID = common dso_local global i32 0, align 4
@ACE_ADD_FILE = common dso_local global i32 0, align 4
@ZFS_XATTR = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@EDQUOT = common dso_local global i32 0, align 4
@ZFS_SA_BASE_ATTR_SIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ZFS_ACE_SPACE = common dso_local global i64 0, align 8
@DMU_NEW_OBJECT = common dso_local global i32 0, align 4
@TXG_NOTHROTTLE = common dso_local global i32 0, align 4
@TXG_NOWAIT = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@ZNEW = common dso_local global i32 0, align 4
@Z_FILE = common dso_local global i32 0, align 4
@TX_CI = common dso_local global i32 0, align 4
@FAPPEND = common dso_local global i32 0, align 4
@V_APPEND = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ZFS_SYNC_ALWAYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_create(%struct.inode* %0, i8* %1, %struct.TYPE_44__* %2, i32 %3, i32 %4, %struct.inode** %5, i32* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_44__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.inode**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_41__*, align 8
  %21 = alloca %struct.TYPE_41__*, align 8
  %22 = alloca %struct.TYPE_42__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_45__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_43__, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %11, align 8
  store i8* %1, i8** %12, align 8
  store %struct.TYPE_44__* %2, %struct.TYPE_44__** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store %struct.inode** %5, %struct.inode*** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %38 = load %struct.inode*, %struct.inode** %11, align 8
  %39 = call %struct.TYPE_41__* @ITOZ(%struct.inode* %38)
  store %struct.TYPE_41__* %39, %struct.TYPE_41__** %21, align 8
  %40 = load %struct.inode*, %struct.inode** %11, align 8
  %41 = call %struct.TYPE_42__* @ITOZSB(%struct.inode* %40)
  store %struct.TYPE_42__* %41, %struct.TYPE_42__** %22, align 8
  %42 = load i64, i64* @B_FALSE, align 8
  store i64 %42, i64* %32, align 8
  %43 = load i64, i64* @B_FALSE, align 8
  store i64 %43, i64* %33, align 8
  %44 = load i32*, i32** %17, align 8
  %45 = call i32 @crgetgid(i32* %44)
  store i32 %45, i32* %29, align 4
  %46 = load i32*, i32** %17, align 8
  %47 = call i32 @crgetuid(i32* %46)
  store i32 %47, i32* %28, align 4
  %48 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %49 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @B_FALSE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %9
  %54 = load i32*, i32** %19, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %28, align 4
  %58 = call i64 @IS_EPHEMERAL(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %29, align 4
  %62 = call i64 @IS_EPHEMERAL(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %56, %53
  %65 = load i32, i32* @EINVAL, align 4
  %66 = call i32 @SET_ERROR(i32 %65)
  store i32 %66, i32* %10, align 4
  br label %509

67:                                               ; preds = %60, %9
  %68 = load i8*, i8** %12, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @EINVAL, align 4
  %72 = call i32 @SET_ERROR(i32 %71)
  store i32 %72, i32* %10, align 4
  br label %509

73:                                               ; preds = %67
  %74 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %75 = call i32 @ZFS_ENTER(%struct.TYPE_42__* %74)
  %76 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %77 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_41__* %76)
  %78 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %79 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_45__*, %struct.TYPE_45__** %79, align 8
  store %struct.TYPE_45__* %80, %struct.TYPE_45__** %24, align 8
  %81 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %82 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %81, i32 0, i32 5
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %23, align 8
  %84 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %85 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %73
  %89 = load i8*, i8** %12, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = load i32, i32* @U8_VALIDATE_ENTIRE, align 4
  %93 = call i64 @u8_validate(i8* %89, i32 %91, i32* null, i32 %92, i32* %27)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %97 = call i32 @ZFS_EXIT(%struct.TYPE_42__* %96)
  %98 = load i32, i32* @EILSEQ, align 4
  %99 = call i32 @SET_ERROR(i32 %98)
  store i32 %99, i32* %10, align 4
  br label %509

100:                                              ; preds = %88, %73
  %101 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ATTR_XVATTR, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %100
  %108 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %109 = bitcast %struct.TYPE_44__* %108 to i32*
  %110 = load i32*, i32** %17, align 8
  %111 = call i32 @crgetuid(i32* %110)
  %112 = load i32*, i32** %17, align 8
  %113 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @secpolicy_xvattr(i32* %109, i32 %111, i32* %112, i32 %115)
  store i32 %116, i32* %27, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %107
  %119 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %120 = call i32 @ZFS_EXIT(%struct.TYPE_42__* %119)
  %121 = load i32, i32* %27, align 4
  store i32 %121, i32* %10, align 4
  br label %509

122:                                              ; preds = %107
  br label %123

123:                                              ; preds = %122, %100
  br label %124

124:                                              ; preds = %314, %123
  %125 = load %struct.inode**, %struct.inode*** %16, align 8
  store %struct.inode* null, %struct.inode** %125, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load %struct.inode*, %struct.inode** %11, align 8
  %132 = call i32 @igrab(%struct.inode* %131)
  %133 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  store %struct.TYPE_41__* %133, %struct.TYPE_41__** %20, align 8
  store i32* null, i32** %25, align 8
  store i32 0, i32* %27, align 4
  br label %167

134:                                              ; preds = %124
  store i32 0, i32* %34, align 4
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* @FIGNORECASE, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load i32, i32* @ZCILOOK, align 4
  %141 = load i32, i32* %34, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %34, align 4
  br label %143

143:                                              ; preds = %139, %134
  %144 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %145 = load i8*, i8** %12, align 8
  %146 = load i32, i32* %34, align 4
  %147 = call i32 @zfs_dirent_lock(i32** %25, %struct.TYPE_41__* %144, i8* %145, %struct.TYPE_41__** %20, i32 %146, i32* null, i32* null)
  store i32 %147, i32* %27, align 4
  %148 = load i32, i32* %27, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %166

150:                                              ; preds = %143
  %151 = load i64, i64* %32, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = call i32 @zfs_acl_ids_free(%struct.TYPE_43__* %30)
  br label %155

155:                                              ; preds = %153, %150
  %156 = load i8*, i8** %12, align 8
  %157 = call i64 @strcmp(i8* %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i32, i32* @EISDIR, align 4
  %161 = call i32 @SET_ERROR(i32 %160)
  store i32 %161, i32* %27, align 4
  br label %162

162:                                              ; preds = %159, %155
  %163 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %164 = call i32 @ZFS_EXIT(%struct.TYPE_42__* %163)
  %165 = load i32, i32* %27, align 4
  store i32 %165, i32* %10, align 4
  br label %509

166:                                              ; preds = %143
  br label %167

167:                                              ; preds = %166, %130
  %168 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %169 = icmp eq %struct.TYPE_41__* %168, null
  br i1 %169, label %170, label %385

170:                                              ; preds = %167
  %171 = load i32, i32* @ZFS_DEFAULT_PROJID, align 4
  store i32 %171, i32* %36, align 4
  %172 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %173 = load i32, i32* @ACE_ADD_FILE, align 4
  %174 = load i64, i64* @B_FALSE, align 8
  %175 = load i32*, i32** %17, align 8
  %176 = call i32 @zfs_zaccess(%struct.TYPE_41__* %172, i32 %173, i32 0, i64 %174, i32* %175)
  store i32 %176, i32* %27, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %170
  %179 = load i64, i64* %32, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = call i32 @zfs_acl_ids_free(%struct.TYPE_43__* %30)
  br label %183

183:                                              ; preds = %181, %178
  br label %469

184:                                              ; preds = %170
  %185 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %186 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @ZFS_XATTR, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %184
  %192 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i64 @S_ISREG(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %205, label %197

197:                                              ; preds = %191
  %198 = load i64, i64* %32, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = call i32 @zfs_acl_ids_free(%struct.TYPE_43__* %30)
  br label %202

202:                                              ; preds = %200, %197
  %203 = load i32, i32* @EINVAL, align 4
  %204 = call i32 @SET_ERROR(i32 %203)
  store i32 %204, i32* %27, align 4
  br label %469

205:                                              ; preds = %191, %184
  %206 = load i64, i64* %32, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %205
  %209 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %210 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %211 = load i32*, i32** %17, align 8
  %212 = load i32*, i32** %19, align 8
  %213 = call i32 @zfs_acl_ids_create(%struct.TYPE_41__* %209, i32 0, %struct.TYPE_44__* %210, i32* %211, i32* %212, %struct.TYPE_43__* %30)
  store i32 %213, i32* %27, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %208
  br label %469

216:                                              ; preds = %208, %205
  %217 = load i64, i64* @B_TRUE, align 8
  store i64 %217, i64* %32, align 8
  %218 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i64 @S_ISREG(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %229, label %223

223:                                              ; preds = %216
  %224 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call i64 @S_ISDIR(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %223, %216
  %230 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %231 = call i32 @zfs_inherit_projid(%struct.TYPE_41__* %230)
  store i32 %231, i32* %36, align 4
  br label %232

232:                                              ; preds = %229, %223
  %233 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %234 = load i32, i32* %36, align 4
  %235 = call i64 @zfs_acl_ids_overquota(%struct.TYPE_42__* %233, %struct.TYPE_43__* %30, i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %232
  %238 = call i32 @zfs_acl_ids_free(%struct.TYPE_43__* %30)
  %239 = load i32, i32* @EDQUOT, align 4
  %240 = call i32 @SET_ERROR(i32 %239)
  store i32 %240, i32* %27, align 4
  br label %469

241:                                              ; preds = %232
  %242 = load %struct.TYPE_45__*, %struct.TYPE_45__** %24, align 8
  %243 = call i32* @dmu_tx_create(%struct.TYPE_45__* %242)
  store i32* %243, i32** %26, align 8
  %244 = load i32*, i32** %26, align 8
  %245 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %30, i32 0, i32 1
  %246 = load %struct.TYPE_40__*, %struct.TYPE_40__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @ZFS_SA_BASE_ATTR_SIZE, align 8
  %250 = add nsw i64 %248, %249
  %251 = call i32 @dmu_tx_hold_sa_create(i32* %244, i64 %250)
  %252 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %253 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %31, align 8
  %255 = load i64, i64* %31, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %241
  %258 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %259 = load i32*, i32** %26, align 8
  %260 = call i32 @zfs_fuid_txhold(%struct.TYPE_42__* %258, i32* %259)
  br label %261

261:                                              ; preds = %257, %241
  %262 = load i32*, i32** %26, align 8
  %263 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %264 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @TRUE, align 4
  %267 = load i8*, i8** %12, align 8
  %268 = call i32 @dmu_tx_hold_zap(i32* %262, i32 %265, i32 %266, i8* %267)
  %269 = load i32*, i32** %26, align 8
  %270 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %271 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = load i64, i64* @B_FALSE, align 8
  %274 = call i32 @dmu_tx_hold_sa(i32* %269, i32 %272, i64 %273)
  %275 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %276 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %294, label %279

279:                                              ; preds = %261
  %280 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %30, i32 0, i32 1
  %281 = load %struct.TYPE_40__*, %struct.TYPE_40__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @ZFS_ACE_SPACE, align 8
  %285 = icmp sgt i64 %283, %284
  br i1 %285, label %286, label %294

286:                                              ; preds = %279
  %287 = load i32*, i32** %26, align 8
  %288 = load i32, i32* @DMU_NEW_OBJECT, align 4
  %289 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %30, i32 0, i32 1
  %290 = load %struct.TYPE_40__*, %struct.TYPE_40__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = call i32 @dmu_tx_hold_write(i32* %287, i32 %288, i32 0, i64 %292)
  br label %294

294:                                              ; preds = %286, %279, %261
  %295 = load i32*, i32** %26, align 8
  %296 = load i64, i64* %33, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %294
  %299 = load i32, i32* @TXG_NOTHROTTLE, align 4
  br label %301

300:                                              ; preds = %294
  br label %301

301:                                              ; preds = %300, %298
  %302 = phi i32 [ %299, %298 ], [ 0, %300 ]
  %303 = load i32, i32* @TXG_NOWAIT, align 4
  %304 = or i32 %302, %303
  %305 = call i32 @dmu_tx_assign(i32* %295, i32 %304)
  store i32 %305, i32* %27, align 4
  %306 = load i32, i32* %27, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %327

308:                                              ; preds = %301
  %309 = load i32*, i32** %25, align 8
  %310 = call i32 @zfs_dirent_unlock(i32* %309)
  %311 = load i32, i32* %27, align 4
  %312 = load i32, i32* @ERESTART, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %320

314:                                              ; preds = %308
  %315 = load i64, i64* @B_TRUE, align 8
  store i64 %315, i64* %33, align 8
  %316 = load i32*, i32** %26, align 8
  %317 = call i32 @dmu_tx_wait(i32* %316)
  %318 = load i32*, i32** %26, align 8
  %319 = call i32 @dmu_tx_abort(i32* %318)
  br label %124

320:                                              ; preds = %308
  %321 = call i32 @zfs_acl_ids_free(%struct.TYPE_43__* %30)
  %322 = load i32*, i32** %26, align 8
  %323 = call i32 @dmu_tx_abort(i32* %322)
  %324 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %325 = call i32 @ZFS_EXIT(%struct.TYPE_42__* %324)
  %326 = load i32, i32* %27, align 4
  store i32 %326, i32* %10, align 4
  br label %509

327:                                              ; preds = %301
  %328 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %329 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %330 = load i32*, i32** %26, align 8
  %331 = load i32*, i32** %17, align 8
  %332 = call i32 @zfs_mknode(%struct.TYPE_41__* %328, %struct.TYPE_44__* %329, i32* %330, i32* %331, i32 0, %struct.TYPE_41__** %20, %struct.TYPE_43__* %30)
  %333 = load i32*, i32** %25, align 8
  %334 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %335 = load i32*, i32** %26, align 8
  %336 = load i32, i32* @ZNEW, align 4
  %337 = call i32 @zfs_link_create(i32* %333, %struct.TYPE_41__* %334, i32* %335, i32 %336)
  store i32 %337, i32* %27, align 4
  %338 = load i32, i32* %27, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %350

340:                                              ; preds = %327
  %341 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %342 = load i32*, i32** %26, align 8
  %343 = call i32 @zfs_znode_delete(%struct.TYPE_41__* %341, i32* %342)
  %344 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %345 = call %struct.inode* @ZTOI(%struct.TYPE_41__* %344)
  %346 = call i32 @remove_inode_hash(%struct.inode* %345)
  %347 = call i32 @zfs_acl_ids_free(%struct.TYPE_43__* %30)
  %348 = load i32*, i32** %26, align 8
  %349 = call i32 @dmu_tx_commit(i32* %348)
  br label %469

350:                                              ; preds = %327
  %351 = load i64, i64* %31, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %357

353:                                              ; preds = %350
  %354 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %355 = load i32*, i32** %26, align 8
  %356 = call i32 @zfs_fuid_sync(%struct.TYPE_42__* %354, i32* %355)
  br label %357

357:                                              ; preds = %353, %350
  %358 = load i32, i32* @Z_FILE, align 4
  %359 = load i32*, i32** %19, align 8
  %360 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %361 = call i32 @zfs_log_create_txtype(i32 %358, i32* %359, %struct.TYPE_44__* %360)
  store i32 %361, i32* %35, align 4
  %362 = load i32, i32* %18, align 4
  %363 = load i32, i32* @FIGNORECASE, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %357
  %367 = load i32, i32* @TX_CI, align 4
  %368 = load i32, i32* %35, align 4
  %369 = or i32 %368, %367
  store i32 %369, i32* %35, align 4
  br label %370

370:                                              ; preds = %366, %357
  %371 = load i32*, i32** %23, align 8
  %372 = load i32*, i32** %26, align 8
  %373 = load i32, i32* %35, align 4
  %374 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %375 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %376 = load i8*, i8** %12, align 8
  %377 = load i32*, i32** %19, align 8
  %378 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %30, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %381 = call i32 @zfs_log_create(i32* %371, i32* %372, i32 %373, %struct.TYPE_41__* %374, %struct.TYPE_41__* %375, i8* %376, i32* %377, i32 %379, %struct.TYPE_44__* %380)
  %382 = call i32 @zfs_acl_ids_free(%struct.TYPE_43__* %30)
  %383 = load i32*, i32** %26, align 8
  %384 = call i32 @dmu_tx_commit(i32* %383)
  br label %468

385:                                              ; preds = %167
  %386 = load i32, i32* %18, align 4
  %387 = load i32, i32* @FAPPEND, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %392

390:                                              ; preds = %385
  %391 = load i32, i32* @V_APPEND, align 4
  br label %393

392:                                              ; preds = %385
  br label %393

393:                                              ; preds = %392, %390
  %394 = phi i32 [ %391, %390 ], [ 0, %392 ]
  store i32 %394, i32* %37, align 4
  %395 = load i64, i64* %32, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %393
  %398 = call i32 @zfs_acl_ids_free(%struct.TYPE_43__* %30)
  br label %399

399:                                              ; preds = %397, %393
  %400 = load i64, i64* @B_FALSE, align 8
  store i64 %400, i64* %32, align 8
  %401 = load i32, i32* %14, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %399
  %404 = load i32, i32* @EEXIST, align 4
  %405 = call i32 @SET_ERROR(i32 %404)
  store i32 %405, i32* %27, align 4
  br label %469

406:                                              ; preds = %399
  %407 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %408 = call %struct.inode* @ZTOI(%struct.TYPE_41__* %407)
  %409 = getelementptr inbounds %struct.inode, %struct.inode* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = call i64 @S_ISDIR(i32 %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %406
  %414 = load i32, i32* @EISDIR, align 4
  %415 = call i32 @SET_ERROR(i32 %414)
  store i32 %415, i32* %27, align 4
  br label %469

416:                                              ; preds = %406
  %417 = load i32, i32* %15, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %427

419:                                              ; preds = %416
  %420 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %421 = load i32, i32* %15, align 4
  %422 = load i32, i32* %37, align 4
  %423 = load i32*, i32** %17, align 8
  %424 = call i32 @zfs_zaccess_rwx(%struct.TYPE_41__* %420, i32 %421, i32 %422, i32* %423)
  store i32 %424, i32* %27, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %419
  br label %469

427:                                              ; preds = %419, %416
  %428 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %429 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %428, i32 0, i32 1
  %430 = call i32 @mutex_enter(i32* %429)
  %431 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %432 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %432, align 4
  %435 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %436 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %435, i32 0, i32 1
  %437 = call i32 @mutex_exit(i32* %436)
  %438 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %439 = call %struct.inode* @ZTOI(%struct.TYPE_41__* %438)
  %440 = getelementptr inbounds %struct.inode, %struct.inode* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = call i64 @S_ISREG(i32 %441)
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %467

444:                                              ; preds = %427
  %445 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %446 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = load i32, i32* @ATTR_SIZE, align 4
  %449 = and i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %467

451:                                              ; preds = %444
  %452 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %453 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %452, i32 0, i32 1
  %454 = load i64, i64* %453, align 8
  %455 = icmp eq i64 %454, 0
  br i1 %455, label %456, label %467

456:                                              ; preds = %451
  %457 = load i32*, i32** %25, align 8
  %458 = icmp ne i32* %457, null
  br i1 %458, label %459, label %462

459:                                              ; preds = %456
  %460 = load i32*, i32** %25, align 8
  %461 = call i32 @zfs_dirent_unlock(i32* %460)
  store i32* null, i32** %25, align 8
  br label %462

462:                                              ; preds = %459, %456
  %463 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %464 = load i32, i32* %15, align 4
  %465 = load i32, i32* @TRUE, align 4
  %466 = call i32 @zfs_freesp(%struct.TYPE_41__* %463, i32 0, i32 0, i32 %464, i32 %465)
  store i32 %466, i32* %27, align 4
  br label %467

467:                                              ; preds = %462, %451, %444, %427
  br label %468

468:                                              ; preds = %467, %370
  br label %469

469:                                              ; preds = %468, %426, %413, %403, %340, %237, %215, %202, %183
  %470 = load i32*, i32** %25, align 8
  %471 = icmp ne i32* %470, null
  br i1 %471, label %472, label %475

472:                                              ; preds = %469
  %473 = load i32*, i32** %25, align 8
  %474 = call i32 @zfs_dirent_unlock(i32* %473)
  br label %475

475:                                              ; preds = %472, %469
  %476 = load i32, i32* %27, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %486

478:                                              ; preds = %475
  %479 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %480 = icmp ne %struct.TYPE_41__* %479, null
  br i1 %480, label %481, label %485

481:                                              ; preds = %478
  %482 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %483 = call %struct.inode* @ZTOI(%struct.TYPE_41__* %482)
  %484 = call i32 @iput(%struct.inode* %483)
  br label %485

485:                                              ; preds = %481, %478
  br label %494

486:                                              ; preds = %475
  %487 = load %struct.TYPE_41__*, %struct.TYPE_41__** %21, align 8
  %488 = call i32 @zfs_inode_update(%struct.TYPE_41__* %487)
  %489 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %490 = call i32 @zfs_inode_update(%struct.TYPE_41__* %489)
  %491 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %492 = call %struct.inode* @ZTOI(%struct.TYPE_41__* %491)
  %493 = load %struct.inode**, %struct.inode*** %16, align 8
  store %struct.inode* %492, %struct.inode** %493, align 8
  br label %494

494:                                              ; preds = %486, %485
  %495 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %496 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %495, i32 0, i32 1
  %497 = load %struct.TYPE_45__*, %struct.TYPE_45__** %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %497, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = load i64, i64* @ZFS_SYNC_ALWAYS, align 8
  %501 = icmp eq i64 %499, %500
  br i1 %501, label %502, label %505

502:                                              ; preds = %494
  %503 = load i32*, i32** %23, align 8
  %504 = call i32 @zil_commit(i32* %503, i32 0)
  br label %505

505:                                              ; preds = %502, %494
  %506 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %507 = call i32 @ZFS_EXIT(%struct.TYPE_42__* %506)
  %508 = load i32, i32* %27, align 4
  store i32 %508, i32* %10, align 4
  br label %509

509:                                              ; preds = %505, %320, %162, %118, %95, %70, %64
  %510 = load i32, i32* %10, align 4
  ret i32 %510
}

declare dso_local %struct.TYPE_41__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_42__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @crgetgid(i32*) #1

declare dso_local i32 @crgetuid(i32*) #1

declare dso_local i64 @IS_EPHEMERAL(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_42__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_41__*) #1

declare dso_local i64 @u8_validate(i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_42__*) #1

declare dso_local i32 @secpolicy_xvattr(i32*, i32, i32*, i32) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @zfs_dirent_lock(i32**, %struct.TYPE_41__*, i8*, %struct.TYPE_41__**, i32, i32*, i32*) #1

declare dso_local i32 @zfs_acl_ids_free(%struct.TYPE_43__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @zfs_zaccess(%struct.TYPE_41__*, i32, i32, i64, i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @zfs_acl_ids_create(%struct.TYPE_41__*, i32, %struct.TYPE_44__*, i32*, i32*, %struct.TYPE_43__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @zfs_inherit_projid(%struct.TYPE_41__*) #1

declare dso_local i64 @zfs_acl_ids_overquota(%struct.TYPE_42__*, %struct.TYPE_43__*, i32) #1

declare dso_local i32* @dmu_tx_create(%struct.TYPE_45__*) #1

declare dso_local i32 @dmu_tx_hold_sa_create(i32*, i64) #1

declare dso_local i32 @zfs_fuid_txhold(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i32, i32, i8*) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32, i64) #1

declare dso_local i32 @dmu_tx_hold_write(i32*, i32, i32, i64) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @zfs_dirent_unlock(i32*) #1

declare dso_local i32 @dmu_tx_wait(i32*) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @zfs_mknode(%struct.TYPE_41__*, %struct.TYPE_44__*, i32*, i32*, i32, %struct.TYPE_41__**, %struct.TYPE_43__*) #1

declare dso_local i32 @zfs_link_create(i32*, %struct.TYPE_41__*, i32*, i32) #1

declare dso_local i32 @zfs_znode_delete(%struct.TYPE_41__*, i32*) #1

declare dso_local i32 @remove_inode_hash(%struct.inode*) #1

declare dso_local %struct.inode* @ZTOI(%struct.TYPE_41__*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @zfs_fuid_sync(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @zfs_log_create_txtype(i32, i32*, %struct.TYPE_44__*) #1

declare dso_local i32 @zfs_log_create(i32*, i32*, i32, %struct.TYPE_41__*, %struct.TYPE_41__*, i8*, i32*, i32, %struct.TYPE_44__*) #1

declare dso_local i32 @zfs_zaccess_rwx(%struct.TYPE_41__*, i32, i32, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zfs_freesp(%struct.TYPE_41__*, i32, i32, i32, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @zfs_inode_update(%struct.TYPE_41__*) #1

declare dso_local i32 @zil_commit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
