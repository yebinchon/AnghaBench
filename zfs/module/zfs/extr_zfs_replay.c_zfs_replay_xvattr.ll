; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_replay.c_zfs_replay_xvattr.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_replay.c_zfs_replay_xvattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@ATTR_XVATTR = common dso_local global i32 0, align 4
@XAT_HIDDEN = common dso_local global i32 0, align 4
@XAT0_HIDDEN = common dso_local global i32 0, align 4
@XAT_SYSTEM = common dso_local global i32 0, align 4
@XAT0_SYSTEM = common dso_local global i32 0, align 4
@XAT_ARCHIVE = common dso_local global i32 0, align 4
@XAT0_ARCHIVE = common dso_local global i32 0, align 4
@XAT_READONLY = common dso_local global i32 0, align 4
@XAT0_READONLY = common dso_local global i32 0, align 4
@XAT_IMMUTABLE = common dso_local global i32 0, align 4
@XAT0_IMMUTABLE = common dso_local global i32 0, align 4
@XAT_NOUNLINK = common dso_local global i32 0, align 4
@XAT0_NOUNLINK = common dso_local global i32 0, align 4
@XAT_APPENDONLY = common dso_local global i32 0, align 4
@XAT0_APPENDONLY = common dso_local global i32 0, align 4
@XAT_NODUMP = common dso_local global i32 0, align 4
@XAT0_NODUMP = common dso_local global i32 0, align 4
@XAT_OPAQUE = common dso_local global i32 0, align 4
@XAT0_OPAQUE = common dso_local global i32 0, align 4
@XAT_AV_MODIFIED = common dso_local global i32 0, align 4
@XAT0_AV_MODIFIED = common dso_local global i32 0, align 4
@XAT_AV_QUARANTINED = common dso_local global i32 0, align 4
@XAT0_AV_QUARANTINED = common dso_local global i32 0, align 4
@XAT_CREATETIME = common dso_local global i32 0, align 4
@XAT_AV_SCANSTAMP = common dso_local global i32 0, align 4
@XAT_PROJID = common dso_local global i32 0, align 4
@AV_SCANSTAMP_SZ = common dso_local global i32 0, align 4
@XAT_REPARSE = common dso_local global i32 0, align 4
@XAT0_REPARSE = common dso_local global i32 0, align 4
@XAT_OFFLINE = common dso_local global i32 0, align 4
@XAT0_OFFLINE = common dso_local global i32 0, align 4
@XAT_SPARSE = common dso_local global i32 0, align 4
@XAT0_SPARSE = common dso_local global i32 0, align 4
@XAT_PROJINHERIT = common dso_local global i32 0, align 4
@XAT0_PROJINHERIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_11__*)* @zfs_replay_xvattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_replay_xvattr(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  %11 = load i32, i32* @ATTR_XVATTR, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %11
  store i32 %16, i32* %14, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = call %struct.TYPE_12__* @xva_getxoptattr(%struct.TYPE_11__* %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %5, align 8
  %19 = icmp eq %struct.TYPE_12__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load i32, i32* @ATTR_XVATTR, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %22
  store i32 %27, i32* %25, align 8
  br label %323

28:                                               ; preds = %2
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  store i32* %39, i32** %8, align 8
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %55, %28
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %8, align 8
  br label %40

60:                                               ; preds = %40
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i64 -1
  %68 = bitcast %struct.TYPE_13__* %67 to i32*
  store i32* %68, i32** %6, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32* %70, i32** %7, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = bitcast i32* %72 to i8*
  store i8* %73, i8** %9, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = load i32, i32* @XAT_HIDDEN, align 4
  %76 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %60
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @XAT0_HIDDEN, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %78, %60
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = load i32, i32* @XAT_SYSTEM, align 4
  %90 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @XAT0_SYSTEM, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %92, %87
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = load i32, i32* @XAT_ARCHIVE, align 4
  %104 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @XAT0_ARCHIVE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %106, %101
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = load i32, i32* @XAT_READONLY, align 4
  %118 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @XAT0_READONLY, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %120, %115
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %131 = load i32, i32* @XAT_IMMUTABLE, align 4
  %132 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @XAT0_IMMUTABLE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %134, %129
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %145 = load i32, i32* @XAT_NOUNLINK, align 4
  %146 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %143
  %149 = load i32*, i32** %6, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @XAT0_NOUNLINK, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %148, %143
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %159 = load i32, i32* @XAT_APPENDONLY, align 4
  %160 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %158, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %157
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @XAT0_APPENDONLY, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i32
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %162, %157
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %173 = load i32, i32* @XAT_NODUMP, align 4
  %174 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %171
  %177 = load i32*, i32** %6, align 8
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @XAT0_NODUMP, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  %182 = zext i1 %181 to i32
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 7
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %176, %171
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %187 = load i32, i32* @XAT_OPAQUE, align 4
  %188 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %186, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %185
  %191 = load i32*, i32** %6, align 8
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @XAT0_OPAQUE, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  %196 = zext i1 %195 to i32
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 8
  store i32 %196, i32* %198, align 8
  br label %199

199:                                              ; preds = %190, %185
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %201 = load i32, i32* @XAT_AV_MODIFIED, align 4
  %202 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %199
  %205 = load i32*, i32** %6, align 8
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @XAT0_AV_MODIFIED, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i32
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 9
  store i32 %210, i32* %212, align 4
  br label %213

213:                                              ; preds = %204, %199
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %215 = load i32, i32* @XAT_AV_QUARANTINED, align 4
  %216 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %214, i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %213
  %219 = load i32*, i32** %6, align 8
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @XAT0_AV_QUARANTINED, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  %224 = zext i1 %223 to i32
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 10
  store i32 %224, i32* %226, align 8
  br label %227

227:                                              ; preds = %218, %213
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %229 = load i32, i32* @XAT_CREATETIME, align 4
  %230 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %228, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %227
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 17
  %235 = load i32*, i32** %7, align 8
  %236 = call i32 @ZFS_TIME_DECODE(i32* %234, i32* %235)
  br label %237

237:                                              ; preds = %232, %227
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %239 = load i32, i32* @XAT_AV_SCANSTAMP, align 4
  %240 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %256

242:                                              ; preds = %237
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %244 = load i32, i32* @XAT_PROJID, align 4
  %245 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %243, i32 %244)
  %246 = icmp ne i64 %245, 0
  %247 = xor i1 %246, true
  %248 = zext i1 %247 to i32
  %249 = call i32 @ASSERT(i32 %248)
  %250 = load i8*, i8** %9, align 8
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 16
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* @AV_SCANSTAMP_SZ, align 4
  %255 = call i32 @bcopy(i8* %250, i32* %253, i32 %254)
  br label %267

256:                                              ; preds = %237
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %258 = load i32, i32* @XAT_PROJID, align 4
  %259 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %257, i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %256
  %262 = load i8*, i8** %9, align 8
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 15
  %265 = call i32 @bcopy(i8* %262, i32* %264, i32 4)
  br label %266

266:                                              ; preds = %261, %256
  br label %267

267:                                              ; preds = %266, %242
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %269 = load i32, i32* @XAT_REPARSE, align 4
  %270 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %268, i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %281

272:                                              ; preds = %267
  %273 = load i32*, i32** %6, align 8
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @XAT0_REPARSE, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  %278 = zext i1 %277 to i32
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 11
  store i32 %278, i32* %280, align 4
  br label %281

281:                                              ; preds = %272, %267
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %283 = load i32, i32* @XAT_OFFLINE, align 4
  %284 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %282, i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %295

286:                                              ; preds = %281
  %287 = load i32*, i32** %6, align 8
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @XAT0_OFFLINE, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  %292 = zext i1 %291 to i32
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 12
  store i32 %292, i32* %294, align 8
  br label %295

295:                                              ; preds = %286, %281
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %297 = load i32, i32* @XAT_SPARSE, align 4
  %298 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %296, i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %309

300:                                              ; preds = %295
  %301 = load i32*, i32** %6, align 8
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @XAT0_SPARSE, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  %306 = zext i1 %305 to i32
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 13
  store i32 %306, i32* %308, align 4
  br label %309

309:                                              ; preds = %300, %295
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %311 = load i32, i32* @XAT_PROJINHERIT, align 4
  %312 = call i64 @XVA_ISSET_REQ(%struct.TYPE_11__* %310, i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %323

314:                                              ; preds = %309
  %315 = load i32*, i32** %6, align 8
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @XAT0_PROJINHERIT, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  %320 = zext i1 %319 to i32
  %321 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 14
  store i32 %320, i32* %322, align 8
  br label %323

323:                                              ; preds = %20, %314, %309
  ret void
}

declare dso_local %struct.TYPE_12__* @xva_getxoptattr(%struct.TYPE_11__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @XVA_ISSET_REQ(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ZFS_TIME_DECODE(i32*, i32*) #1

declare dso_local i32 @bcopy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
