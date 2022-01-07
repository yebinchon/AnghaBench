; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_reader.c__RTFGetToken2.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_reader.c__RTFGetToken2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i64, i32, i32, i8*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@rtfUnknown = common dso_local global i8* null, align 8
@rtfNoParam = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@rtfEOF = common dso_local global i8* null, align 8
@rtfGroup = common dso_local global i8* null, align 8
@rtfBeginGroup = common dso_local global i32 0, align 4
@rtfEndGroup = common dso_local global i32 0, align 4
@rtfControl = common dso_local global i8* null, align 8
@rtfSpecialChar = common dso_local global i32 0, align 4
@rtfTab = common dso_local global i32 0, align 4
@rtfText = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @_RTFGetToken2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_RTFGetToken2(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load i8*, i8** @rtfUnknown, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  store i8* %6, i8** %8, align 8
  %9 = load i32, i32* @rtfNoParam, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %17, align 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @EOF, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = trunc i32 %27 to i8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = getelementptr inbounds i8, i8* %31, i64 %34
  store i8 %28, i8* %36, align 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i32, i32* @EOF, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  br label %57

47:                                               ; preds = %1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = call i32 @GetChar(%struct.TYPE_9__* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @EOF, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i8*, i8** @rtfEOF, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  br label %287

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %23
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 123
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i8*, i8** @rtfGroup, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 5
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @rtfBeginGroup, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  br label %287

67:                                               ; preds = %57
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 125
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i8*, i8** @rtfGroup, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @rtfEndGroup, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  br label %287

77:                                               ; preds = %67
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 92
  br i1 %79, label %80, label %101

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 9
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i8*, i8** @rtfControl, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @rtfSpecialChar, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @rtfTab, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 8
  br label %100

93:                                               ; preds = %80
  %94 = load i8*, i8** @rtfText, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %93, %83
  br label %287

101:                                              ; preds = %77
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %103 = call i32 @GetChar(%struct.TYPE_9__* %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* @EOF, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %287

107:                                              ; preds = %101
  %108 = load i32, i32* %4, align 4
  %109 = call i64 @isalpha(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %179, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %112, 39
  br i1 %113, label %114, label %154

114:                                              ; preds = %111
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %116 = call i32 @GetChar(%struct.TYPE_9__* %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* @EOF, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %144

119:                                              ; preds = %114
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %121 = call i32 @GetChar(%struct.TYPE_9__* %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* @EOF, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %119
  %125 = load i32, i32* %4, align 4
  %126 = call i64 @isxdigit(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %124
  %129 = load i32, i32* %5, align 4
  %130 = call i64 @isxdigit(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %128
  %133 = load i8*, i8** @rtfText, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 5
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @RTFCharToHex(i32 %136)
  %138 = mul nsw i32 %137, 16
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @RTFCharToHex(i32 %139)
  %141 = add nsw i32 %138, %140
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 4
  br label %287

144:                                              ; preds = %128, %124, %119, %114
  %145 = load i8*, i8** @rtfEOF, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 5
  store i8* %145, i8** %147, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 6
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  store i32 -14, i32* %153, align 4
  br label %287

154:                                              ; preds = %111
  %155 = load i32, i32* %4, align 4
  %156 = icmp eq i32 %155, 58
  br i1 %156, label %166, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %4, align 4
  %159 = icmp eq i32 %158, 123
  br i1 %159, label %166, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %4, align 4
  %162 = icmp eq i32 %161, 125
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %4, align 4
  %165 = icmp eq i32 %164, 92
  br i1 %165, label %166, label %173

166:                                              ; preds = %163, %160, %157, %154
  %167 = load i8*, i8** @rtfText, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 5
  store i8* %167, i8** %169, align 8
  %170 = load i32, i32* %4, align 4
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 4
  br label %287

173:                                              ; preds = %163
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @Lookup(%struct.TYPE_9__* %174, i8* %177)
  br label %287

179:                                              ; preds = %107
  br label %180

180:                                              ; preds = %190, %179
  %181 = load i32, i32* %4, align 4
  %182 = call i64 @isalpha(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %186 = call i32 @GetChar(%struct.TYPE_9__* %185)
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* @EOF, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %191

190:                                              ; preds = %184
  br label %180

191:                                              ; preds = %189, %180
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @EOF, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %204

195:                                              ; preds = %191
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = sub i64 %201, 1
  %203 = getelementptr inbounds i8, i8* %198, i64 %202
  store i8 0, i8* %203, align 1
  br label %204

204:                                              ; preds = %195, %191
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @Lookup(%struct.TYPE_9__* %205, i8* %208)
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* @EOF, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %224

213:                                              ; preds = %204
  %214 = load i32, i32* %4, align 4
  %215 = trunc i32 %214 to i8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = sub i64 %221, 1
  %223 = getelementptr inbounds i8, i8* %218, i64 %222
  store i8 %215, i8* %223, align 1
  br label %224

224:                                              ; preds = %213, %204
  store i32 1, i32* %3, align 4
  %225 = load i32, i32* %4, align 4
  %226 = icmp eq i32 %225, 45
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  store i32 -1, i32* %3, align 4
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %229 = call i32 @GetChar(%struct.TYPE_9__* %228)
  store i32 %229, i32* %4, align 4
  br label %230

230:                                              ; preds = %227, %224
  %231 = load i32, i32* %4, align 4
  %232 = load i32, i32* @EOF, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %267

234:                                              ; preds = %230
  %235 = load i32, i32* %4, align 4
  %236 = call i64 @isdigit(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %267

238:                                              ; preds = %234
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  store i32 0, i32* %240, align 8
  br label %241

241:                                              ; preds = %260, %238
  %242 = load i32, i32* %4, align 4
  %243 = call i64 @isdigit(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %261

245:                                              ; preds = %241
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = mul nsw i32 %248, 10
  %250 = load i32, i32* %4, align 4
  %251 = add nsw i32 %249, %250
  %252 = sub nsw i32 %251, 48
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %256 = call i32 @GetChar(%struct.TYPE_9__* %255)
  store i32 %256, i32* %4, align 4
  %257 = load i32, i32* @EOF, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %245
  br label %261

260:                                              ; preds = %245
  br label %241

261:                                              ; preds = %259, %241
  %262 = load i32, i32* %3, align 4
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = mul nsw i32 %265, %262
  store i32 %266, i32* %264, align 8
  br label %267

267:                                              ; preds = %261, %234, %230
  %268 = load i32, i32* %4, align 4
  %269 = load i32, i32* @EOF, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %287

271:                                              ; preds = %267
  %272 = load i32, i32* %4, align 4
  %273 = icmp ne i32 %272, 32
  br i1 %273, label %274, label %278

274:                                              ; preds = %271
  %275 = load i32, i32* %4, align 4
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 3
  store i32 %275, i32* %277, align 8
  br label %278

278:                                              ; preds = %274, %271
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 1
  %281 = load i8*, i8** %280, align 8
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = add i64 %284, -1
  store i64 %285, i64* %283, align 8
  %286 = getelementptr inbounds i8, i8* %281, i64 %285
  store i8 0, i8* %286, align 1
  br label %287

287:                                              ; preds = %52, %60, %70, %100, %106, %132, %144, %166, %173, %278, %267
  ret void
}

declare dso_local i32 @GetChar(%struct.TYPE_9__*) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i64 @isxdigit(i32) #1

declare dso_local i32 @RTFCharToHex(i32) #1

declare dso_local i32 @Lookup(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @isdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
