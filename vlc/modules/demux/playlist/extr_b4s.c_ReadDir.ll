; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_b4s.c_ReadDir.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_b4s.c_ReadDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"invalid file (no root node)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"WinampXML\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid root node: %s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"invalid file (no child node)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"playlist\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"invalid child node %s\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"num_entries\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"playlist has %d entries\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"stray attribute %s with value %s in element <playlist>\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Playstring\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"unexpected attribute %s in <%s>\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Genre\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Nowplaying\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"Listeners\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Bitrate\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"unexpected text in element <%s>\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Unsupported meta listeners\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Unsupported meta bitrate\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"error while parsing data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*)* @ReadDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadDir(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8**, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = call i32* @GetCurrentItem(%struct.TYPE_8__* %21)
  store i32* %22, i32** %17, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @vlc_stream_ReadLine(i32 %25)
  %27 = call i32 @free(i8* %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @xml_ReaderCreate(%struct.TYPE_8__* %28, i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %267

36:                                               ; preds = %2
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @xml_ReaderNextNode(i32* %37, i8** %9)
  %39 = icmp ne i32 %38, 129
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Err(%struct.TYPE_8__* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %257

43:                                               ; preds = %36
  %44 = load i8*, i8** %9, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Err(%struct.TYPE_8__* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %257

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %62, %51
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @xml_ReaderNextNode(i32* %53, i8** %9)
  store i32 %54, i32* %6, align 4
  %55 = icmp ne i32 %54, 129
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Err(%struct.TYPE_8__* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %257

62:                                               ; preds = %56
  br label %52

63:                                               ; preds = %52
  %64 = load i8*, i8** %9, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Err(%struct.TYPE_8__* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  br label %257

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %99, %71
  %73 = load i32*, i32** %7, align 8
  %74 = call i8* @xml_ReaderNextAttr(i32* %73, i8** %19)
  store i8* %74, i8** %18, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %100

76:                                               ; preds = %72
  %77 = load i8*, i8** %18, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = load i8*, i8** %19, align 8
  %83 = call i32 @atoi(i8* %82)
  %84 = call i32 @msg_Dbg(%struct.TYPE_8__* %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  br label %99

85:                                               ; preds = %76
  %86 = load i8*, i8** %18, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i32*, i32** %17, align 8
  %91 = load i8*, i8** %19, align 8
  %92 = call i32 @input_item_SetName(i32* %90, i8* %91)
  br label %98

93:                                               ; preds = %85
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = load i8*, i8** %18, align 8
  %96 = load i8*, i8** %19, align 8
  %97 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Warn(%struct.TYPE_8__* %94, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i8* %95, i8* %96)
  br label %98

98:                                               ; preds = %93, %89
  br label %99

99:                                               ; preds = %98, %80
  br label %72

100:                                              ; preds = %72
  br label %101

101:                                              ; preds = %249, %100
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @xml_ReaderNextNode(i32* %102, i8** %9)
  store i32 %103, i32* %6, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %250

105:                                              ; preds = %101
  %106 = load i32, i32* %6, align 4
  switch i32 %106, label %249 [
    i32 129, label %107
    i32 128, label %144
    i32 130, label %193
  ]

107:                                              ; preds = %105
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @free(i8* %108)
  %110 = load i8*, i8** %9, align 8
  %111 = call i8* @strdup(i8* %110)
  store i8* %111, i8** %8, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = icmp ne i8* %112, null
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 @unlikely(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  br label %257

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %142, %119
  %121 = load i32*, i32** %7, align 8
  %122 = call i8* @xml_ReaderNextAttr(i32* %121, i8** %19)
  store i8* %122, i8** %18, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %143

124:                                              ; preds = %120
  %125 = load i8*, i8** %8, align 8
  %126 = call i64 @strcmp(i8* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %124
  %129 = load i8*, i8** %18, align 8
  %130 = call i64 @strcmp(i8* %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %128
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @free(i8* %133)
  %135 = load i8*, i8** %19, align 8
  %136 = call i8* @strdup(i8* %135)
  store i8* %136, i8** %11, align 8
  br label %142

137:                                              ; preds = %128, %124
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %139 = load i8*, i8** %18, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Warn(%struct.TYPE_8__* %138, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i8* %139, i8* %140)
  br label %142

142:                                              ; preds = %137, %132
  br label %120

143:                                              ; preds = %120
  br label %249

144:                                              ; preds = %105
  %145 = load i8*, i8** %8, align 8
  %146 = icmp eq i8* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %249

148:                                              ; preds = %144
  %149 = load i8*, i8** %9, align 8
  %150 = call i32 @IsWhitespace(i8* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  br label %249

153:                                              ; preds = %148
  %154 = load i8*, i8** %8, align 8
  %155 = call i64 @strcmp(i8* %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  store i8** %12, i8*** %20, align 8
  br label %186

158:                                              ; preds = %153
  %159 = load i8*, i8** %8, align 8
  %160 = call i64 @strcmp(i8* %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  store i8** %13, i8*** %20, align 8
  br label %185

163:                                              ; preds = %158
  %164 = load i8*, i8** %8, align 8
  %165 = call i64 @strcmp(i8* %164, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  store i8** %14, i8*** %20, align 8
  br label %184

168:                                              ; preds = %163
  %169 = load i8*, i8** %8, align 8
  %170 = call i64 @strcmp(i8* %169, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  store i8** %15, i8*** %20, align 8
  br label %183

173:                                              ; preds = %168
  %174 = load i8*, i8** %8, align 8
  %175 = call i64 @strcmp(i8* %174, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %173
  store i8** %16, i8*** %20, align 8
  br label %182

178:                                              ; preds = %173
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Warn(%struct.TYPE_8__* %179, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* %180)
  br label %249

182:                                              ; preds = %177
  br label %183

183:                                              ; preds = %182, %172
  br label %184

184:                                              ; preds = %183, %167
  br label %185

185:                                              ; preds = %184, %162
  br label %186

186:                                              ; preds = %185, %157
  %187 = load i8**, i8*** %20, align 8
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @free(i8* %188)
  %190 = load i8*, i8** %9, align 8
  %191 = call i8* @strdup(i8* %190)
  %192 = load i8**, i8*** %20, align 8
  store i8* %191, i8** %192, align 8
  br label %249

193:                                              ; preds = %105
  %194 = load i8*, i8** %9, align 8
  %195 = call i64 @strcmp(i8* %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %246, label %197

197:                                              ; preds = %193
  %198 = load i8*, i8** %11, align 8
  %199 = call i32 @vlc_xml_decode(i8* %198)
  %200 = load i8*, i8** %11, align 8
  %201 = load i8*, i8** %12, align 8
  %202 = call i32* @input_item_New(i8* %200, i8* %201)
  store i32* %202, i32** %10, align 8
  %203 = load i8*, i8** %14, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %209

205:                                              ; preds = %197
  %206 = load i32*, i32** %10, align 8
  %207 = load i8*, i8** %14, align 8
  %208 = call i32 @input_item_SetNowPlaying(i32* %206, i8* %207)
  br label %209

209:                                              ; preds = %205, %197
  %210 = load i8*, i8** %13, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load i32*, i32** %10, align 8
  %214 = load i8*, i8** %13, align 8
  %215 = call i32 @input_item_SetGenre(i32* %213, i8* %214)
  br label %216

216:                                              ; preds = %212, %209
  %217 = load i8*, i8** %15, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %221 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Err(%struct.TYPE_8__* %220, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  br label %222

222:                                              ; preds = %219, %216
  %223 = load i8*, i8** %16, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %227 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Err(%struct.TYPE_8__* %226, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0))
  br label %228

228:                                              ; preds = %225, %222
  %229 = load i32*, i32** %5, align 8
  %230 = load i32*, i32** %10, align 8
  %231 = call i32 @input_item_node_AppendItem(i32* %229, i32* %230)
  %232 = load i32*, i32** %10, align 8
  %233 = call i32 @input_item_Release(i32* %232)
  %234 = load i8*, i8** %12, align 8
  %235 = call i32 @FREENULL(i8* %234)
  %236 = load i8*, i8** %11, align 8
  %237 = call i32 @FREENULL(i8* %236)
  %238 = load i8*, i8** %13, align 8
  %239 = call i32 @FREENULL(i8* %238)
  %240 = load i8*, i8** %16, align 8
  %241 = call i32 @FREENULL(i8* %240)
  %242 = load i8*, i8** %15, align 8
  %243 = call i32 @FREENULL(i8* %242)
  %244 = load i8*, i8** %14, align 8
  %245 = call i32 @FREENULL(i8* %244)
  br label %246

246:                                              ; preds = %228, %193
  %247 = load i8*, i8** %8, align 8
  %248 = call i32 @FREENULL(i8* %247)
  br label %249

249:                                              ; preds = %105, %246, %186, %178, %152, %147, %143
  br label %101

250:                                              ; preds = %101
  %251 = load i32, i32* %6, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %255 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Warn(%struct.TYPE_8__* %254, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %256

256:                                              ; preds = %253, %250
  br label %257

257:                                              ; preds = %256, %118, %67, %59, %47, %40
  %258 = load i8*, i8** %8, align 8
  %259 = call i32 @free(i8* %258)
  %260 = load i32*, i32** %7, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %265

262:                                              ; preds = %257
  %263 = load i32*, i32** %7, align 8
  %264 = call i32 @xml_ReaderDelete(i32* %263)
  br label %265

265:                                              ; preds = %262, %257
  %266 = load i32, i32* %6, align 4
  store i32 %266, i32* %3, align 4
  br label %267

267:                                              ; preds = %265, %35
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local i32* @GetCurrentItem(%struct.TYPE_8__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @vlc_stream_ReadLine(i32) #1

declare dso_local i32* @xml_ReaderCreate(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @xml_ReaderNextNode(i32*, i8**) #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @xml_ReaderNextAttr(i32*, i8**) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @input_item_SetName(i32*, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @IsWhitespace(i8*) #1

declare dso_local i32 @vlc_xml_decode(i8*) #1

declare dso_local i32* @input_item_New(i8*, i8*) #1

declare dso_local i32 @input_item_SetNowPlaying(i32*, i8*) #1

declare dso_local i32 @input_item_SetGenre(i32*, i8*) #1

declare dso_local i32 @input_item_node_AppendItem(i32*, i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

declare dso_local i32 @FREENULL(i8*) #1

declare dso_local i32 @xml_ReaderDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
