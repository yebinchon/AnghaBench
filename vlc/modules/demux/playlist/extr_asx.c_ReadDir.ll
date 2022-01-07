; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_asx.c_ReadDir.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_asx.c_ReadDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_10__* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Cannot parse ASX input file as XML\00", align 1
@XML_READER_ERROR = common dso_local global i32 0, align 4
@XML_READER_STARTELEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ASX\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"invalid root node\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"TITLE\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"AUTHOR\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"COPYRIGHT\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"MOREINFO\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"HREF\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"ABSTRACT\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"BASE\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"ENTRYREF\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ENTRY\00", align 1
@XML_READER_ENDELEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*)* @ReadDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadDir(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %28, i32* %3, align 4
  br label %270

29:                                               ; preds = %2
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @strdup(i8* %32)
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %40, i32* %3, align 4
  br label %270

41:                                               ; preds = %29
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32* null, i32** %11, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = call i32* @GetCurrentItem(%struct.TYPE_10__* %42)
  store i32* %43, i32** %12, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = call %struct.TYPE_10__* @PreparseStream(%struct.TYPE_10__* %44)
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %48 = icmp ne %struct.TYPE_10__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  br label %55

51:                                               ; preds = %41
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  br label %55

55:                                               ; preds = %51, %49
  %56 = phi %struct.TYPE_10__* [ %50, %49 ], [ %54, %51 ]
  %57 = call i32* @xml_ReaderCreate(%struct.TYPE_10__* %46, %struct.TYPE_10__* %56)
  store i32* %57, i32** %11, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = call i32 @msg_Err(%struct.TYPE_10__* %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %249

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %246, %63
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @xml_ReaderNextNode(i32* %65, i8** %6)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @XML_READER_ERROR, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %248

71:                                               ; preds = %64
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* @XML_READER_STARTELEM, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %237

75:                                               ; preds = %71
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** %6, align 8
  %80 = call i64 @strncasecmp(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  store i32 1, i32* %14, align 4
  br label %86

83:                                               ; preds = %78
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = call i32 @msg_Err(%struct.TYPE_10__* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %249

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %86, %75
  %88 = load i8*, i8** %6, align 8
  %89 = call i64 @strncasecmp(i8* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @ReadElement(i32* %92, i8** %9)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  br label %248

96:                                               ; preds = %91
  %97 = load i32*, i32** %12, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @input_item_SetTitle(i32* %97, i8* %98)
  br label %236

100:                                              ; preds = %87
  %101 = load i8*, i8** %6, align 8
  %102 = call i64 @strncasecmp(i8* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %100
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @ReadElement(i32* %105, i8** %7)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  br label %248

109:                                              ; preds = %104
  %110 = load i32*, i32** %12, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @input_item_SetArtist(i32* %110, i8* %111)
  br label %235

113:                                              ; preds = %100
  %114 = load i8*, i8** %6, align 8
  %115 = call i64 @strncasecmp(i8* %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 9)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %113
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @ReadElement(i32* %118, i8** %7)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  br label %248

122:                                              ; preds = %117
  %123 = load i32*, i32** %12, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @input_item_SetCopyright(i32* %123, i8* %124)
  br label %234

126:                                              ; preds = %113
  %127 = load i8*, i8** %6, align 8
  %128 = call i64 @strncasecmp(i8* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %161, label %130

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %141, %130
  %132 = load i32*, i32** %11, align 8
  %133 = call i8* @xml_ReaderNextAttr(i32* %132, i8** %6)
  store i8* %133, i8** %17, align 8
  br label %134

134:                                              ; preds = %131
  %135 = load i8*, i8** %17, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i8*, i8** %17, align 8
  %139 = call i64 @strncasecmp(i8* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %140 = icmp ne i64 %139, 0
  br label %141

141:                                              ; preds = %137, %134
  %142 = phi i1 [ false, %134 ], [ %140, %137 ]
  br i1 %142, label %131, label %143

143:                                              ; preds = %141
  %144 = load i8*, i8** %17, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %152, label %146

146:                                              ; preds = %143
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @ReadElement(i32* %147, i8** %7)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  br label %248

151:                                              ; preds = %146
  br label %155

152:                                              ; preds = %143
  %153 = load i8*, i8** %6, align 8
  %154 = call i8* @strdup(i8* %153)
  store i8* %154, i8** %7, align 8
  br label %155

155:                                              ; preds = %152, %151
  %156 = load i8*, i8** %7, align 8
  %157 = call i32 @vlc_xml_decode(i8* %156)
  %158 = load i32*, i32** %12, align 8
  %159 = load i8*, i8** %7, align 8
  %160 = call i32 @input_item_SetURL(i32* %158, i8* %159)
  br label %233

161:                                              ; preds = %126
  %162 = load i8*, i8** %6, align 8
  %163 = call i64 @strncasecmp(i8* %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 8)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %161
  %166 = load i32*, i32** %11, align 8
  %167 = call i32 @ReadElement(i32* %166, i8** %7)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  br label %248

170:                                              ; preds = %165
  %171 = load i32*, i32** %12, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = call i32 @input_item_SetDescription(i32* %171, i8* %172)
  br label %232

174:                                              ; preds = %161
  %175 = load i8*, i8** %6, align 8
  %176 = call i64 @strncasecmp(i8* %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %174
  %179 = load i32*, i32** %11, align 8
  %180 = call i32 @ReadElement(i32* %179, i8** %8)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  br label %248

183:                                              ; preds = %178
  br label %231

184:                                              ; preds = %174
  %185 = load i8*, i8** %6, align 8
  %186 = call i64 @strncasecmp(i8* %185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 7)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %219, label %188

188:                                              ; preds = %184
  br label %189

189:                                              ; preds = %200, %188
  %190 = load i32*, i32** %11, align 8
  %191 = call i8* @xml_ReaderNextAttr(i32* %190, i8** %6)
  store i8* %191, i8** %18, align 8
  br label %192

192:                                              ; preds = %189
  %193 = load i8*, i8** %18, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load i8*, i8** %18, align 8
  %197 = call i64 @strncasecmp(i8* %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %198 = icmp ne i64 %197, 0
  %199 = xor i1 %198, true
  br label %200

200:                                              ; preds = %195, %192
  %201 = phi i1 [ false, %192 ], [ %199, %195 ]
  br i1 %201, label %189, label %202

202:                                              ; preds = %200
  %203 = load i8*, i8** %18, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %202
  br label %248

206:                                              ; preds = %202
  %207 = load i8*, i8** %6, align 8
  %208 = call i8* @strdup(i8* %207)
  store i8* %208, i8** %7, align 8
  %209 = load i8*, i8** %7, align 8
  %210 = call i32 @vlc_xml_decode(i8* %209)
  %211 = load i8*, i8** %7, align 8
  %212 = load i8*, i8** %9, align 8
  %213 = call i32* @input_item_New(i8* %211, i8* %212)
  store i32* %213, i32** %19, align 8
  %214 = load i32*, i32** %5, align 8
  %215 = load i32*, i32** %19, align 8
  %216 = call i32 @input_item_node_AppendItem(i32* %214, i32* %215)
  %217 = load i32*, i32** %19, align 8
  %218 = call i32 @input_item_Release(i32* %217)
  br label %230

219:                                              ; preds = %184
  %220 = load i8*, i8** %6, align 8
  %221 = call i64 @strncasecmp(i8* %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 5)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %229, label %223

223:                                              ; preds = %219
  %224 = load i32*, i32** %11, align 8
  %225 = load i32*, i32** %5, align 8
  %226 = load i32*, i32** %12, align 8
  %227 = load i8*, i8** %8, align 8
  %228 = call i32 @ProcessEntry(i32* %16, i32* %224, i32* %225, i32* %226, i8* %227)
  br label %229

229:                                              ; preds = %223, %219
  br label %230

230:                                              ; preds = %229, %206
  br label %231

231:                                              ; preds = %230, %183
  br label %232

232:                                              ; preds = %231, %170
  br label %233

233:                                              ; preds = %232, %155
  br label %234

234:                                              ; preds = %233, %122
  br label %235

235:                                              ; preds = %234, %109
  br label %236

236:                                              ; preds = %235, %96
  br label %237

237:                                              ; preds = %236, %71
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %15, align 4
  %240 = load i32, i32* @XML_READER_ENDELEM, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %246, label %242

242:                                              ; preds = %238
  %243 = load i8*, i8** %6, align 8
  %244 = call i64 @strncasecmp(i8* %243, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %245 = icmp ne i64 %244, 0
  br label %246

246:                                              ; preds = %242, %238
  %247 = phi i1 [ true, %238 ], [ %245, %242 ]
  br i1 %247, label %64, label %248

248:                                              ; preds = %246, %205, %182, %169, %150, %121, %108, %95, %70
  br label %249

249:                                              ; preds = %248, %83, %60
  %250 = load i8*, i8** %8, align 8
  %251 = call i32 @free(i8* %250)
  %252 = load i8*, i8** %9, align 8
  %253 = call i32 @free(i8* %252)
  %254 = load i8*, i8** %10, align 8
  %255 = call i32 @free(i8* %254)
  %256 = load i8*, i8** %7, align 8
  %257 = call i32 @free(i8* %256)
  %258 = load i32*, i32** %11, align 8
  %259 = icmp ne i32* %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %249
  %261 = load i32*, i32** %11, align 8
  %262 = call i32 @xml_ReaderDelete(i32* %261)
  br label %263

263:                                              ; preds = %260, %249
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %265 = icmp ne %struct.TYPE_10__* %264, null
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %268 = call i32 @vlc_stream_Delete(%struct.TYPE_10__* %267)
  br label %269

269:                                              ; preds = %266, %263
  store i32 0, i32* %3, align 4
  br label %270

270:                                              ; preds = %269, %39, %27
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32* @GetCurrentItem(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @PreparseStream(%struct.TYPE_10__*) #1

declare dso_local i32* @xml_ReaderCreate(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @xml_ReaderNextNode(i32*, i8**) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @ReadElement(i32*, i8**) #1

declare dso_local i32 @input_item_SetTitle(i32*, i8*) #1

declare dso_local i32 @input_item_SetArtist(i32*, i8*) #1

declare dso_local i32 @input_item_SetCopyright(i32*, i8*) #1

declare dso_local i8* @xml_ReaderNextAttr(i32*, i8**) #1

declare dso_local i32 @vlc_xml_decode(i8*) #1

declare dso_local i32 @input_item_SetURL(i32*, i8*) #1

declare dso_local i32 @input_item_SetDescription(i32*, i8*) #1

declare dso_local i32* @input_item_New(i8*, i8*) #1

declare dso_local i32 @input_item_node_AppendItem(i32*, i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

declare dso_local i32 @ProcessEntry(i32*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @xml_ReaderDelete(i32*) #1

declare dso_local i32 @vlc_stream_Delete(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
