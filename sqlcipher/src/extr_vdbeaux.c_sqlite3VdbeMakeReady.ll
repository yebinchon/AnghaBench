; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_sqlite3VdbeMakeReady.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_sqlite3VdbeMakeReady.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32, i8*, i8*, i8*, i8*, i64, i64, i64, i8*, i64*, i64, i64, i64, %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ReusableSpace = type { i64, i32, i64* }

@VDBE_MAGIC_INIT = common dso_local global i64 0, align 8
@MEM_Null = common dso_local global i32 0, align 4
@MEM_Undefined = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3VdbeMakeReady(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ReusableSpace, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VDBE_MAGIC_INIT, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 17
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = icmp eq %struct.TYPE_12__* %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 16
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %5, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %6, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %8, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %2
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %69, %66, %2
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = mul i64 4, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @ROUND8(i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 15
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i64*
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %11, i32 0, i32 2
  store i64* %86, i64** %87, align 8
  %88 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %11, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = call i32 @EIGHT_BYTE_ALIGNMENT(i64* %89)
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 %94, %96
  %98 = call i64 @ROUNDDOWN8(i64 %97)
  %99 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %11, i32 0, i32 0
  store i64 %98, i64* %99, align 8
  %100 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %11, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp uge i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %11, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %11, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = call i32 @EIGHT_BYTE_ALIGNMENT(i64* %109)
  %111 = call i32 @assert(i32 %110)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = call i32 @resolveP2Values(%struct.TYPE_11__* %112, i32* %9)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 7
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %72
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br label %123

123:                                              ; preds = %118, %72
  %124 = phi i1 [ false, %72 ], [ %122, %118 ]
  %125 = zext i1 %124 to i32
  %126 = sext i32 %125 to i64
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 14
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %123
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %134, 10
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 10, i32* %7, align 4
  br label %137

137:                                              ; preds = %136, %133, %123
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 13
  store i64 0, i64* %139, align 8
  %140 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %11, i32 0, i32 1
  store i32 0, i32* %140, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = call i8* @allocSpace(%struct.ReusableSpace* %11, i8* null, i32 %144)
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 6
  store i8* %145, i8** %147, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 4
  %151 = trunc i64 %150 to i32
  %152 = call i8* @allocSpace(%struct.ReusableSpace* %11, i8* null, i32 %151)
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 7
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = mul i64 %156, 8
  %158 = trunc i64 %157 to i32
  %159 = call i8* @allocSpace(%struct.ReusableSpace* %11, i8* null, i32 %158)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 11
  store i8* %159, i8** %161, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = mul i64 %163, 8
  %165 = trunc i64 %164 to i32
  %166 = call i8* @allocSpace(%struct.ReusableSpace* %11, i8* null, i32 %165)
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 5
  store i8* %166, i8** %168, align 8
  %169 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %11, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %230

172:                                              ; preds = %137
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %174 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %11, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i64* @sqlite3DbMallocRawNN(%struct.TYPE_10__* %173, i32 %175)
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 12
  store i64* %176, i64** %178, align 8
  %179 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %11, i32 0, i32 2
  store i64* %176, i64** %179, align 8
  %180 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %11, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.ReusableSpace, %struct.ReusableSpace* %11, i32 0, i32 0
  store i64 %182, i64* %183, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %229, label %188

188:                                              ; preds = %172
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 6
  %191 = load i8*, i8** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = mul i64 %193, 4
  %195 = trunc i64 %194 to i32
  %196 = call i8* @allocSpace(%struct.ReusableSpace* %11, i8* %191, i32 %195)
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 6
  store i8* %196, i8** %198, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 7
  %201 = load i8*, i8** %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = mul i64 %203, 4
  %205 = trunc i64 %204 to i32
  %206 = call i8* @allocSpace(%struct.ReusableSpace* %11, i8* %201, i32 %205)
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 7
  store i8* %206, i8** %208, align 8
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 11
  %211 = load i8*, i8** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = mul i64 %213, 8
  %215 = trunc i64 %214 to i32
  %216 = call i8* @allocSpace(%struct.ReusableSpace* %11, i8* %211, i32 %215)
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 11
  store i8* %216, i8** %218, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 5
  %221 = load i8*, i8** %220, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = mul i64 %223, 8
  %225 = trunc i64 %224 to i32
  %226 = call i8* @allocSpace(%struct.ReusableSpace* %11, i8* %221, i32 %225)
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 5
  store i8* %226, i8** %228, align 8
  br label %229

229:                                              ; preds = %188, %172
  br label %230

230:                                              ; preds = %229, %137
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 10
  store i64 %233, i64* %235, align 8
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 5
  store i64 0, i64* %237, align 8
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 9
  store i64 %240, i64* %242, align 8
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %230
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 8
  store i64 0, i64* %249, align 8
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 2
  store i32 0, i32* %251, align 8
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 3
  store i32 0, i32* %253, align 4
  br label %287

254:                                              ; preds = %230
  %255 = load i32, i32* %8, align 4
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 8
  store i64 %259, i64* %261, align 8
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 7
  %264 = load i8*, i8** %263, align 8
  %265 = load i32, i32* %6, align 4
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %267 = load i32, i32* @MEM_Null, align 4
  %268 = call i32 @initMemArray(i8* %264, i32 %265, %struct.TYPE_10__* %266, i32 %267)
  %269 = load i32, i32* %7, align 4
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 3
  store i32 %269, i32* %271, align 4
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 6
  %274 = load i8*, i8** %273, align 8
  %275 = load i32, i32* %7, align 4
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %277 = load i32, i32* @MEM_Undefined, align 4
  %278 = call i32 @initMemArray(i8* %274, i32 %275, %struct.TYPE_10__* %276, i32 %277)
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 5
  %281 = load i8*, i8** %280, align 8
  %282 = load i32, i32* %8, align 4
  %283 = sext i32 %282 to i64
  %284 = mul i64 %283, 8
  %285 = trunc i64 %284 to i32
  %286 = call i32 @memset(i8* %281, i32 0, i32 %285)
  br label %287

287:                                              ; preds = %254, %247
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %289 = call i32 @sqlite3VdbeRewind(%struct.TYPE_11__* %288)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ROUND8(i32) #1

declare dso_local i32 @EIGHT_BYTE_ALIGNMENT(i64*) #1

declare dso_local i64 @ROUNDDOWN8(i64) #1

declare dso_local i32 @resolveP2Values(%struct.TYPE_11__*, i32*) #1

declare dso_local i8* @allocSpace(%struct.ReusableSpace*, i8*, i32) #1

declare dso_local i64* @sqlite3DbMallocRawNN(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @initMemArray(i8*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeRewind(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
