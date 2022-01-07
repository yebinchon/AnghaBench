; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_getattr.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.TYPE_28__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i64, i32, i64 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }

@ATTR_NOACLCHECK = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_ACL_TRIVIAL = common dso_local global i32 0, align 4
@ACE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@ZFS_LINK_MAX = common dso_local global i32 0, align 4
@XAT_ARCHIVE = common dso_local global i32 0, align 4
@ZFS_ARCHIVE = common dso_local global i32 0, align 4
@XAT_READONLY = common dso_local global i32 0, align 4
@ZFS_READONLY = common dso_local global i32 0, align 4
@XAT_SYSTEM = common dso_local global i32 0, align 4
@ZFS_SYSTEM = common dso_local global i32 0, align 4
@XAT_HIDDEN = common dso_local global i32 0, align 4
@ZFS_HIDDEN = common dso_local global i32 0, align 4
@XAT_NOUNLINK = common dso_local global i32 0, align 4
@ZFS_NOUNLINK = common dso_local global i32 0, align 4
@XAT_IMMUTABLE = common dso_local global i32 0, align 4
@ZFS_IMMUTABLE = common dso_local global i32 0, align 4
@XAT_APPENDONLY = common dso_local global i32 0, align 4
@ZFS_APPENDONLY = common dso_local global i32 0, align 4
@XAT_NODUMP = common dso_local global i32 0, align 4
@ZFS_NODUMP = common dso_local global i32 0, align 4
@XAT_OPAQUE = common dso_local global i32 0, align 4
@ZFS_OPAQUE = common dso_local global i32 0, align 4
@XAT_AV_QUARANTINED = common dso_local global i32 0, align 4
@ZFS_AV_QUARANTINED = common dso_local global i32 0, align 4
@XAT_AV_MODIFIED = common dso_local global i32 0, align 4
@ZFS_AV_MODIFIED = common dso_local global i32 0, align 4
@XAT_AV_SCANSTAMP = common dso_local global i32 0, align 4
@XAT_CREATETIME = common dso_local global i32 0, align 4
@XAT_REPARSE = common dso_local global i32 0, align 4
@ZFS_REPARSE = common dso_local global i32 0, align 4
@XAT_GEN = common dso_local global i32 0, align 4
@XAT_OFFLINE = common dso_local global i32 0, align 4
@ZFS_OFFLINE = common dso_local global i32 0, align 4
@XAT_SPARSE = common dso_local global i32 0, align 4
@ZFS_SPARSE = common dso_local global i32 0, align 4
@XAT_PROJINHERIT = common dso_local global i32 0, align 4
@ZFS_PROJINHERIT = common dso_local global i32 0, align 4
@XAT_PROJID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_getattr(%struct.inode* %0, %struct.TYPE_28__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca [2 x i64], align 16
  %15 = alloca [2 x i64], align 16
  %16 = alloca [2 x i64], align 16
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [3 x i32], align 4
  %21 = alloca i32, align 4
  %22 = alloca [2 x i64], align 16
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call %struct.TYPE_25__* @ITOZ(%struct.inode* %23)
  store %struct.TYPE_25__* %24, %struct.TYPE_25__** %10, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call %struct.TYPE_26__* @ITOZSB(%struct.inode* %25)
  store %struct.TYPE_26__* %26, %struct.TYPE_26__** %11, align 8
  store i32 0, i32* %12, align 4
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %28 = bitcast %struct.TYPE_28__* %27 to i32*
  store i32* %28, i32** %17, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %18, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @ATTR_NOACLCHECK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* @B_TRUE, align 4
  br label %37

35:                                               ; preds = %4
  %36 = load i32, i32* @B_FALSE, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %40 = call i32 @ZFS_ENTER(%struct.TYPE_26__* %39)
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %42 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_25__* %41)
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 13
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 14
  %49 = call i32 @zfs_fuid_map_ids(%struct.TYPE_25__* %43, i32* %44, i32* %46, i32* %48)
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %51 = load i32, i32* %21, align 4
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %53 = call i32 @SA_ZPL_ATIME(%struct.TYPE_26__* %52)
  %54 = bitcast [2 x i64]* %14 to i64**
  %55 = call i32 @SA_ADD_BULK_ATTR(i32* %50, i32 %51, i32 %53, i32* null, i64** %54, i32 16)
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %57 = load i32, i32* %21, align 4
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %59 = call i32 @SA_ZPL_MTIME(%struct.TYPE_26__* %58)
  %60 = bitcast [2 x i64]* %15 to i64**
  %61 = call i32 @SA_ADD_BULK_ATTR(i32* %56, i32 %57, i32 %59, i32* null, i64** %60, i32 16)
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %63 = load i32, i32* %21, align 4
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %65 = call i32 @SA_ZPL_CTIME(%struct.TYPE_26__* %64)
  %66 = bitcast [2 x i64]* %16 to i64**
  %67 = call i32 @SA_ADD_BULK_ATTR(i32* %62, i32 %63, i32 %65, i32* null, i64** %66, i32 16)
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %72 = load i32, i32* %21, align 4
  %73 = call i32 @sa_bulk_lookup(i32 %70, i32* %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %37
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %77 = call i32 @ZFS_EXIT(%struct.TYPE_26__* %76)
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %5, align 4
  br label %554

79:                                               ; preds = %37
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ZFS_ACL_TRIVIAL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %105, label %86

86:                                               ; preds = %79
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 13
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @crgetuid(i32* %90)
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %86
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %95 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @zfs_zaccess(%struct.TYPE_25__* %94, i32 %95, i32 0, i32 %96, i32* %97)
  store i32 %98, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %102 = call i32 @ZFS_EXIT(%struct.TYPE_26__* %101)
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %5, align 4
  br label %554

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %86, %79
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 4
  %108 = call i32 @mutex_enter(i32* %107)
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @vn_mode_to_vtype(i32 %111)
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 12
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 11
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %121 = call %struct.TYPE_23__* @ZTOI(%struct.TYPE_25__* %120)
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 10
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %135, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %105
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %142 = call i64 @zfs_show_ctldir(%struct.TYPE_25__* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %146 = call %struct.TYPE_23__* @ZTOI(%struct.TYPE_25__* %145)
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %13, align 8
  br label %155

150:                                              ; preds = %140, %105
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %152 = call %struct.TYPE_23__* @ZTOI(%struct.TYPE_25__* %151)
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %13, align 8
  br label %155

155:                                              ; preds = %150, %144
  %156 = load i64, i64* %13, align 8
  %157 = load i32, i32* @ZFS_LINK_MAX, align 4
  %158 = call i32 @MIN(i64 %156, i32 %157)
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 9
  store i32 %158, i32* %160, align 8
  %161 = load %struct.inode*, %struct.inode** %6, align 8
  %162 = call i32 @i_size_read(%struct.inode* %161)
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 8
  store i32 %162, i32* %164, align 4
  %165 = load %struct.inode*, %struct.inode** %6, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 7
  store i32 %167, i32* %169, align 8
  %170 = load %struct.inode*, %struct.inode** %6, align 8
  %171 = getelementptr inbounds %struct.inode, %struct.inode* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 6
  store i32 %172, i32* %174, align 4
  %175 = load i32*, i32** %17, align 8
  %176 = call %struct.TYPE_27__* @xva_getxoptattr(i32* %175)
  store %struct.TYPE_27__* %176, %struct.TYPE_27__** %18, align 8
  %177 = icmp ne %struct.TYPE_27__* %176, null
  br i1 %177, label %178, label %517

178:                                              ; preds = %155
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %517

183:                                              ; preds = %178
  %184 = load i32*, i32** %17, align 8
  %185 = load i32, i32* @XAT_ARCHIVE, align 4
  %186 = call i64 @XVA_ISSET_REQ(i32* %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %183
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @ZFS_ARCHIVE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i32
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 4
  %198 = load i32*, i32** %17, align 8
  %199 = load i32, i32* @XAT_ARCHIVE, align 4
  %200 = call i32 @XVA_SET_RTN(i32* %198, i32 %199)
  br label %201

201:                                              ; preds = %188, %183
  %202 = load i32*, i32** %17, align 8
  %203 = load i32, i32* @XAT_READONLY, align 4
  %204 = call i64 @XVA_ISSET_REQ(i32* %202, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %219

206:                                              ; preds = %201
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @ZFS_READONLY, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  %213 = zext i1 %212 to i32
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  %216 = load i32*, i32** %17, align 8
  %217 = load i32, i32* @XAT_READONLY, align 4
  %218 = call i32 @XVA_SET_RTN(i32* %216, i32 %217)
  br label %219

219:                                              ; preds = %206, %201
  %220 = load i32*, i32** %17, align 8
  %221 = load i32, i32* @XAT_SYSTEM, align 4
  %222 = call i64 @XVA_ISSET_REQ(i32* %220, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %237

224:                                              ; preds = %219
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @ZFS_SYSTEM, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  %231 = zext i1 %230 to i32
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 4
  %234 = load i32*, i32** %17, align 8
  %235 = load i32, i32* @XAT_SYSTEM, align 4
  %236 = call i32 @XVA_SET_RTN(i32* %234, i32 %235)
  br label %237

237:                                              ; preds = %224, %219
  %238 = load i32*, i32** %17, align 8
  %239 = load i32, i32* @XAT_HIDDEN, align 4
  %240 = call i64 @XVA_ISSET_REQ(i32* %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %255

242:                                              ; preds = %237
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @ZFS_HIDDEN, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  %249 = zext i1 %248 to i32
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 3
  store i32 %249, i32* %251, align 4
  %252 = load i32*, i32** %17, align 8
  %253 = load i32, i32* @XAT_HIDDEN, align 4
  %254 = call i32 @XVA_SET_RTN(i32* %252, i32 %253)
  br label %255

255:                                              ; preds = %242, %237
  %256 = load i32*, i32** %17, align 8
  %257 = load i32, i32* @XAT_NOUNLINK, align 4
  %258 = call i64 @XVA_ISSET_REQ(i32* %256, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %273

260:                                              ; preds = %255
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @ZFS_NOUNLINK, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  %267 = zext i1 %266 to i32
  %268 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %269 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %268, i32 0, i32 4
  store i32 %267, i32* %269, align 4
  %270 = load i32*, i32** %17, align 8
  %271 = load i32, i32* @XAT_NOUNLINK, align 4
  %272 = call i32 @XVA_SET_RTN(i32* %270, i32 %271)
  br label %273

273:                                              ; preds = %260, %255
  %274 = load i32*, i32** %17, align 8
  %275 = load i32, i32* @XAT_IMMUTABLE, align 4
  %276 = call i64 @XVA_ISSET_REQ(i32* %274, i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %291

278:                                              ; preds = %273
  %279 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @ZFS_IMMUTABLE, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  %285 = zext i1 %284 to i32
  %286 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %287 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %286, i32 0, i32 5
  store i32 %285, i32* %287, align 4
  %288 = load i32*, i32** %17, align 8
  %289 = load i32, i32* @XAT_IMMUTABLE, align 4
  %290 = call i32 @XVA_SET_RTN(i32* %288, i32 %289)
  br label %291

291:                                              ; preds = %278, %273
  %292 = load i32*, i32** %17, align 8
  %293 = load i32, i32* @XAT_APPENDONLY, align 4
  %294 = call i64 @XVA_ISSET_REQ(i32* %292, i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %309

296:                                              ; preds = %291
  %297 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @ZFS_APPENDONLY, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  %303 = zext i1 %302 to i32
  %304 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %305 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %304, i32 0, i32 6
  store i32 %303, i32* %305, align 4
  %306 = load i32*, i32** %17, align 8
  %307 = load i32, i32* @XAT_APPENDONLY, align 4
  %308 = call i32 @XVA_SET_RTN(i32* %306, i32 %307)
  br label %309

309:                                              ; preds = %296, %291
  %310 = load i32*, i32** %17, align 8
  %311 = load i32, i32* @XAT_NODUMP, align 4
  %312 = call i64 @XVA_ISSET_REQ(i32* %310, i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %327

314:                                              ; preds = %309
  %315 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @ZFS_NODUMP, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  %321 = zext i1 %320 to i32
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 7
  store i32 %321, i32* %323, align 4
  %324 = load i32*, i32** %17, align 8
  %325 = load i32, i32* @XAT_NODUMP, align 4
  %326 = call i32 @XVA_SET_RTN(i32* %324, i32 %325)
  br label %327

327:                                              ; preds = %314, %309
  %328 = load i32*, i32** %17, align 8
  %329 = load i32, i32* @XAT_OPAQUE, align 4
  %330 = call i64 @XVA_ISSET_REQ(i32* %328, i32 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %345

332:                                              ; preds = %327
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @ZFS_OPAQUE, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  %339 = zext i1 %338 to i32
  %340 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %341 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %340, i32 0, i32 8
  store i32 %339, i32* %341, align 4
  %342 = load i32*, i32** %17, align 8
  %343 = load i32, i32* @XAT_OPAQUE, align 4
  %344 = call i32 @XVA_SET_RTN(i32* %342, i32 %343)
  br label %345

345:                                              ; preds = %332, %327
  %346 = load i32*, i32** %17, align 8
  %347 = load i32, i32* @XAT_AV_QUARANTINED, align 4
  %348 = call i64 @XVA_ISSET_REQ(i32* %346, i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %363

350:                                              ; preds = %345
  %351 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %352 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @ZFS_AV_QUARANTINED, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  %357 = zext i1 %356 to i32
  %358 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %359 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %358, i32 0, i32 9
  store i32 %357, i32* %359, align 4
  %360 = load i32*, i32** %17, align 8
  %361 = load i32, i32* @XAT_AV_QUARANTINED, align 4
  %362 = call i32 @XVA_SET_RTN(i32* %360, i32 %361)
  br label %363

363:                                              ; preds = %350, %345
  %364 = load i32*, i32** %17, align 8
  %365 = load i32, i32* @XAT_AV_MODIFIED, align 4
  %366 = call i64 @XVA_ISSET_REQ(i32* %364, i32 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %381

368:                                              ; preds = %363
  %369 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %370 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @ZFS_AV_MODIFIED, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  %375 = zext i1 %374 to i32
  %376 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %377 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %376, i32 0, i32 10
  store i32 %375, i32* %377, align 4
  %378 = load i32*, i32** %17, align 8
  %379 = load i32, i32* @XAT_AV_MODIFIED, align 4
  %380 = call i32 @XVA_SET_RTN(i32* %378, i32 %379)
  br label %381

381:                                              ; preds = %368, %363
  %382 = load i32*, i32** %17, align 8
  %383 = load i32, i32* @XAT_AV_SCANSTAMP, align 4
  %384 = call i64 @XVA_ISSET_REQ(i32* %382, i32 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %396

386:                                              ; preds = %381
  %387 = load %struct.inode*, %struct.inode** %6, align 8
  %388 = getelementptr inbounds %struct.inode, %struct.inode* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = call i64 @S_ISREG(i32 %389)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %386
  %393 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %394 = load i32*, i32** %17, align 8
  %395 = call i32 @zfs_sa_get_scanstamp(%struct.TYPE_25__* %393, i32* %394)
  br label %396

396:                                              ; preds = %392, %386, %381
  %397 = load i32*, i32** %17, align 8
  %398 = load i32, i32* @XAT_CREATETIME, align 4
  %399 = call i64 @XVA_ISSET_REQ(i32* %397, i32 %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %416

401:                                              ; preds = %396
  %402 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %403 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 8
  %405 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %406 = call i32 @SA_ZPL_CRTIME(%struct.TYPE_26__* %405)
  %407 = getelementptr inbounds [2 x i64], [2 x i64]* %22, i64 0, i64 0
  %408 = call i32 @sa_lookup(i32 %404, i32 %406, i64* %407, i32 16)
  %409 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %410 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %409, i32 0, i32 17
  %411 = getelementptr inbounds [2 x i64], [2 x i64]* %22, i64 0, i64 0
  %412 = call i32 @ZFS_TIME_DECODE(i32* %410, i64* %411)
  %413 = load i32*, i32** %17, align 8
  %414 = load i32, i32* @XAT_CREATETIME, align 4
  %415 = call i32 @XVA_SET_RTN(i32* %413, i32 %414)
  br label %416

416:                                              ; preds = %401, %396
  %417 = load i32*, i32** %17, align 8
  %418 = load i32, i32* @XAT_REPARSE, align 4
  %419 = call i64 @XVA_ISSET_REQ(i32* %417, i32 %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %434

421:                                              ; preds = %416
  %422 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %423 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @ZFS_REPARSE, align 4
  %426 = and i32 %424, %425
  %427 = icmp ne i32 %426, 0
  %428 = zext i1 %427 to i32
  %429 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %430 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %429, i32 0, i32 11
  store i32 %428, i32* %430, align 4
  %431 = load i32*, i32** %17, align 8
  %432 = load i32, i32* @XAT_REPARSE, align 4
  %433 = call i32 @XVA_SET_RTN(i32* %431, i32 %432)
  br label %434

434:                                              ; preds = %421, %416
  %435 = load i32*, i32** %17, align 8
  %436 = load i32, i32* @XAT_GEN, align 4
  %437 = call i64 @XVA_ISSET_REQ(i32* %435, i32 %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %448

439:                                              ; preds = %434
  %440 = load %struct.inode*, %struct.inode** %6, align 8
  %441 = getelementptr inbounds %struct.inode, %struct.inode* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %444 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %443, i32 0, i32 16
  store i32 %442, i32* %444, align 4
  %445 = load i32*, i32** %17, align 8
  %446 = load i32, i32* @XAT_GEN, align 4
  %447 = call i32 @XVA_SET_RTN(i32* %445, i32 %446)
  br label %448

448:                                              ; preds = %439, %434
  %449 = load i32*, i32** %17, align 8
  %450 = load i32, i32* @XAT_OFFLINE, align 4
  %451 = call i64 @XVA_ISSET_REQ(i32* %449, i32 %450)
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %466

453:                                              ; preds = %448
  %454 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %455 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = load i32, i32* @ZFS_OFFLINE, align 4
  %458 = and i32 %456, %457
  %459 = icmp ne i32 %458, 0
  %460 = zext i1 %459 to i32
  %461 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %462 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %461, i32 0, i32 12
  store i32 %460, i32* %462, align 4
  %463 = load i32*, i32** %17, align 8
  %464 = load i32, i32* @XAT_OFFLINE, align 4
  %465 = call i32 @XVA_SET_RTN(i32* %463, i32 %464)
  br label %466

466:                                              ; preds = %453, %448
  %467 = load i32*, i32** %17, align 8
  %468 = load i32, i32* @XAT_SPARSE, align 4
  %469 = call i64 @XVA_ISSET_REQ(i32* %467, i32 %468)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %484

471:                                              ; preds = %466
  %472 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %473 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = load i32, i32* @ZFS_SPARSE, align 4
  %476 = and i32 %474, %475
  %477 = icmp ne i32 %476, 0
  %478 = zext i1 %477 to i32
  %479 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %480 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %479, i32 0, i32 13
  store i32 %478, i32* %480, align 4
  %481 = load i32*, i32** %17, align 8
  %482 = load i32, i32* @XAT_SPARSE, align 4
  %483 = call i32 @XVA_SET_RTN(i32* %481, i32 %482)
  br label %484

484:                                              ; preds = %471, %466
  %485 = load i32*, i32** %17, align 8
  %486 = load i32, i32* @XAT_PROJINHERIT, align 4
  %487 = call i64 @XVA_ISSET_REQ(i32* %485, i32 %486)
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %502

489:                                              ; preds = %484
  %490 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %491 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = load i32, i32* @ZFS_PROJINHERIT, align 4
  %494 = and i32 %492, %493
  %495 = icmp ne i32 %494, 0
  %496 = zext i1 %495 to i32
  %497 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %498 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %497, i32 0, i32 14
  store i32 %496, i32* %498, align 4
  %499 = load i32*, i32** %17, align 8
  %500 = load i32, i32* @XAT_PROJINHERIT, align 4
  %501 = call i32 @XVA_SET_RTN(i32* %499, i32 %500)
  br label %502

502:                                              ; preds = %489, %484
  %503 = load i32*, i32** %17, align 8
  %504 = load i32, i32* @XAT_PROJID, align 4
  %505 = call i64 @XVA_ISSET_REQ(i32* %503, i32 %504)
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %516

507:                                              ; preds = %502
  %508 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %509 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %508, i32 0, i32 5
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %512 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %511, i32 0, i32 15
  store i32 %510, i32* %512, align 4
  %513 = load i32*, i32** %17, align 8
  %514 = load i32, i32* @XAT_PROJID, align 4
  %515 = call i32 @XVA_SET_RTN(i32* %513, i32 %514)
  br label %516

516:                                              ; preds = %507, %502
  br label %517

517:                                              ; preds = %516, %178, %155
  %518 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %519 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %518, i32 0, i32 5
  %520 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %521 = call i32 @ZFS_TIME_DECODE(i32* %519, i64* %520)
  %522 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %523 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %522, i32 0, i32 4
  %524 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  %525 = call i32 @ZFS_TIME_DECODE(i32* %523, i64* %524)
  %526 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %527 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %526, i32 0, i32 3
  %528 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 0
  %529 = call i32 @ZFS_TIME_DECODE(i32* %527, i64* %528)
  %530 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %531 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %530, i32 0, i32 4
  %532 = call i32 @mutex_exit(i32* %531)
  %533 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %534 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %533, i32 0, i32 3
  %535 = load i32, i32* %534, align 8
  %536 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %537 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %536, i32 0, i32 1
  %538 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %539 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %538, i32 0, i32 2
  %540 = call i32 @sa_object_size(i32 %535, i32* %537, i32* %539)
  %541 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %542 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %541, i32 0, i32 2
  %543 = load i64, i64* %542, align 8
  %544 = icmp eq i64 %543, 0
  br i1 %544, label %545, label %551

545:                                              ; preds = %517
  %546 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %547 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 8
  %549 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %550 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %549, i32 0, i32 1
  store i32 %548, i32* %550, align 8
  br label %551

551:                                              ; preds = %545, %517
  %552 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %553 = call i32 @ZFS_EXIT(%struct.TYPE_26__* %552)
  store i32 0, i32* %5, align 4
  br label %554

554:                                              ; preds = %551, %100, %75
  %555 = load i32, i32* %5, align 4
  ret i32 %555
}

declare dso_local %struct.TYPE_25__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_26__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_26__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_25__*) #1

declare dso_local i32 @zfs_fuid_map_ids(%struct.TYPE_25__*, i32*, i32*, i32*) #1

declare dso_local i32 @SA_ADD_BULK_ATTR(i32*, i32, i32, i32*, i64**, i32) #1

declare dso_local i32 @SA_ZPL_ATIME(%struct.TYPE_26__*) #1

declare dso_local i32 @SA_ZPL_MTIME(%struct.TYPE_26__*) #1

declare dso_local i32 @SA_ZPL_CTIME(%struct.TYPE_26__*) #1

declare dso_local i32 @sa_bulk_lookup(i32, i32*, i32) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_26__*) #1

declare dso_local i32 @crgetuid(i32*) #1

declare dso_local i32 @zfs_zaccess(%struct.TYPE_25__*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @vn_mode_to_vtype(i32) #1

declare dso_local %struct.TYPE_23__* @ZTOI(%struct.TYPE_25__*) #1

declare dso_local i64 @zfs_show_ctldir(%struct.TYPE_25__*) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local %struct.TYPE_27__* @xva_getxoptattr(i32*) #1

declare dso_local i64 @XVA_ISSET_REQ(i32*, i32) #1

declare dso_local i32 @XVA_SET_RTN(i32*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @zfs_sa_get_scanstamp(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @sa_lookup(i32, i32, i64*, i32) #1

declare dso_local i32 @SA_ZPL_CRTIME(%struct.TYPE_26__*) #1

declare dso_local i32 @ZFS_TIME_DECODE(i32*, i64*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @sa_object_size(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
