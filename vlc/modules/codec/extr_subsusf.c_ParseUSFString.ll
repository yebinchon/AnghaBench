; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_ParseUSFString.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_ParseUSFString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"<karaoke \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"<karaoke>\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"</karaoke>\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"<image \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"<image>\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"</image>\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"colorkey\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_14__*, i8*)* @ParseUSFString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @ParseUSFString(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i8* %1, i8** %4, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %7, align 8
  br label %22

22:                                               ; preds = %262, %2
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %265

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 60
  br i1 %30, label %31, label %262

31:                                               ; preds = %26
  store i8* null, i8** %8, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strncasecmp(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @strncasecmp(i8* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %113, label %39

39:                                               ; preds = %35, %31
  %40 = load i8*, i8** %4, align 8
  %41 = call i8* @strcasestr(i8* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %112

44:                                               ; preds = %39
  store i8* null, i8** %10, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 9
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 9
  %50 = ptrtoint i8* %47 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = call i8* @strndup(i8* %46, i32 %53)
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %106

57:                                               ; preds = %44
  %58 = load i8*, i8** %11, align 8
  %59 = call i8* @CreatePlainText(i8* %58)
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i8*, i8** %10, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %105

64:                                               ; preds = %57
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.TYPE_13__* @CreateTextRegion(%struct.TYPE_14__* %65, i8* %66, i32 %69)
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %9, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %72 = icmp ne %struct.TYPE_13__* %71, null
  br i1 %72, label %73, label %101

73:                                               ; preds = %64
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load i8*, i8** %10, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i8* %80, i8** %84, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = icmp ne %struct.TYPE_13__* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %73
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %88, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %88, %struct.TYPE_13__** %6, align 8
  br label %100

89:                                               ; preds = %73
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %91 = icmp ne %struct.TYPE_13__* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %95, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  store %struct.TYPE_13__* %98, %struct.TYPE_13__** %7, align 8
  br label %99

99:                                               ; preds = %92, %89
  br label %100

100:                                              ; preds = %99, %87
  br label %104

101:                                              ; preds = %64
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @free(i8* %102)
  br label %104

104:                                              ; preds = %101, %100
  br label %105

105:                                              ; preds = %104, %57
  br label %106

106:                                              ; preds = %105, %44
  %107 = load i8*, i8** %8, align 8
  %108 = call i64 @strcspn(i8* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %109 = add nsw i64 %108, 1
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 %109
  store i8* %111, i8** %8, align 8
  br label %112

112:                                              ; preds = %106, %39
  br label %251

113:                                              ; preds = %35
  %114 = load i8*, i8** %4, align 8
  %115 = call i32 @strncasecmp(i8* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i8*, i8** %4, align 8
  %119 = call i32 @strncasecmp(i8* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 7)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %206, label %121

121:                                              ; preds = %117, %113
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  %122 = load i8*, i8** %4, align 8
  %123 = call i8* @strcasestr(i8* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i8* %123, i8** %8, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = call i8* @strchr(i8* %124, i8 signext 62)
  store i8* %125, i8** %13, align 8
  store i32 -1, i32* %14, align 4
  %126 = load i8*, i8** %4, align 8
  %127 = call i8* @GrabAttributeValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %126)
  store i8* %127, i8** %15, align 8
  %128 = load i8*, i8** %15, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %143

130:                                              ; preds = %121
  %131 = load i8*, i8** %15, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 35
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i8*, i8** %15, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = call i32 @strtol(i8* %137, i32* null, i32 16)
  %139 = and i32 %138, 16777215
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %135, %130
  %141 = load i8*, i8** %15, align 8
  %142 = call i32 @free(i8* %141)
  br label %143

143:                                              ; preds = %140, %121
  %144 = load i8*, i8** %13, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %171

146:                                              ; preds = %143
  %147 = load i8*, i8** %13, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = icmp ult i8* %147, %148
  br i1 %149, label %150, label %171

150:                                              ; preds = %146
  %151 = load i8*, i8** %13, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8*, i8** %8, align 8
  %154 = load i8*, i8** %13, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 1
  %156 = ptrtoint i8* %153 to i64
  %157 = ptrtoint i8* %155 to i64
  %158 = sub i64 %156, %157
  %159 = trunc i64 %158 to i32
  %160 = call i8* @strndup(i8* %152, i32 %159)
  store i8* %160, i8** %16, align 8
  %161 = load i8*, i8** %16, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %170

163:                                              ; preds = %150
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %165 = load i8*, i8** %16, align 8
  %166 = load i32, i32* %14, align 4
  %167 = call %struct.TYPE_13__* @LoadEmbeddedImage(%struct.TYPE_14__* %164, i8* %165, i32 %166)
  store %struct.TYPE_13__* %167, %struct.TYPE_13__** %12, align 8
  %168 = load i8*, i8** %16, align 8
  %169 = call i32 @free(i8* %168)
  br label %170

170:                                              ; preds = %163, %150
  br label %171

171:                                              ; preds = %170, %146, %143
  %172 = load i8*, i8** %8, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load i8*, i8** %8, align 8
  %176 = call i64 @strcspn(i8* %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %177 = add nsw i64 %176, 1
  %178 = load i8*, i8** %8, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 %177
  store i8* %179, i8** %8, align 8
  br label %180

180:                                              ; preds = %174, %171
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %182 = icmp ne %struct.TYPE_13__* %181, null
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %185 = load i8*, i8** %4, align 8
  %186 = call i32 @SetupPositions(%struct.TYPE_13__* %184, i8* %185)
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %188, align 8
  br label %189

189:                                              ; preds = %183, %180
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %191 = icmp ne %struct.TYPE_13__* %190, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %189
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %193, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %193, %struct.TYPE_13__** %6, align 8
  br label %205

194:                                              ; preds = %189
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %196 = icmp ne %struct.TYPE_13__* %195, null
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  store %struct.TYPE_13__* %198, %struct.TYPE_13__** %200, align 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %202, align 8
  store %struct.TYPE_13__* %203, %struct.TYPE_13__** %7, align 8
  br label %204

204:                                              ; preds = %197, %194
  br label %205

205:                                              ; preds = %204, %192
  br label %250

206:                                              ; preds = %117
  %207 = load i8*, i8** %4, align 8
  %208 = load i8*, i8** %4, align 8
  %209 = call i32 @strlen(i8* %208)
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %207, i64 %210
  store i8* %211, i8** %8, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %213 = load i8*, i8** %4, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call %struct.TYPE_13__* @CreateTextRegion(%struct.TYPE_14__* %212, i8* %213, i32 %216)
  store %struct.TYPE_13__* %217, %struct.TYPE_13__** %17, align 8
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %219 = icmp ne %struct.TYPE_13__* %218, null
  br i1 %219, label %220, label %233

220:                                              ; preds = %206
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @free(i8* %225)
  %227 = load i8*, i8** %4, align 8
  %228 = call i8* @CreatePlainText(i8* %227)
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  store i8* %228, i8** %232, align 8
  br label %233

233:                                              ; preds = %220, %206
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %235 = icmp ne %struct.TYPE_13__* %234, null
  br i1 %235, label %238, label %236

236:                                              ; preds = %233
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %237, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %237, %struct.TYPE_13__** %6, align 8
  br label %249

238:                                              ; preds = %233
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %240 = icmp ne %struct.TYPE_13__* %239, null
  br i1 %240, label %241, label %248

241:                                              ; preds = %238
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  store %struct.TYPE_13__* %242, %struct.TYPE_13__** %244, align 8
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %246, align 8
  store %struct.TYPE_13__* %247, %struct.TYPE_13__** %7, align 8
  br label %248

248:                                              ; preds = %241, %238
  br label %249

249:                                              ; preds = %248, %236
  br label %250

250:                                              ; preds = %249, %205
  br label %251

251:                                              ; preds = %250, %112
  %252 = load i8*, i8** %8, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load i8*, i8** %8, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 -1
  store i8* %256, i8** %4, align 8
  br label %257

257:                                              ; preds = %254, %251
  %258 = load i8*, i8** %4, align 8
  %259 = call i64 @strcspn(i8* %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %260 = load i8*, i8** %4, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 %259
  store i8* %261, i8** %4, align 8
  br label %262

262:                                              ; preds = %257, %26
  %263 = load i8*, i8** %4, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %4, align 8
  br label %22

265:                                              ; preds = %22
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  ret %struct.TYPE_13__* %266
}

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @strcasestr(i8*, i8*) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i8* @CreatePlainText(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_13__* @CreateTextRegion(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @GrabAttributeValue(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local %struct.TYPE_13__* @LoadEmbeddedImage(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @SetupPositions(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
