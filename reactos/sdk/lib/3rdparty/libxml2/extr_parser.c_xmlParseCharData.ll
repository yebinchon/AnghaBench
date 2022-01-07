; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseCharData.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseCharData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i64, %struct.TYPE_9__*, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.TYPE_8__ = type { i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)* }

@SHRINK = common dso_local global i32 0, align 4
@GROW = common dso_local global i32 0, align 4
@test_char_data = common dso_local global i64* null, align 8
@XML_ERR_MISPLACED_CDATA_END = common dso_local global i32 0, align 4
@XML_PARSER_CONTENT = common dso_local global i64 0, align 8
@XML_PARSER_EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlParseCharData(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @SHRINK, align 4
  %23 = load i32, i32* @GROW, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %521, label %26

26:                                               ; preds = %2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %5, align 8
  br label %32

32:                                               ; preds = %518, %26
  br label %33

33:                                               ; preds = %69, %32
  br label %34

34:                                               ; preds = %38, %33
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %5, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %34

47:                                               ; preds = %34
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %65, %51
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %5, align 8
  br label %65

65:                                               ; preds = %52
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %52, label %69

69:                                               ; preds = %65
  br label %33

70:                                               ; preds = %47
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 60
  br i1 %73, label %74, label %199

74:                                               ; preds = %70
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = ptrtoint i32* %75 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %198

88:                                               ; preds = %74
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  store i32* %93, i32** %10, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  store i32* %94, i32** %98, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = icmp ne %struct.TYPE_8__* %101, null
  br i1 %102, label %103, label %172

103:                                              ; preds = %88
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %107, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %112, align 8
  %114 = icmp ne i32 (i32, i32*, i32)* %108, %113
  br i1 %114, label %115, label %172

115:                                              ; preds = %103
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i64 @areBlanks(%struct.TYPE_10__* %116, i32* %117, i32 %118, i32 1)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %115
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %125, align 8
  %127 = icmp ne i32 (i32, i32*, i32)* %126, null
  br i1 %127, label %128, label %140

128:                                              ; preds = %121
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %132, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i32 %133(i32 %136, i32* %137, i32 %138)
  br label %140

140:                                              ; preds = %128, %121
  br label %171

141:                                              ; preds = %115
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %145, align 8
  %147 = icmp ne i32 (i32, i32*, i32)* %146, null
  br i1 %147, label %148, label %160

148:                                              ; preds = %141
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %152, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load i32*, i32** %10, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i32 %153(i32 %156, i32* %157, i32 %158)
  br label %160

160:                                              ; preds = %148, %141
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %170

166:                                              ; preds = %160
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  store i32 -2, i32* %169, align 4
  br label %170

170:                                              ; preds = %166, %160
  br label %171

171:                                              ; preds = %170, %140
  br label %197

172:                                              ; preds = %103, %88
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = icmp ne %struct.TYPE_8__* %175, null
  br i1 %176, label %177, label %196

177:                                              ; preds = %172
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 4
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %181, align 8
  %183 = icmp ne i32 (i32, i32*, i32)* %182, null
  br i1 %183, label %184, label %196

184:                                              ; preds = %177
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 4
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %188, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = load i32*, i32** %10, align 8
  %194 = load i32, i32* %6, align 4
  %195 = call i32 %189(i32 %192, i32* %193, i32 %194)
  br label %196

196:                                              ; preds = %184, %177, %172
  br label %197

197:                                              ; preds = %196, %171
  br label %198

198:                                              ; preds = %197, %74
  br label %535

199:                                              ; preds = %70
  br label %200

200:                                              ; preds = %271, %246, %199
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %9, align 4
  br label %206

206:                                              ; preds = %214, %200
  %207 = load i64*, i64** @test_char_data, align 8
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %207, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %206
  %215 = load i32*, i32** %5, align 8
  %216 = getelementptr inbounds i32, i32* %215, i32 1
  store i32* %216, i32** %5, align 8
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %9, align 4
  br label %206

219:                                              ; preds = %206
  %220 = load i32, i32* %9, align 4
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 1
  store i32 %220, i32* %224, align 4
  %225 = load i32*, i32** %5, align 8
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 10
  br i1 %227, label %228, label %247

228:                                              ; preds = %219
  br label %229

229:                                              ; preds = %242, %228
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  store i32 1, i32* %239, align 4
  %240 = load i32*, i32** %5, align 8
  %241 = getelementptr inbounds i32, i32* %240, i32 1
  store i32* %241, i32** %5, align 8
  br label %242

242:                                              ; preds = %229
  %243 = load i32*, i32** %5, align 8
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, 10
  br i1 %245, label %229, label %246

246:                                              ; preds = %242
  br label %200

247:                                              ; preds = %219
  %248 = load i32*, i32** %5, align 8
  %249 = load i32, i32* %248, align 4
  %250 = icmp eq i32 %249, 93
  br i1 %250, label %251, label %280

251:                                              ; preds = %247
  %252 = load i32*, i32** %5, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 93
  br i1 %255, label %256, label %271

256:                                              ; preds = %251
  %257 = load i32*, i32** %5, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 2
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 62
  br i1 %260, label %261, label %271

261:                                              ; preds = %256
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %263 = load i32, i32* @XML_ERR_MISPLACED_CDATA_END, align 4
  %264 = call i32 @xmlFatalErr(%struct.TYPE_10__* %262, i32 %263, i32* null)
  %265 = load i32*, i32** %5, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 2
  store i32* %266, i32** %270, align 8
  br label %535

271:                                              ; preds = %256, %251
  %272 = load i32*, i32** %5, align 8
  %273 = getelementptr inbounds i32, i32* %272, i32 1
  store i32* %273, i32** %5, align 8
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %277, align 4
  br label %200

280:                                              ; preds = %247
  %281 = load i32*, i32** %5, align 8
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 2
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 2
  %286 = load i32*, i32** %285, align 8
  %287 = ptrtoint i32* %281 to i64
  %288 = ptrtoint i32* %286 to i64
  %289 = sub i64 %287, %288
  %290 = sdiv exact i64 %289, 4
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* %6, align 4
  %292 = load i32, i32* %6, align 4
  %293 = icmp sgt i32 %292, 0
  br i1 %293, label %294, label %445

294:                                              ; preds = %280
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 4
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %296, align 8
  %298 = icmp ne %struct.TYPE_8__* %297, null
  br i1 %298, label %299, label %397

299:                                              ; preds = %294
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 4
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 1
  %304 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %303, align 8
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 4
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 0
  %309 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %308, align 8
  %310 = icmp ne i32 (i32, i32*, i32)* %304, %309
  br i1 %310, label %311, label %397

311:                                              ; preds = %299
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 2
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 2
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %316, align 4
  %318 = call i64 @IS_BLANK_CH(i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %397

320:                                              ; preds = %311
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 2
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 2
  %325 = load i32*, i32** %324, align 8
  store i32* %325, i32** %11, align 8
  %326 = load i32*, i32** %5, align 8
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 2
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 2
  store i32* %326, i32** %330, align 8
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %332 = load i32*, i32** %11, align 8
  %333 = load i32, i32* %6, align 4
  %334 = call i64 @areBlanks(%struct.TYPE_10__* %331, i32* %332, i32 %333, i32 0)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %356

336:                                              ; preds = %320
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 4
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 1
  %341 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %340, align 8
  %342 = icmp ne i32 (i32, i32*, i32)* %341, null
  br i1 %342, label %343, label %355

343:                                              ; preds = %336
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 4
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 1
  %348 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %347, align 8
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 8
  %352 = load i32*, i32** %11, align 8
  %353 = load i32, i32* %6, align 4
  %354 = call i32 %348(i32 %351, i32* %352, i32 %353)
  br label %355

355:                                              ; preds = %343, %336
  br label %386

356:                                              ; preds = %320
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 4
  %359 = load %struct.TYPE_8__*, %struct.TYPE_8__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 0
  %361 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %360, align 8
  %362 = icmp ne i32 (i32, i32*, i32)* %361, null
  br i1 %362, label %363, label %375

363:                                              ; preds = %356
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i32 0, i32 4
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 0
  %368 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %367, align 8
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 8
  %372 = load i32*, i32** %11, align 8
  %373 = load i32, i32* %6, align 4
  %374 = call i32 %368(i32 %371, i32* %372, i32 %373)
  br label %375

375:                                              ; preds = %363, %356
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 0
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* %378, align 4
  %380 = icmp eq i32 %379, -1
  br i1 %380, label %381, label %385

381:                                              ; preds = %375
  %382 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %382, i32 0, i32 0
  %384 = load i32*, i32** %383, align 8
  store i32 -2, i32* %384, align 4
  br label %385

385:                                              ; preds = %381, %375
  br label %386

386:                                              ; preds = %385, %355
  %387 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %387, i32 0, i32 2
  %389 = load %struct.TYPE_9__*, %struct.TYPE_9__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  store i32 %391, i32* %7, align 4
  %392 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 2
  %394 = load %struct.TYPE_9__*, %struct.TYPE_9__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  store i32 %396, i32* %8, align 4
  br label %437

397:                                              ; preds = %311, %299, %294
  %398 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 4
  %400 = load %struct.TYPE_8__*, %struct.TYPE_8__** %399, align 8
  %401 = icmp ne %struct.TYPE_8__* %400, null
  br i1 %401, label %402, label %436

402:                                              ; preds = %397
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 4
  %405 = load %struct.TYPE_8__*, %struct.TYPE_8__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 0
  %407 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %406, align 8
  %408 = icmp ne i32 (i32, i32*, i32)* %407, null
  br i1 %408, label %409, label %425

409:                                              ; preds = %402
  %410 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i32 0, i32 4
  %412 = load %struct.TYPE_8__*, %struct.TYPE_8__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 0
  %414 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %413, align 8
  %415 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %415, i32 0, i32 3
  %417 = load i32, i32* %416, align 8
  %418 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %418, i32 0, i32 2
  %420 = load %struct.TYPE_9__*, %struct.TYPE_9__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %420, i32 0, i32 2
  %422 = load i32*, i32** %421, align 8
  %423 = load i32, i32* %6, align 4
  %424 = call i32 %414(i32 %417, i32* %422, i32 %423)
  br label %425

425:                                              ; preds = %409, %402
  %426 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %427 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %426, i32 0, i32 2
  %428 = load %struct.TYPE_9__*, %struct.TYPE_9__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  store i32 %430, i32* %7, align 4
  %431 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %431, i32 0, i32 2
  %433 = load %struct.TYPE_9__*, %struct.TYPE_9__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  store i32 %435, i32* %8, align 4
  br label %436

436:                                              ; preds = %425, %397
  br label %437

437:                                              ; preds = %436, %386
  %438 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %438, i32 0, i32 1
  %440 = load i64, i64* %439, align 8
  %441 = load i64, i64* @XML_PARSER_CONTENT, align 8
  %442 = icmp ne i64 %440, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %437
  br label %535

444:                                              ; preds = %437
  br label %445

445:                                              ; preds = %444, %280
  %446 = load i32*, i32** %5, align 8
  %447 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %448 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %447, i32 0, i32 2
  %449 = load %struct.TYPE_9__*, %struct.TYPE_9__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %449, i32 0, i32 2
  store i32* %446, i32** %450, align 8
  %451 = load i32*, i32** %5, align 8
  %452 = load i32, i32* %451, align 4
  %453 = icmp eq i32 %452, 13
  br i1 %453, label %454, label %481

454:                                              ; preds = %445
  %455 = load i32*, i32** %5, align 8
  %456 = getelementptr inbounds i32, i32* %455, i32 1
  store i32* %456, i32** %5, align 8
  %457 = load i32*, i32** %5, align 8
  %458 = load i32, i32* %457, align 4
  %459 = icmp eq i32 %458, 10
  br i1 %459, label %460, label %478

460:                                              ; preds = %454
  %461 = load i32*, i32** %5, align 8
  %462 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %463 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %462, i32 0, i32 2
  %464 = load %struct.TYPE_9__*, %struct.TYPE_9__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %464, i32 0, i32 2
  store i32* %461, i32** %465, align 8
  %466 = load i32*, i32** %5, align 8
  %467 = getelementptr inbounds i32, i32* %466, i32 1
  store i32* %467, i32** %5, align 8
  %468 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %469 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %468, i32 0, i32 2
  %470 = load %struct.TYPE_9__*, %struct.TYPE_9__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %471, align 8
  %474 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %474, i32 0, i32 2
  %476 = load %struct.TYPE_9__*, %struct.TYPE_9__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %476, i32 0, i32 1
  store i32 1, i32* %477, align 4
  br label %506

478:                                              ; preds = %454
  %479 = load i32*, i32** %5, align 8
  %480 = getelementptr inbounds i32, i32* %479, i32 -1
  store i32* %480, i32** %5, align 8
  br label %481

481:                                              ; preds = %478, %445
  %482 = load i32*, i32** %5, align 8
  %483 = load i32, i32* %482, align 4
  %484 = icmp eq i32 %483, 60
  br i1 %484, label %485, label %486

485:                                              ; preds = %481
  br label %535

486:                                              ; preds = %481
  %487 = load i32*, i32** %5, align 8
  %488 = load i32, i32* %487, align 4
  %489 = icmp eq i32 %488, 38
  br i1 %489, label %490, label %491

490:                                              ; preds = %486
  br label %535

491:                                              ; preds = %486
  %492 = load i32, i32* @SHRINK, align 4
  %493 = load i32, i32* @GROW, align 4
  %494 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %495 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %494, i32 0, i32 1
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* @XML_PARSER_EOF, align 8
  %498 = icmp eq i64 %496, %497
  br i1 %498, label %499, label %500

499:                                              ; preds = %491
  br label %535

500:                                              ; preds = %491
  %501 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %502 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %501, i32 0, i32 2
  %503 = load %struct.TYPE_9__*, %struct.TYPE_9__** %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %503, i32 0, i32 2
  %505 = load i32*, i32** %504, align 8
  store i32* %505, i32** %5, align 8
  br label %506

506:                                              ; preds = %500, %460
  %507 = load i32*, i32** %5, align 8
  %508 = load i32, i32* %507, align 4
  %509 = icmp sge i32 %508, 32
  br i1 %509, label %510, label %514

510:                                              ; preds = %506
  %511 = load i32*, i32** %5, align 8
  %512 = load i32, i32* %511, align 4
  %513 = icmp sle i32 %512, 127
  br i1 %513, label %518, label %514

514:                                              ; preds = %510, %506
  %515 = load i32*, i32** %5, align 8
  %516 = load i32, i32* %515, align 4
  %517 = icmp eq i32 %516, 9
  br label %518

518:                                              ; preds = %514, %510
  %519 = phi i1 [ true, %510 ], [ %517, %514 ]
  br i1 %519, label %32, label %520

520:                                              ; preds = %518
  store i32 0, i32* %6, align 4
  br label %521

521:                                              ; preds = %520, %2
  %522 = load i32, i32* %7, align 4
  %523 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %524 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %523, i32 0, i32 2
  %525 = load %struct.TYPE_9__*, %struct.TYPE_9__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %525, i32 0, i32 0
  store i32 %522, i32* %526, align 8
  %527 = load i32, i32* %8, align 4
  %528 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %529 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %528, i32 0, i32 2
  %530 = load %struct.TYPE_9__*, %struct.TYPE_9__** %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %530, i32 0, i32 1
  store i32 %527, i32* %531, align 4
  %532 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %533 = load i32, i32* %4, align 4
  %534 = call i32 @xmlParseCharDataComplex(%struct.TYPE_10__* %532, i32 %533)
  br label %535

535:                                              ; preds = %521, %499, %490, %485, %443, %261, %198
  ret void
}

declare dso_local i64 @areBlanks(%struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i64 @IS_BLANK_CH(i32) #1

declare dso_local i32 @xmlParseCharDataComplex(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
