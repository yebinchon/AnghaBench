; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compression.c_row_compressor_flush.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compression.c_row_compressor_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64*, i32*, i64, i64, i64, i64, i32, i8**, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i32*, %struct.TYPE_7__*, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, i32, i8* }
%struct.TYPE_10__ = type { i8* (%struct.TYPE_10__*)* }

@PG_INT32_MAX = common dso_local global i64 0, align 8
@SEQUENCE_NUM_GAP = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"sequence id overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32)* @row_compressor_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @row_compressor_flush(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %196, %3
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %199

21:                                               ; preds = %15
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 9
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i64 %25
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %9, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = icmp eq %struct.TYPE_10__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp eq %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %196

37:                                               ; preds = %31, %21
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %10, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp uge i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @Assert(i32 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %52 = icmp ne %struct.TYPE_10__* %51, null
  br i1 %52, label %53, label %168

53:                                               ; preds = %37
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = icmp eq %struct.TYPE_7__* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @Assert(i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i8* (%struct.TYPE_10__*)*, i8* (%struct.TYPE_10__*)** %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %64 = call i8* %62(%struct.TYPE_10__* %63)
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = icmp eq i8* %65, null
  %67 = zext i1 %66 to i32
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %67, i32* %72, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %53
  %76 = load i8*, i8** %12, align 8
  %77 = call i8* @PointerGetDatum(i8* %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 8
  %80 = load i8**, i8*** %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds i8*, i8** %80, i64 %81
  store i8* %77, i8** %82, align 8
  br label %83

83:                                               ; preds = %75, %53
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %167

88:                                               ; preds = %83
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp uge i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @Assert(i32 %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp uge i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @Assert(i32 %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @segment_meta_min_max_builder_empty(i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %147, label %106

106:                                              ; preds = %88
  %107 = load i8*, i8** %12, align 8
  %108 = icmp ne i8* %107, null
  %109 = zext i1 %108 to i32
  %110 = call i32 @Assert(i32 %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  store i32 0, i32* %117, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 0, i32* %124, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = call i8* @segment_meta_min_max_builder_min(i32* %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 8
  %131 = load i8**, i8*** %130, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i8*, i8** %131, i64 %134
  store i8* %128, i8** %135, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = call i8* @segment_meta_min_max_builder_max(i32* %138)
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 8
  %142 = load i8**, i8*** %141, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i8*, i8** %142, i64 %145
  store i8* %139, i8** %146, align 8
  br label %166

147:                                              ; preds = %88
  %148 = load i8*, i8** %12, align 8
  %149 = icmp eq i8* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i32 @Assert(i32 %150)
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  store i32 1, i32* %158, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  store i32 1, i32* %165, align 4
  br label %166

166:                                              ; preds = %147, %106
  br label %167

167:                                              ; preds = %166, %83
  br label %195

168:                                              ; preds = %37
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = icmp ne %struct.TYPE_7__* %171, null
  br i1 %172, label %173, label %194

173:                                              ; preds = %168
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 8
  %181 = load i8**, i8*** %180, align 8
  %182 = load i64, i64* %11, align 8
  %183 = getelementptr inbounds i8*, i8** %181, i64 %182
  store i8* %178, i8** %183, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* %11, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  store i32 %188, i32* %193, align 4
  br label %194

194:                                              ; preds = %173, %168
  br label %195

195:                                              ; preds = %194, %167
  br label %196

196:                                              ; preds = %195, %36
  %197 = load i64, i64* %7, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %7, align 8
  br label %15

199:                                              ; preds = %15
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = call i8* @Int32GetDatum(i64 %202)
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 8
  %206 = load i8**, i8*** %205, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds i8*, i8** %206, i64 %209
  store i8* %203, i8** %210, align 8
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  store i32 0, i32* %217, align 4
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 6
  %220 = load i64, i64* %219, align 8
  %221 = call i8* @Int32GetDatum(i64 %220)
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 8
  %224 = load i8**, i8*** %223, align 8
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 5
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds i8*, i8** %224, i64 %227
  store i8* %221, i8** %228, align 8
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 5
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  store i32 0, i32* %235, align 4
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 6
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @PG_INT32_MAX, align 8
  %240 = load i64, i64* @SEQUENCE_NUM_GAP, align 8
  %241 = sub nsw i64 %239, %240
  %242 = icmp sgt i64 %238, %241
  br i1 %242, label %243, label %246

243:                                              ; preds = %199
  %244 = load i32, i32* @ERROR, align 4
  %245 = call i32 @elog(i32 %244, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %246

246:                                              ; preds = %243, %199
  %247 = load i64, i64* @SEQUENCE_NUM_GAP, align 8
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 6
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, %247
  store i64 %251, i64* %249, align 8
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 11
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @RelationGetDescr(i32 %254)
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 8
  %258 = load i8**, i8*** %257, align 8
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 @heap_form_tuple(i32 %255, i8** %258, i32* %261)
  store i32 %262, i32* %8, align 4
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 11
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* %5, align 4
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 10
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @heap_insert(i32 %265, i32 %266, i32 %267, i32 0, i32 %270)
  store i64 0, i64* %7, align 8
  br label %272

272:                                              ; preds = %414, %246
  %273 = load i64, i64* %7, align 8
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp ult i64 %273, %276
  br i1 %277, label %278, label %417

278:                                              ; preds = %272
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 9
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %280, align 8
  %282 = load i64, i64* %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i64 %282
  store %struct.TYPE_9__* %283, %struct.TYPE_9__** %13, align 8
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 4
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %285, align 8
  %287 = icmp eq %struct.TYPE_10__* %286, null
  br i1 %287, label %288, label %294

288:                                              ; preds = %278
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 3
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %290, align 8
  %292 = icmp eq %struct.TYPE_7__* %291, null
  br i1 %292, label %293, label %294

293:                                              ; preds = %288
  br label %414

294:                                              ; preds = %288, %278
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 1
  %297 = load i64*, i64** %296, align 8
  %298 = load i64, i64* %7, align 8
  %299 = getelementptr inbounds i64, i64* %297, i64 %298
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %14, align 8
  %301 = load i64, i64* %14, align 8
  %302 = icmp uge i64 %301, 0
  %303 = zext i1 %302 to i32
  %304 = call i32 @Assert(i32 %303)
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 2
  %307 = load i32*, i32** %306, align 8
  %308 = load i64, i64* %14, align 8
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %294
  br label %414

313:                                              ; preds = %294
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 3
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %315, align 8
  %317 = icmp ne %struct.TYPE_7__* %316, null
  br i1 %317, label %318, label %322

318:                                              ; preds = %313
  %319 = load i32, i32* %6, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %322, label %321

321:                                              ; preds = %318
  br label %414

322:                                              ; preds = %318, %313
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 4
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %324, align 8
  %326 = icmp ne %struct.TYPE_10__* %325, null
  br i1 %326, label %334, label %327

327:                                              ; preds = %322
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 3
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %343, label %334

334:                                              ; preds = %327, %322
  %335 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 8
  %337 = load i8**, i8*** %336, align 8
  %338 = load i64, i64* %14, align 8
  %339 = getelementptr inbounds i8*, i8** %337, i64 %338
  %340 = load i8*, i8** %339, align 8
  %341 = call i32 @DatumGetPointer(i8* %340)
  %342 = call i32 @pfree(i32 %341)
  br label %343

343:                                              ; preds = %334, %327
  %344 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i32 0, i32 2
  %346 = load i32*, i32** %345, align 8
  %347 = icmp ne i32* %346, null
  br i1 %347, label %348, label %403

348:                                              ; preds = %343
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 2
  %351 = load i32*, i32** %350, align 8
  %352 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds i32, i32* %351, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %373, label %358

358:                                              ; preds = %348
  %359 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 8
  %361 = load i8**, i8*** %360, align 8
  %362 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = getelementptr inbounds i8*, i8** %361, i64 %364
  store i8* null, i8** %365, align 8
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 2
  %368 = load i32*, i32** %367, align 8
  %369 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = getelementptr inbounds i32, i32* %368, i64 %371
  store i32 1, i32* %372, align 4
  br label %373

373:                                              ; preds = %358, %348
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 2
  %376 = load i32*, i32** %375, align 8
  %377 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 1
  %379 = load i64, i64* %378, align 8
  %380 = getelementptr inbounds i32, i32* %376, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %398, label %383

383:                                              ; preds = %373
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 8
  %386 = load i8**, i8*** %385, align 8
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = getelementptr inbounds i8*, i8** %386, i64 %389
  store i8* null, i8** %390, align 8
  %391 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 2
  %393 = load i32*, i32** %392, align 8
  %394 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = getelementptr inbounds i32, i32* %393, i64 %396
  store i32 1, i32* %397, align 4
  br label %398

398:                                              ; preds = %383, %373
  %399 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 2
  %401 = load i32*, i32** %400, align 8
  %402 = call i32 @segment_meta_min_max_builder_reset(i32* %401)
  br label %403

403:                                              ; preds = %398, %343
  %404 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 8
  %406 = load i8**, i8*** %405, align 8
  %407 = load i64, i64* %14, align 8
  %408 = getelementptr inbounds i8*, i8** %406, i64 %407
  store i8* null, i8** %408, align 8
  %409 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 2
  %411 = load i32*, i32** %410, align 8
  %412 = load i64, i64* %14, align 8
  %413 = getelementptr inbounds i32, i32* %411, i64 %412
  store i32 1, i32* %413, align 4
  br label %414

414:                                              ; preds = %403, %321, %312, %293
  %415 = load i64, i64* %7, align 8
  %416 = add i64 %415, 1
  store i64 %416, i64* %7, align 8
  br label %272

417:                                              ; preds = %272
  %418 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %418, i32 0, i32 4
  store i64 0, i64* %419, align 8
  %420 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %421 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %420, i32 0, i32 7
  %422 = load i32, i32* %421, align 8
  %423 = call i32 @MemoryContextReset(i32 %422)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @PointerGetDatum(i8*) #1

declare dso_local i32 @segment_meta_min_max_builder_empty(i32*) #1

declare dso_local i8* @segment_meta_min_max_builder_min(i32*) #1

declare dso_local i8* @segment_meta_min_max_builder_max(i32*) #1

declare dso_local i8* @Int32GetDatum(i64) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @heap_form_tuple(i32, i8**, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @heap_insert(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pfree(i32) #1

declare dso_local i32 @DatumGetPointer(i8*) #1

declare dso_local i32 @segment_meta_min_max_builder_reset(i32*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
