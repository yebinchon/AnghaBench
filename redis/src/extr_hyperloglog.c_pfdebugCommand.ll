; ModuleID = '/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_pfdebugCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_pfdebugCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_26__**, i32 }
%struct.TYPE_26__ = type { i8* }
%struct.hllhdr = type { i64, i32 }
%struct.TYPE_22__ = type { %struct.hllhdr* }

@.str = private unnamed_addr constant [33 x i8] c"The specified key does not exist\00", align 1
@C_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"getreg\00", align 1
@HLL_SPARSE = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i64 0, align 8
@invalid_hll_err = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@HLL_REGISTERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"HLL encoding is not sparse\00", align 1
@HLL_HDR_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"z:%d \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Z:%d \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"v:%d,%d \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"dense\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"sparse\00", align 1
@__const.pfdebugCommand.encodingstr = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str.11 = private unnamed_addr constant [8 x i8] c"todense\00", align 1
@shared = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"Unknown PFDEBUG subcommand '%s'\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Wrong number of arguments for the '%s' subcommand\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfdebugCommand(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hllhdr*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hllhdr, align 8
  %8 = alloca %struct.hllhdr*, align 8
  %9 = alloca %struct.hllhdr*, align 8
  %10 = alloca %struct.hllhdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i8*], align 16
  %14 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %17, i64 1
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %3, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %27, i64 2
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %30 = call %struct.TYPE_22__* @lookupKeyWrite(i32 %24, %struct.TYPE_26__* %29)
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %5, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %32 = icmp eq %struct.TYPE_22__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %35 = call i32 @addReplyError(%struct.TYPE_23__* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %275

36:                                               ; preds = %1
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %39 = call i64 @isHLLObjectOrReply(%struct.TYPE_23__* %37, %struct.TYPE_22__* %38)
  %40 = load i64, i64* @C_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %275

43:                                               ; preds = %36
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %49, i64 2
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %50, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %53 = call %struct.TYPE_22__* @dbUnshareStringValue(i32 %46, %struct.TYPE_26__* %51, %struct.TYPE_22__* %52)
  store %struct.TYPE_22__* %53, %struct.TYPE_22__** %5, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load %struct.hllhdr*, %struct.hllhdr** %55, align 8
  store %struct.hllhdr* %56, %struct.hllhdr** %4, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @strcasecmp(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %118, label %60

60:                                               ; preds = %43
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 3
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %271

66:                                               ; preds = %60
  %67 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %68 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @HLL_SPARSE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %74 = call i64 @hllSparseToDense(%struct.TYPE_22__* %73)
  %75 = load i64, i64* @C_ERR, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %79 = load i32, i32* @invalid_hll_err, align 4
  %80 = call i32 @sdsnew(i32 %79)
  %81 = call i32 @addReplySds(%struct.TYPE_23__* %78, i32 %80)
  br label %275

82:                                               ; preds = %72
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0), align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0), align 4
  br label %85

85:                                               ; preds = %82, %66
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load %struct.hllhdr*, %struct.hllhdr** %87, align 8
  store %struct.hllhdr* %88, %struct.hllhdr** %4, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %90 = load i32, i32* @HLL_REGISTERS, align 4
  %91 = call i32 @addReplyArrayLen(%struct.TYPE_23__* %89, i32 %90)
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %114, %85
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @HLL_REGISTERS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %98 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = bitcast %struct.hllhdr* %7 to { i64, i32 }*
  %102 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %101, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @HLL_DENSE_GET_REGISTER(i64 %103, i32 %105, i32 %99, i32 %100)
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %108 = bitcast %struct.hllhdr* %7 to { i64, i32 }*
  %109 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %108, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @addReplyLongLong(%struct.TYPE_23__* %107, i64 %110, i32 %112)
  br label %114

114:                                              ; preds = %96
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %92

117:                                              ; preds = %92
  br label %270

118:                                              ; preds = %43
  %119 = load i8*, i8** %3, align 8
  %120 = call i32 @strcasecmp(i8* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %204, label %122

122:                                              ; preds = %118
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 3
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %271

128:                                              ; preds = %122
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load %struct.hllhdr*, %struct.hllhdr** %130, align 8
  store %struct.hllhdr* %131, %struct.hllhdr** %8, align 8
  %132 = load %struct.hllhdr*, %struct.hllhdr** %8, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load %struct.hllhdr*, %struct.hllhdr** %134, align 8
  %136 = call i32 @sdslen(%struct.hllhdr* %135)
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %132, i64 %137
  store %struct.hllhdr* %138, %struct.hllhdr** %9, align 8
  %139 = call %struct.hllhdr* (...) @sdsempty()
  store %struct.hllhdr* %139, %struct.hllhdr** %10, align 8
  %140 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %141 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @HLL_SPARSE, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %128
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %147 = call i32 @addReplyError(%struct.TYPE_23__* %146, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %275

148:                                              ; preds = %128
  %149 = load i32, i32* @HLL_HDR_SIZE, align 4
  %150 = load %struct.hllhdr*, %struct.hllhdr** %8, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %150, i64 %151
  store %struct.hllhdr* %152, %struct.hllhdr** %8, align 8
  br label %153

153:                                              ; preds = %193, %148
  %154 = load %struct.hllhdr*, %struct.hllhdr** %8, align 8
  %155 = load %struct.hllhdr*, %struct.hllhdr** %9, align 8
  %156 = icmp ult %struct.hllhdr* %154, %155
  br i1 %156, label %157, label %194

157:                                              ; preds = %153
  %158 = load %struct.hllhdr*, %struct.hllhdr** %8, align 8
  %159 = call i64 @HLL_SPARSE_IS_ZERO(%struct.hllhdr* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %157
  %162 = load %struct.hllhdr*, %struct.hllhdr** %8, align 8
  %163 = call i32 @HLL_SPARSE_ZERO_LEN(%struct.hllhdr* %162)
  store i32 %163, i32* %11, align 4
  %164 = load %struct.hllhdr*, %struct.hllhdr** %8, align 8
  %165 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %164, i32 1
  store %struct.hllhdr* %165, %struct.hllhdr** %8, align 8
  %166 = load %struct.hllhdr*, %struct.hllhdr** %10, align 8
  %167 = load i32, i32* %11, align 4
  %168 = call %struct.hllhdr* (%struct.hllhdr*, i8*, i32, ...) @sdscatprintf(%struct.hllhdr* %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %167)
  store %struct.hllhdr* %168, %struct.hllhdr** %10, align 8
  br label %193

169:                                              ; preds = %157
  %170 = load %struct.hllhdr*, %struct.hllhdr** %8, align 8
  %171 = call i64 @HLL_SPARSE_IS_XZERO(%struct.hllhdr* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %169
  %174 = load %struct.hllhdr*, %struct.hllhdr** %8, align 8
  %175 = call i32 @HLL_SPARSE_XZERO_LEN(%struct.hllhdr* %174)
  store i32 %175, i32* %11, align 4
  %176 = load %struct.hllhdr*, %struct.hllhdr** %8, align 8
  %177 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %176, i64 2
  store %struct.hllhdr* %177, %struct.hllhdr** %8, align 8
  %178 = load %struct.hllhdr*, %struct.hllhdr** %10, align 8
  %179 = load i32, i32* %11, align 4
  %180 = call %struct.hllhdr* (%struct.hllhdr*, i8*, i32, ...) @sdscatprintf(%struct.hllhdr* %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %179)
  store %struct.hllhdr* %180, %struct.hllhdr** %10, align 8
  br label %192

181:                                              ; preds = %169
  %182 = load %struct.hllhdr*, %struct.hllhdr** %8, align 8
  %183 = call i32 @HLL_SPARSE_VAL_LEN(%struct.hllhdr* %182)
  store i32 %183, i32* %11, align 4
  %184 = load %struct.hllhdr*, %struct.hllhdr** %8, align 8
  %185 = call i32 @HLL_SPARSE_VAL_VALUE(%struct.hllhdr* %184)
  store i32 %185, i32* %12, align 4
  %186 = load %struct.hllhdr*, %struct.hllhdr** %8, align 8
  %187 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %186, i32 1
  store %struct.hllhdr* %187, %struct.hllhdr** %8, align 8
  %188 = load %struct.hllhdr*, %struct.hllhdr** %10, align 8
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %11, align 4
  %191 = call %struct.hllhdr* (%struct.hllhdr*, i8*, i32, ...) @sdscatprintf(%struct.hllhdr* %188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %189, i32 %190)
  store %struct.hllhdr* %191, %struct.hllhdr** %10, align 8
  br label %192

192:                                              ; preds = %181, %173
  br label %193

193:                                              ; preds = %192, %161
  br label %153

194:                                              ; preds = %153
  %195 = load %struct.hllhdr*, %struct.hllhdr** %10, align 8
  %196 = call %struct.hllhdr* @sdstrim(%struct.hllhdr* %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store %struct.hllhdr* %196, %struct.hllhdr** %10, align 8
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %198 = load %struct.hllhdr*, %struct.hllhdr** %10, align 8
  %199 = load %struct.hllhdr*, %struct.hllhdr** %10, align 8
  %200 = call i32 @sdslen(%struct.hllhdr* %199)
  %201 = call i32 @addReplyBulkCBuffer(%struct.TYPE_23__* %197, %struct.hllhdr* %198, i32 %200)
  %202 = load %struct.hllhdr*, %struct.hllhdr** %10, align 8
  %203 = call i32 @sdsfree(%struct.hllhdr* %202)
  br label %269

204:                                              ; preds = %118
  %205 = load i8*, i8** %3, align 8
  %206 = call i32 @strcasecmp(i8* %205, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %223, label %208

208:                                              ; preds = %204
  %209 = bitcast [2 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %209, i8* align 16 bitcast ([2 x i8*]* @__const.pfdebugCommand.encodingstr to i8*), i64 16, i1 false)
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 3
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  br label %271

215:                                              ; preds = %208
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %217 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %218 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 %219
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 @addReplyStatus(%struct.TYPE_23__* %216, i8* %221)
  br label %268

223:                                              ; preds = %204
  %224 = load i8*, i8** %3, align 8
  %225 = call i32 @strcasecmp(i8* %224, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %263, label %227

227:                                              ; preds = %223
  store i32 0, i32* %14, align 4
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 3
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  br label %271

233:                                              ; preds = %227
  %234 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %235 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @HLL_SPARSE, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %252

239:                                              ; preds = %233
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %241 = call i64 @hllSparseToDense(%struct.TYPE_22__* %240)
  %242 = load i64, i64* @C_ERR, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %246 = load i32, i32* @invalid_hll_err, align 4
  %247 = call i32 @sdsnew(i32 %246)
  %248 = call i32 @addReplySds(%struct.TYPE_23__* %245, i32 %247)
  br label %275

249:                                              ; preds = %239
  store i32 1, i32* %14, align 4
  %250 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0), align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0), align 4
  br label %252

252:                                              ; preds = %249, %233
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %254 = load i32, i32* %14, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @shared, i32 0, i32 1), align 4
  br label %260

258:                                              ; preds = %252
  %259 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @shared, i32 0, i32 0), align 4
  br label %260

260:                                              ; preds = %258, %256
  %261 = phi i32 [ %257, %256 ], [ %259, %258 ]
  %262 = call i32 @addReply(%struct.TYPE_23__* %253, i32 %261)
  br label %267

263:                                              ; preds = %223
  %264 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %265 = load i8*, i8** %3, align 8
  %266 = call i32 @addReplyErrorFormat(%struct.TYPE_23__* %264, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i8* %265)
  br label %267

267:                                              ; preds = %263, %260
  br label %268

268:                                              ; preds = %267, %215
  br label %269

269:                                              ; preds = %268, %194
  br label %270

270:                                              ; preds = %269, %117
  br label %275

271:                                              ; preds = %232, %214, %127, %65
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %273 = load i8*, i8** %3, align 8
  %274 = call i32 @addReplyErrorFormat(%struct.TYPE_23__* %272, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i8* %273)
  br label %275

275:                                              ; preds = %271, %270, %244, %145, %77, %42, %33
  ret void
}

declare dso_local %struct.TYPE_22__* @lookupKeyWrite(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_23__*, i8*) #1

declare dso_local i64 @isHLLObjectOrReply(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @dbUnshareStringValue(i32, %struct.TYPE_26__*, %struct.TYPE_22__*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @hllSparseToDense(%struct.TYPE_22__*) #1

declare dso_local i32 @addReplySds(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @sdsnew(i32) #1

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @HLL_DENSE_GET_REGISTER(i64, i32, i32, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_23__*, i64, i32) #1

declare dso_local i32 @sdslen(%struct.hllhdr*) #1

declare dso_local %struct.hllhdr* @sdsempty(...) #1

declare dso_local i64 @HLL_SPARSE_IS_ZERO(%struct.hllhdr*) #1

declare dso_local i32 @HLL_SPARSE_ZERO_LEN(%struct.hllhdr*) #1

declare dso_local %struct.hllhdr* @sdscatprintf(%struct.hllhdr*, i8*, i32, ...) #1

declare dso_local i64 @HLL_SPARSE_IS_XZERO(%struct.hllhdr*) #1

declare dso_local i32 @HLL_SPARSE_XZERO_LEN(%struct.hllhdr*) #1

declare dso_local i32 @HLL_SPARSE_VAL_LEN(%struct.hllhdr*) #1

declare dso_local i32 @HLL_SPARSE_VAL_VALUE(%struct.hllhdr*) #1

declare dso_local %struct.hllhdr* @sdstrim(%struct.hllhdr*, i8*) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_23__*, %struct.hllhdr*, i32) #1

declare dso_local i32 @sdsfree(%struct.hllhdr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @addReplyStatus(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @addReply(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_23__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
