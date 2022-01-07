; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_ckpt.c_ckptExportSnapshot.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_ckpt.c_ckptExportSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_25__, i32, %struct.TYPE_28__*, i32* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_28__ = type { i64, i32, i32, %struct.TYPE_26__, %struct.TYPE_24__ }
%struct.TYPE_26__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_29__* }
%struct.TYPE_31__ = type { i64, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@CKPT_HDR_SIZE = common dso_local global i32 0, align 4
@LSM_COMPRESSION_EMPTY = common dso_local global i64 0, align 8
@CKPT_HDR_ID_MSW = common dso_local global i32 0, align 4
@CKPT_HDR_ID_LSW = common dso_local global i32 0, align 4
@CKPT_HDR_NCKPT = common dso_local global i32 0, align 4
@CKPT_HDR_CMPID = common dso_local global i32 0, align 4
@CKPT_HDR_NBLOCK = common dso_local global i32 0, align 4
@CKPT_HDR_BLKSZ = common dso_local global i32 0, align 4
@CKPT_HDR_NLEVEL = common dso_local global i32 0, align 4
@CKPT_HDR_PGSZ = common dso_local global i32 0, align 4
@CKPT_HDR_NWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, i32, i32, i32, i8**, i32*)* @ckptExportSnapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ckptExportSnapshot(%struct.TYPE_27__* %0, i32 %1, i32 %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_29__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_31__, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  store i32* %5, i32** %12, align 8
  %24 = load i32, i32* @LSM_OK, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %14, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  store %struct.TYPE_28__* %30, %struct.TYPE_28__** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %31 = call i32 @memset(%struct.TYPE_31__* %21, i32 0, i32 16)
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* @CKPT_HDR_SIZE, align 4
  store i32 %36, i32* %18, align 4
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @ckptExportLog(%struct.TYPE_27__* %37, i32 %38, %struct.TYPE_31__* %21, i32* %18, i32* %13)
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %41 = call i32 @ckptExportAppendlist(%struct.TYPE_27__* %40, %struct.TYPE_31__* %21, i32* %18, i32* %13)
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %43 = call %struct.TYPE_29__* @lsmDbSnapshotLevel(%struct.TYPE_28__* %42)
  store %struct.TYPE_29__* %43, %struct.TYPE_29__** %19, align 8
  br label %44

44:                                               ; preds = %50, %6
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %46 = icmp ne %struct.TYPE_29__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* %16, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %16, align 4
  br label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %52, align 8
  store %struct.TYPE_29__* %53, %struct.TYPE_29__** %19, align 8
  br label %44

54:                                               ; preds = %44
  store i32 0, i32* %17, align 4
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %56 = call %struct.TYPE_29__* @lsmDbSnapshotLevel(%struct.TYPE_28__* %55)
  store %struct.TYPE_29__* %56, %struct.TYPE_29__** %19, align 8
  br label %57

57:                                               ; preds = %66, %54
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %63 = call i32 @ckptExportLevel(%struct.TYPE_29__* %62, %struct.TYPE_31__* %21, i32* %18, i32* %13)
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %68, align 8
  store %struct.TYPE_29__* %69, %struct.TYPE_29__** %19, align 8
  br label %57

70:                                               ; preds = %57
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %18, align 4
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %71, i32 %76, i32* %13)
  store i32 0, i32* %20, align 4
  br label %78

78:                                               ; preds = %110, %70
  %79 = load i32, i32* %20, align 4
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %78
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %18, align 4
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %90, align 8
  %92 = load i32, i32* %20, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %86, i32 %96, i32* %13)
  %98 = load i32, i32* %18, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %18, align 4
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %102, align 8
  %104 = load i32, i32* %20, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %98, i32 %108, i32* %13)
  br label %110

110:                                              ; preds = %85
  %111 = load i32, i32* %20, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %20, align 4
  br label %78

113:                                              ; preds = %78
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp sle i32 %117, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @LSM_OK, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %171

127:                                              ; preds = %113
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %22, align 4
  %132 = load i32, i32* %18, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %22, align 4
  %135 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %132, i32 %134, i32* %13)
  store i32 0, i32* %20, align 4
  br label %136

136:                                              ; preds = %167, %127
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* %22, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %170

140:                                              ; preds = %136
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %143, align 8
  %145 = load i32, i32* %20, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i64 %146
  store %struct.TYPE_30__* %147, %struct.TYPE_30__** %23, align 8
  %148 = load i32, i32* %18, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %18, align 4
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %148, i32 %152, i32* %13)
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %18, align 4
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = ashr i32 %158, 32
  %160 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %154, i32 %159, i32* %13)
  %161 = load i32, i32* %18, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %18, align 4
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %161, i32 %165, i32* %13)
  br label %167

167:                                              ; preds = %140
  %168 = load i32, i32* %20, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %20, align 4
  br label %136

170:                                              ; preds = %136
  br label %171

171:                                              ; preds = %170, %113
  %172 = load i32, i32* %9, align 4
  %173 = icmp sge i32 %172, 0
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %178, %182
  br i1 %183, label %190, label %184

184:                                              ; preds = %171
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @LSM_COMPRESSION_EMPTY, align 8
  %189 = icmp eq i64 %187, %188
  br label %190

190:                                              ; preds = %184, %171
  %191 = phi i1 [ true, %171 ], [ %189, %184 ]
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load i32, i32* @CKPT_HDR_ID_MSW, align 4
  %195 = load i32, i32* %9, align 4
  %196 = ashr i32 %195, 32
  %197 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %194, i32 %196, i32* %13)
  %198 = load i32, i32* @CKPT_HDR_ID_LSW, align 4
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %198, i32 %199, i32* %13)
  %201 = load i32, i32* @CKPT_HDR_NCKPT, align 4
  %202 = load i32, i32* %18, align 4
  %203 = add nsw i32 %202, 2
  %204 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %201, i32 %203, i32* %13)
  %205 = load i32, i32* @CKPT_HDR_CMPID, align 4
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = trunc i64 %209 to i32
  %211 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %205, i32 %210, i32* %13)
  %212 = load i32, i32* @CKPT_HDR_NBLOCK, align 4
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %212, i32 %215, i32* %13)
  %217 = load i32, i32* @CKPT_HDR_BLKSZ, align 4
  %218 = load i32*, i32** %14, align 8
  %219 = call i32 @lsmFsBlockSize(i32* %218)
  %220 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %217, i32 %219, i32* %13)
  %221 = load i32, i32* @CKPT_HDR_NLEVEL, align 4
  %222 = load i32, i32* %16, align 4
  %223 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %221, i32 %222, i32* %13)
  %224 = load i32, i32* @CKPT_HDR_PGSZ, align 4
  %225 = load i32*, i32** %14, align 8
  %226 = call i32 @lsmFsPageSize(i32* %225)
  %227 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %224, i32 %226, i32* %13)
  %228 = load i32, i32* @CKPT_HDR_NWRITE, align 4
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %228, i32 %231, i32* %13)
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %190
  %236 = load i32, i32* %18, align 4
  %237 = call i32 @ckptAddChecksum(%struct.TYPE_31__* %21, i32 %236, i32* %13)
  br label %244

238:                                              ; preds = %190
  %239 = load i32, i32* %18, align 4
  %240 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %239, i32 0, i32* %13)
  %241 = load i32, i32* %18, align 4
  %242 = add nsw i32 %241, 1
  %243 = call i32 @ckptSetValue(%struct.TYPE_31__* %21, i32 %242, i32 0, i32* %13)
  br label %244

244:                                              ; preds = %238, %235
  %245 = load i32, i32* %18, align 4
  %246 = add nsw i32 %245, 2
  store i32 %246, i32* %18, align 4
  %247 = load i32, i32* %18, align 4
  %248 = icmp sle i32 %247, 1024
  %249 = zext i1 %248 to i32
  %250 = call i32 @assert(i32 %249)
  %251 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = inttoptr i64 %252 to i8*
  %254 = load i8**, i8*** %11, align 8
  store i8* %253, i8** %254, align 8
  %255 = load i32*, i32** %12, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %257, label %263

257:                                              ; preds = %244
  %258 = load i32, i32* %18, align 4
  %259 = sext i32 %258 to i64
  %260 = mul i64 4, %259
  %261 = trunc i64 %260 to i32
  %262 = load i32*, i32** %12, align 8
  store i32 %261, i32* %262, align 4
  br label %263

263:                                              ; preds = %257, %244
  %264 = load i32, i32* %13, align 4
  ret i32 %264
}

declare dso_local i32 @memset(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @ckptExportLog(%struct.TYPE_27__*, i32, %struct.TYPE_31__*, i32*, i32*) #1

declare dso_local i32 @ckptExportAppendlist(%struct.TYPE_27__*, %struct.TYPE_31__*, i32*, i32*) #1

declare dso_local %struct.TYPE_29__* @lsmDbSnapshotLevel(%struct.TYPE_28__*) #1

declare dso_local i32 @ckptExportLevel(%struct.TYPE_29__*, %struct.TYPE_31__*, i32*, i32*) #1

declare dso_local i32 @ckptSetValue(%struct.TYPE_31__*, i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lsmFsBlockSize(i32*) #1

declare dso_local i32 @lsmFsPageSize(i32*) #1

declare dso_local i32 @ckptAddChecksum(%struct.TYPE_31__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
