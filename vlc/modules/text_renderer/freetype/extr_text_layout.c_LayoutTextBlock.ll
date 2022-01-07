; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_text_layout.c_LayoutTextBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/extr_text_layout.c_LayoutTextBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i8*, i32, i32, i32, i32, %struct.TYPE_12__**, i32* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32, i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LayoutTextBlock(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_13__** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_13__**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca %struct.TYPE_13__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_13__** %2, %struct.TYPE_13__*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__** %12, %struct.TYPE_13__*** %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %28, align 8
  %30 = icmp ne %struct.TYPE_12__** %29, null
  br i1 %30, label %31, label %76

31:                                               ; preds = %5
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %18, align 8
  store i64 0, i64* %19, align 8
  br label %32

32:                                               ; preds = %72, %31
  %33 = load i64, i64* %19, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %75

38:                                               ; preds = %32
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %40, align 8
  %42 = load i64, i64* %19, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %41, i64 %42
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %46 = icmp eq %struct.TYPE_12__* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %72

48:                                               ; preds = %38
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 6
  %51 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %50, align 8
  %52 = load i64, i64* %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %51, i64 %52
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %18, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %56 = icmp ne %struct.TYPE_12__* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %48
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = call i32 @LayoutRubyText(i32* %58, i32 %61, i32 %64, i32 %67, i32* %69)
  br label %71

71:                                               ; preds = %57, %48
  br label %72

72:                                               ; preds = %71, %47
  %73 = load i64, i64* %19, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %19, align 8
  br label %32

75:                                               ; preds = %32
  br label %76

76:                                               ; preds = %75, %5
  store i64 0, i64* %20, align 8
  br label %77

77:                                               ; preds = %239, %76
  %78 = load i64, i64* %20, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ule i64 %78, %81
  br i1 %82, label %83, label %242

83:                                               ; preds = %77
  %84 = load i64, i64* %20, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %98, label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load i64, i64* %20, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 10
  br i1 %97, label %98, label %238

98:                                               ; preds = %89, %83
  %99 = load i64, i64* %14, align 8
  %100 = load i64, i64* %20, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i64, i64* %20, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %14, align 8
  br label %239

105:                                              ; preds = %98
  %106 = load i32*, i32** %7, align 8
  %107 = load i64, i64* %20, align 8
  %108 = load i64, i64* %14, align 8
  %109 = sub i64 %107, %108
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load i64, i64* %14, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 7
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* %14, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 6
  %122 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %121, align 8
  %123 = icmp ne %struct.TYPE_12__** %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %105
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 6
  %127 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %126, align 8
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %127, i64 %128
  br label %131

130:                                              ; preds = %105
  br label %131

131:                                              ; preds = %130, %124
  %132 = phi %struct.TYPE_12__** [ %129, %124 ], [ null, %130 ]
  %133 = call i32* @BuildParagraph(i32* %106, i64 %109, i8* %114, i32* %119, %struct.TYPE_12__** %132, i32 20, i32* %16)
  store i32* %133, i32** %21, align 8
  %134 = load i32*, i32** %21, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %144, label %136

136:                                              ; preds = %131
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %138 = icmp ne %struct.TYPE_13__* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %141 = call i32 @FreeLines(%struct.TYPE_13__* %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %143, i32* %6, align 4
  br label %282

144:                                              ; preds = %131
  %145 = load i32*, i32** %7, align 8
  %146 = load i32*, i32** %21, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %16, align 4
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %13, align 8
  %158 = call i64 @LayoutParagraph(i32* %145, i32* %146, i32 %149, i32 %150, i32 %153, i32 %156, %struct.TYPE_13__** %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %144
  %161 = load i32*, i32** %21, align 8
  %162 = call i32 @FreeParagraph(i32* %161)
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %164 = icmp ne %struct.TYPE_13__* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %167 = call i32 @FreeLines(%struct.TYPE_13__* %166)
  br label %168

168:                                              ; preds = %165, %160
  %169 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %169, i32* %6, align 4
  br label %282

170:                                              ; preds = %144
  %171 = load i32*, i32** %21, align 8
  %172 = call i32 @FreeParagraph(i32* %171)
  br label %173

173:                                              ; preds = %231, %170
  %174 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %13, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  %176 = icmp ne %struct.TYPE_13__* %175, null
  br i1 %176, label %177, label %235

177:                                              ; preds = %173
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp ugt i32 %180, 0
  br i1 %181, label %182, label %211

182:                                              ; preds = %177
  %183 = load i32, i32* %15, align 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp ugt i32 %183, %186
  br i1 %187, label %188, label %211

188:                                              ; preds = %182
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = add i32 %191, 1
  store i32 %192, i32* %15, align 4
  %193 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %13, align 8
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  store %struct.TYPE_13__* %194, %struct.TYPE_13__** %22, align 8
  br label %195

195:                                              ; preds = %198, %188
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %197 = icmp ne %struct.TYPE_13__* %196, null
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 3
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  store %struct.TYPE_13__* %201, %struct.TYPE_13__** %23, align 8
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %203 = call i32 @FreeLine(%struct.TYPE_13__* %202)
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %204, %struct.TYPE_13__** %22, align 8
  br label %195

205:                                              ; preds = %195
  %206 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %13, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %206, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %20, align 8
  br label %235

211:                                              ; preds = %182, %177
  %212 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %13, align 8
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %17, align 4
  %217 = icmp sgt i32 %215, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %211
  %219 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %13, align 8
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  store i32 %222, i32* %17, align 4
  br label %223

223:                                              ; preds = %218, %211
  br label %224

224:                                              ; preds = %223
  %225 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %13, align 8
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %15, align 4
  %230 = add i32 %229, %228
  store i32 %230, i32* %15, align 4
  br label %231

231:                                              ; preds = %224
  %232 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %13, align 8
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 3
  store %struct.TYPE_13__** %234, %struct.TYPE_13__*** %13, align 8
  br label %173

235:                                              ; preds = %205, %173
  %236 = load i64, i64* %20, align 8
  %237 = add i64 %236, 1
  store i64 %237, i64* %14, align 8
  br label %238

238:                                              ; preds = %235, %89
  br label %239

239:                                              ; preds = %238, %102
  %240 = load i64, i64* %20, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %20, align 8
  br label %77

242:                                              ; preds = %77
  store i32 0, i32* %24, align 4
  %243 = call i32 @BBoxInit(i32* %25)
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %244, %struct.TYPE_13__** %26, align 8
  br label %245

245:                                              ; preds = %270, %242
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %247 = icmp ne %struct.TYPE_13__* %246, null
  br i1 %247, label %248, label %274

248:                                              ; preds = %245
  %249 = load i32, i32* %24, align 4
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* %24, align 4
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = sub nsw i32 %256, %252
  store i32 %257, i32* %255, align 8
  %258 = load i32, i32* %24, align 4
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = sub nsw i32 %262, %258
  store i32 %263, i32* %261, align 4
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 2
  %266 = call i32 @BBoxEnlarge(i32* %25, %struct.TYPE_11__* %265)
  %267 = load i32, i32* %17, align 4
  %268 = load i32, i32* %24, align 4
  %269 = add nsw i32 %268, %267
  store i32 %269, i32* %24, align 4
  br label %270

270:                                              ; preds = %248
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 3
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %272, align 8
  store %struct.TYPE_13__* %273, %struct.TYPE_13__** %26, align 8
  br label %245

274:                                              ; preds = %245
  %275 = load i32, i32* %17, align 4
  %276 = load i32*, i32** %11, align 8
  store i32 %275, i32* %276, align 4
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %278 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  store %struct.TYPE_13__* %277, %struct.TYPE_13__** %278, align 8
  %279 = load i32, i32* %25, align 4
  %280 = load i32*, i32** %10, align 8
  store i32 %279, i32* %280, align 4
  %281 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %281, i32* %6, align 4
  br label %282

282:                                              ; preds = %274, %168, %142
  %283 = load i32, i32* %6, align 4
  ret i32 %283
}

declare dso_local i32 @LayoutRubyText(i32*, i32, i32, i32, i32*) #1

declare dso_local i32* @BuildParagraph(i32*, i64, i8*, i32*, %struct.TYPE_12__**, i32, i32*) #1

declare dso_local i32 @FreeLines(%struct.TYPE_13__*) #1

declare dso_local i64 @LayoutParagraph(i32*, i32*, i32, i32, i32, i32, %struct.TYPE_13__**) #1

declare dso_local i32 @FreeParagraph(i32*) #1

declare dso_local i32 @FreeLine(%struct.TYPE_13__*) #1

declare dso_local i32 @BBoxInit(i32*) #1

declare dso_local i32 @BBoxEnlarge(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
