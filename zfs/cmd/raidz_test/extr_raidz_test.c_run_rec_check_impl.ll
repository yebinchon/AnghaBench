; ModuleID = '/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_test.c_run_rec_check_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/raidz_test/extr_raidz_test.c_run_rec_check_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@run_rec_check_impl.rec_tgts = internal constant [7 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 0, i32 2, i32 3], [3 x i32] [i32 0, i32 1, i32 3], [3 x i32] [i32 2, i32 3, i32 4], [3 x i32] [i32 1, i32 3, i32 4], [3 x i32] [i32 0, i32 3, i32 4], [3 x i32] [i32 3, i32 4, i32 5]], align 16
@RAIDZ_REC_PQ = common dso_local global i32 0, align 4
@rto_opts = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@D_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"[%d] \00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"\0AREC D[%d]... [FAIL]\0A\00", align 1
@RAIDZ_REC_PQR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"[%d %d] \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\0AREC D[%d %d]... [FAIL]\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"[%d %d %d]\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"\0AREC D[%d %d %d]... [FAIL]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i32)* @run_rec_check_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_rec_check_impl(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [7 x [3 x i32]], [7 x [3 x i32]]* @run_rec_check_impl.rec_tgts, i64 0, i64 %15
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %18 = call i32 @memcpy(i32* %13, i32* %17, i32 12)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @RAIDZ_REC_PQ, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %81

22:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %77, %22
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %80

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = call i32 @raidz_parity(%struct.TYPE_12__* %34)
  %36 = sub nsw i32 %33, %35
  %37 = icmp sge i32 %30, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %77

39:                                               ; preds = %29
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @rto_opts, i32 0, i32 0), align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %4, align 4
  br label %295

44:                                               ; preds = %39
  %45 = load i32, i32* @D_DEBUG, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i32, i8*, i32, ...) @LOG(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = call i32 @raidz_parity(%struct.TYPE_12__* %49)
  %51 = add nsw i32 %48, %50
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = call i32 @corrupt_colums(%struct.TYPE_12__* %53, i32* %55, i32 1)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %44
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %64 = call i32 @vdev_raidz_reconstruct(%struct.TYPE_12__* %62, i32* %63, i32 3)
  br label %65

65:                                               ; preds = %61, %44
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = call i64 @cmp_data(%struct.TYPE_11__* %66, %struct.TYPE_12__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* @D_DEBUG, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 (i32, i8*, i32, ...) @LOG(i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  br label %77

77:                                               ; preds = %76, %38
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %23

80:                                               ; preds = %23
  br label %293

81:                                               ; preds = %3
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @RAIDZ_REC_PQR, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %174

85:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %170, %85
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %173

92:                                               ; preds = %86
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = call i32 @raidz_parity(%struct.TYPE_12__* %97)
  %99 = sub nsw i32 %96, %98
  %100 = icmp sge i32 %93, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %170

102:                                              ; preds = %92
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %166, %102
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %169

111:                                              ; preds = %105
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %117 = call i32 @raidz_parity(%struct.TYPE_12__* %116)
  %118 = sub nsw i32 %115, %117
  %119 = icmp sge i32 %112, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %166

121:                                              ; preds = %111
  %122 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @rto_opts, i32 0, i32 0), align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %4, align 4
  br label %295

126:                                              ; preds = %121
  %127 = load i32, i32* @D_DEBUG, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 (i32, i8*, i32, ...) @LOG(i32 %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %128, i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %133 = call i32 @raidz_parity(%struct.TYPE_12__* %132)
  %134 = add nsw i32 %131, %133
  %135 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %138 = call i32 @raidz_parity(%struct.TYPE_12__* %137)
  %139 = add nsw i32 %136, %138
  %140 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %139, i32* %140, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %142 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = call i32 @corrupt_colums(%struct.TYPE_12__* %141, i32* %143, i32 2)
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %126
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %151 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %152 = call i32 @vdev_raidz_reconstruct(%struct.TYPE_12__* %150, i32* %151, i32 3)
  br label %153

153:                                              ; preds = %149, %126
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %156 = call i64 @cmp_data(%struct.TYPE_11__* %154, %struct.TYPE_12__* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* @D_DEBUG, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 (i32, i8*, i32, ...) @LOG(i32 %161, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %158, %153
  br label %166

166:                                              ; preds = %165, %120
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %105

169:                                              ; preds = %105
  br label %170

170:                                              ; preds = %169, %101
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %86

173:                                              ; preds = %86
  br label %292

174:                                              ; preds = %81
  store i32 0, i32* %8, align 4
  br label %175

175:                                              ; preds = %288, %174
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %291

181:                                              ; preds = %175
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %187 = call i32 @raidz_parity(%struct.TYPE_12__* %186)
  %188 = sub nsw i32 %185, %187
  %189 = icmp sge i32 %182, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  br label %288

191:                                              ; preds = %181
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %9, align 4
  br label %194

194:                                              ; preds = %284, %191
  %195 = load i32, i32* %9, align 4
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %287

200:                                              ; preds = %194
  %201 = load i32, i32* %9, align 4
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %206 = call i32 @raidz_parity(%struct.TYPE_12__* %205)
  %207 = sub nsw i32 %204, %206
  %208 = icmp sge i32 %201, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %200
  br label %284

210:                                              ; preds = %200
  %211 = load i32, i32* %9, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %10, align 4
  br label %213

213:                                              ; preds = %280, %210
  %214 = load i32, i32* %10, align 4
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp slt i32 %214, %217
  br i1 %218, label %219, label %283

219:                                              ; preds = %213
  %220 = load i32, i32* %10, align 4
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %225 = call i32 @raidz_parity(%struct.TYPE_12__* %224)
  %226 = sub nsw i32 %223, %225
  %227 = icmp sge i32 %220, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %219
  br label %280

229:                                              ; preds = %219
  %230 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @rto_opts, i32 0, i32 0), align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %229
  %233 = load i32, i32* %12, align 4
  store i32 %233, i32* %4, align 4
  br label %295

234:                                              ; preds = %229
  %235 = load i32, i32* @D_DEBUG, align 4
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %10, align 4
  %239 = call i32 (i32, i8*, i32, ...) @LOG(i32 %235, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %236, i32 %237, i32 %238)
  %240 = load i32, i32* %8, align 4
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %242 = call i32 @raidz_parity(%struct.TYPE_12__* %241)
  %243 = add nsw i32 %240, %242
  %244 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %243, i32* %244, align 4
  %245 = load i32, i32* %9, align 4
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %247 = call i32 @raidz_parity(%struct.TYPE_12__* %246)
  %248 = add nsw i32 %245, %247
  %249 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %248, i32* %249, align 4
  %250 = load i32, i32* %10, align 4
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %252 = call i32 @raidz_parity(%struct.TYPE_12__* %251)
  %253 = add nsw i32 %250, %252
  %254 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %253, i32* %254, align 4
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %256 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %257 = call i32 @corrupt_colums(%struct.TYPE_12__* %255, i32* %256, i32 3)
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %266, label %262

262:                                              ; preds = %234
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %264 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %265 = call i32 @vdev_raidz_reconstruct(%struct.TYPE_12__* %263, i32* %264, i32 3)
  br label %266

266:                                              ; preds = %262, %234
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %269 = call i64 @cmp_data(%struct.TYPE_11__* %267, %struct.TYPE_12__* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %266
  %272 = load i32, i32* %12, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %12, align 4
  %274 = load i32, i32* @D_DEBUG, align 4
  %275 = load i32, i32* %8, align 4
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* %10, align 4
  %278 = call i32 (i32, i8*, i32, ...) @LOG(i32 %274, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %275, i32 %276, i32 %277)
  br label %279

279:                                              ; preds = %271, %266
  br label %280

280:                                              ; preds = %279, %228
  %281 = load i32, i32* %10, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %10, align 4
  br label %213

283:                                              ; preds = %213
  br label %284

284:                                              ; preds = %283, %209
  %285 = load i32, i32* %9, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %9, align 4
  br label %194

287:                                              ; preds = %194
  br label %288

288:                                              ; preds = %287, %190
  %289 = load i32, i32* %8, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %8, align 4
  br label %175

291:                                              ; preds = %175
  br label %292

292:                                              ; preds = %291, %173
  br label %293

293:                                              ; preds = %292, %80
  %294 = load i32, i32* %12, align 4
  store i32 %294, i32* %4, align 4
  br label %295

295:                                              ; preds = %293, %232, %124, %42
  %296 = load i32, i32* %4, align 4
  ret i32 %296
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @raidz_parity(%struct.TYPE_12__*) #1

declare dso_local i32 @LOG(i32, i8*, i32, ...) #1

declare dso_local i32 @corrupt_colums(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @vdev_raidz_reconstruct(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @cmp_data(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
