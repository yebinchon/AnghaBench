; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_HelpCmd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_HelpCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 }

@gUnusedArg = common dso_local global i32 0, align 4
@gNumCommands = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"showall\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"helpall\00", align 1
@.str.2 = private unnamed_addr constant [145 x i8] c"Commands may be abbreviated.  'help showall' shows hidden and unsupported \0Acommands.  'help <command>' gives a brief description of <command>.\0A\0A\00", align 1
@gCommands = common dso_local global %struct.TYPE_9__* null, align 8
@kCmdHidden = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%%-%ds\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@kAmbiguousCommand = common dso_local global %struct.TYPE_9__* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"%s: ambiguous command name.\0A\00", align 1
@kNoCommand = common dso_local global %struct.TYPE_9__* null, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"%s: no such command.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HelpCmd(i32 %0, i8** %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca [16 x i8], align 16
  %24 = alloca [64 x i8*], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* @gUnusedArg, align 4
  %26 = call i32 @ARGSUSED(i32 %25)
  %27 = load i32, i32* @gNumCommands, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 64
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %47

34:                                               ; preds = %4
  %35 = load i8**, i8*** %6, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load i8**, i8*** %6, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %34, %4
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %215

53:                                               ; preds = %50, %47
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gCommands, align 8
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %83, %53
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @gNumCommands, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %56
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = call i32 @iscntrl(i32 %66) #3
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %60
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @kCmdHidden, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76, %69
  %80 = load i32, i32* %18, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %18, align 4
  br label %82

82:                                               ; preds = %79, %76, %60
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 1
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %9, align 8
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %15, align 4
  br label %56

88:                                               ; preds = %56
  %89 = getelementptr inbounds [64 x i8*], [64 x i8*]* %24, i64 0, i64 0
  %90 = bitcast i8** %89 to i8*
  %91 = call i32 @memset(i8* %90, i32 0, i32 512)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gCommands, align 8
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %15, align 4
  br label %93

93:                                               ; preds = %136, %88
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @gNumCommands, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %141

97:                                               ; preds = %93
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = call i32 @iscntrl(i32 %103) #3
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %135, label %106

106:                                              ; preds = %97
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @kCmdHidden, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %113, %106
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds [64 x i8*], [64 x i8*]* %24, i64 0, i64 %122
  store i8* %119, i8** %123, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @strlen(i8* %126)
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %20, align 4
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %21, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %116
  %133 = load i32, i32* %20, align 4
  store i32 %133, i32* %21, align 4
  br label %134

134:                                              ; preds = %132, %116
  br label %135

135:                                              ; preds = %134, %113, %97
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 1
  store %struct.TYPE_9__* %138, %struct.TYPE_9__** %9, align 8
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %15, align 4
  br label %93

141:                                              ; preds = %93
  %142 = call i64 @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %143 = inttoptr i64 %142 to i8*
  store i8* %143, i8** %22, align 8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store i32 80, i32* %19, align 4
  br label %149

146:                                              ; preds = %141
  %147 = load i8*, i8** %22, align 8
  %148 = call i32 @atoi(i8* %147)
  store i32 %148, i32* %19, align 4
  br label %149

149:                                              ; preds = %146, %145
  %150 = load i32, i32* %21, align 4
  %151 = add nsw i32 %150, 2
  store i32 %151, i32* %21, align 4
  %152 = load i32, i32* %19, align 4
  %153 = add nsw i32 %152, 0
  %154 = load i32, i32* %21, align 4
  %155 = sdiv i32 %153, %154
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %17, align 4
  %158 = sdiv i32 %156, %157
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* %17, align 4
  %161 = srem i32 %159, %160
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %149
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %16, align 4
  br label %166

166:                                              ; preds = %163, %149
  store i32 0, i32* %12, align 4
  br label %167

167:                                              ; preds = %211, %166
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %16, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %214

171:                                              ; preds = %167
  store i32 0, i32* %13, align 4
  br label %172

172:                                              ; preds = %206, %171
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %17, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %209

176:                                              ; preds = %172
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* %13, align 4
  %179 = mul nsw i32 %177, %178
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %179, %180
  store i32 %181, i32* %14, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %18, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %205

185:                                              ; preds = %176
  %186 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %17, align 4
  %189 = sub nsw i32 %188, 1
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = load i32, i32* %21, align 4
  br label %196

193:                                              ; preds = %185
  %194 = load i32, i32* %21, align 4
  %195 = sub nsw i32 %194, 2
  br label %196

196:                                              ; preds = %193, %191
  %197 = phi i32 [ %192, %191 ], [ %195, %193 ]
  %198 = call i32 @sprintf(i8* %186, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %197)
  %199 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [64 x i8*], [64 x i8*]* %24, i64 0, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 (i8*, ...) @printf(i8* %199, i8* %203)
  br label %205

205:                                              ; preds = %196, %176
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %13, align 4
  br label %172

209:                                              ; preds = %172
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %12, align 4
  br label %167

214:                                              ; preds = %167
  br label %285

215:                                              ; preds = %50
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %235

218:                                              ; preds = %215
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gCommands, align 8
  store %struct.TYPE_9__* %219, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %15, align 4
  br label %220

220:                                              ; preds = %229, %218
  %221 = load i32, i32* %15, align 4
  %222 = load i32, i32* @gNumCommands, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %234

224:                                              ; preds = %220
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %226 = call i32 @PrintCmdHelp(%struct.TYPE_9__* %225)
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %228 = call i32 @PrintCmdUsage(%struct.TYPE_9__* %227)
  br label %229

229:                                              ; preds = %224
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 1
  store %struct.TYPE_9__* %231, %struct.TYPE_9__** %9, align 8
  %232 = load i32, i32* %15, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %15, align 4
  br label %220

234:                                              ; preds = %220
  br label %284

235:                                              ; preds = %215
  store i32 1, i32* %12, align 4
  br label %236

236:                                              ; preds = %280, %235
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* %5, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %283

240:                                              ; preds = %236
  %241 = load i8**, i8*** %6, align 8
  %242 = load i32, i32* %12, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %241, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = call %struct.TYPE_9__* @GetCommandByName(i8* %245, i32 0)
  store %struct.TYPE_9__* %246, %struct.TYPE_9__** %9, align 8
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kAmbiguousCommand, align 8
  %249 = icmp eq %struct.TYPE_9__* %247, %248
  br i1 %249, label %250, label %257

250:                                              ; preds = %240
  %251 = load i8**, i8*** %6, align 8
  %252 = load i32, i32* %12, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8*, i8** %251, i64 %253
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %255)
  br label %279

257:                                              ; preds = %240
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kNoCommand, align 8
  %260 = icmp eq %struct.TYPE_9__* %258, %259
  br i1 %260, label %261, label %268

261:                                              ; preds = %257
  %262 = load i8**, i8*** %6, align 8
  %263 = load i32, i32* %12, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8*, i8** %262, i64 %264
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %266)
  br label %278

268:                                              ; preds = %257
  %269 = load i32, i32* %12, align 4
  %270 = icmp sgt i32 %269, 1
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %273

273:                                              ; preds = %271, %268
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %275 = call i32 @PrintCmdHelp(%struct.TYPE_9__* %274)
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %277 = call i32 @PrintCmdUsage(%struct.TYPE_9__* %276)
  br label %278

278:                                              ; preds = %273, %261
  br label %279

279:                                              ; preds = %278, %250
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %12, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %12, align 4
  br label %236

283:                                              ; preds = %236
  br label %284

284:                                              ; preds = %283, %234
  br label %285

285:                                              ; preds = %284, %214
  ret void
}

declare dso_local i32 @ARGSUSED(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @iscntrl(i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @PrintCmdHelp(%struct.TYPE_9__*) #1

declare dso_local i32 @PrintCmdUsage(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @GetCommandByName(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
