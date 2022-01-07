; ModuleID = '/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_pfcountCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_pfcountCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32*, i32 }
%struct.TYPE_16__ = type { %struct.hllhdr* }
%struct.hllhdr = type { i32*, i32 }

@HLL_HDR_SIZE = common dso_local global i32 0, align 4
@HLL_REGISTERS = common dso_local global i32 0, align 4
@HLL_RAW = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i64 0, align 8
@invalid_hll_err = common dso_local global i32 0, align 4
@shared = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@server = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfcountCommand(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.hllhdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %84

17:                                               ; preds = %1
  %18 = load i32, i32* @HLL_HDR_SIZE, align 4
  %19 = load i32, i32* @HLL_REGISTERS, align 4
  %20 = add nsw i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = mul nuw i64 4, %21
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(i32* %23, i32 0, i32 %25)
  %27 = bitcast i32* %23 to %struct.hllhdr*
  store %struct.hllhdr* %27, %struct.hllhdr** %4, align 8
  %28 = load i32, i32* @HLL_RAW, align 4
  %29 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %30 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @HLL_HDR_SIZE, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %23, i64 %32
  store i32* %33, i32** %8, align 8
  store i32 1, i32* %9, align 4
  br label %34

34:                                               ; preds = %74, %17
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %34
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_16__* @lookupKeyRead(i32 %43, i32 %50)
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %10, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %53 = icmp eq %struct.TYPE_16__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %74

55:                                               ; preds = %40
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %58 = call i64 @isHLLObjectOrReply(%struct.TYPE_17__* %56, %struct.TYPE_16__* %57)
  %59 = load i64, i64* @C_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 1, i32* %11, align 4
  br label %82

62:                                               ; preds = %55
  %63 = load i32*, i32** %8, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %65 = call i64 @hllMerge(i32* %63, %struct.TYPE_16__* %64)
  %66 = load i64, i64* @C_ERR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %70 = load i32, i32* @invalid_hll_err, align 4
  %71 = call i32 @sdsnew(i32 %70)
  %72 = call i32 @addReplySds(%struct.TYPE_17__* %69, i32 %71)
  store i32 1, i32* %11, align 4
  br label %82

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %54
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %34

77:                                               ; preds = %34
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %79 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %80 = call i32 @hllCount(%struct.hllhdr* %79, i32* null)
  %81 = call i32 @addReplyLongLong(%struct.TYPE_17__* %78, i32 %80)
  store i32 1, i32* %11, align 4
  br label %82

82:                                               ; preds = %77, %68, %61
  %83 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %83)
  br label %267

84:                                               ; preds = %1
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.TYPE_16__* @lookupKeyWrite(i32 %87, i32 %92)
  store %struct.TYPE_16__* %93, %struct.TYPE_16__** %3, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %95 = icmp eq %struct.TYPE_16__* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 0), align 4
  %99 = call i32 @addReply(%struct.TYPE_17__* %97, i32 %98)
  br label %267

100:                                              ; preds = %84
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %103 = call i64 @isHLLObjectOrReply(%struct.TYPE_17__* %101, %struct.TYPE_16__* %102)
  %104 = load i64, i64* @C_OK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %267

107:                                              ; preds = %100
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %117 = call %struct.TYPE_16__* @dbUnshareStringValue(i32 %110, i32 %115, %struct.TYPE_16__* %116)
  store %struct.TYPE_16__* %117, %struct.TYPE_16__** %3, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load %struct.hllhdr*, %struct.hllhdr** %119, align 8
  store %struct.hllhdr* %120, %struct.hllhdr** %4, align 8
  %121 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %122 = call i64 @HLL_VALID_CACHE(%struct.hllhdr* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %186

124:                                              ; preds = %107
  %125 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %126 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %5, align 4
  %130 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %131 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 8
  %136 = load i32, i32* %5, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %5, align 4
  %138 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %139 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 16
  %144 = load i32, i32* %5, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %5, align 4
  %146 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %147 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %150, 24
  %152 = load i32, i32* %5, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %5, align 4
  %154 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %155 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 4
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 32
  %160 = load i32, i32* %5, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %5, align 4
  %162 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %163 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 5
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 40
  %168 = load i32, i32* %5, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %5, align 4
  %170 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %171 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 6
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %174, 48
  %176 = load i32, i32* %5, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %5, align 4
  %178 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %179 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 7
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, 56
  %184 = load i32, i32* %5, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %5, align 4
  br label %263

186:                                              ; preds = %107
  store i32 0, i32* %12, align 4
  %187 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %188 = call i32 @hllCount(%struct.hllhdr* %187, i32* %12)
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %193 = load i32, i32* @invalid_hll_err, align 4
  %194 = call i32 @sdsnew(i32 %193)
  %195 = call i32 @addReplySds(%struct.TYPE_17__* %192, i32 %194)
  br label %267

196:                                              ; preds = %186
  %197 = load i32, i32* %5, align 4
  %198 = and i32 %197, 255
  %199 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %200 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  store i32 %198, i32* %202, align 4
  %203 = load i32, i32* %5, align 4
  %204 = ashr i32 %203, 8
  %205 = and i32 %204, 255
  %206 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %207 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  store i32 %205, i32* %209, align 4
  %210 = load i32, i32* %5, align 4
  %211 = ashr i32 %210, 16
  %212 = and i32 %211, 255
  %213 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %214 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 2
  store i32 %212, i32* %216, align 4
  %217 = load i32, i32* %5, align 4
  %218 = ashr i32 %217, 24
  %219 = and i32 %218, 255
  %220 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %221 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 3
  store i32 %219, i32* %223, align 4
  %224 = load i32, i32* %5, align 4
  %225 = ashr i32 %224, 32
  %226 = and i32 %225, 255
  %227 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %228 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 4
  store i32 %226, i32* %230, align 4
  %231 = load i32, i32* %5, align 4
  %232 = ashr i32 %231, 40
  %233 = and i32 %232, 255
  %234 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %235 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 5
  store i32 %233, i32* %237, align 4
  %238 = load i32, i32* %5, align 4
  %239 = ashr i32 %238, 48
  %240 = and i32 %239, 255
  %241 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %242 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 6
  store i32 %240, i32* %244, align 4
  %245 = load i32, i32* %5, align 4
  %246 = ashr i32 %245, 56
  %247 = and i32 %246, 255
  %248 = load %struct.hllhdr*, %struct.hllhdr** %4, align 8
  %249 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 7
  store i32 %247, i32* %251, align 4
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 1
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @signalModifiedKey(i32 %254, i32 %259)
  %261 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 0), align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 0), align 4
  br label %263

263:                                              ; preds = %196, %124
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %265 = load i32, i32* %5, align 4
  %266 = call i32 @addReplyLongLong(%struct.TYPE_17__* %264, i32 %265)
  br label %267

267:                                              ; preds = %82, %106, %191, %263, %96
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local %struct.TYPE_16__* @lookupKeyRead(i32, i32) #2

declare dso_local i64 @isHLLObjectOrReply(%struct.TYPE_17__*, %struct.TYPE_16__*) #2

declare dso_local i64 @hllMerge(i32*, %struct.TYPE_16__*) #2

declare dso_local i32 @addReplySds(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @sdsnew(i32) #2

declare dso_local i32 @addReplyLongLong(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @hllCount(%struct.hllhdr*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local %struct.TYPE_16__* @lookupKeyWrite(i32, i32) #2

declare dso_local i32 @addReply(%struct.TYPE_17__*, i32) #2

declare dso_local %struct.TYPE_16__* @dbUnshareStringValue(i32, i32, %struct.TYPE_16__*) #2

declare dso_local i64 @HLL_VALID_CACHE(%struct.hllhdr*) #2

declare dso_local i32 @signalModifiedKey(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
