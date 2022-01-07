; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/font/ftfd/extr_sprintf.c_number.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/font/ftfd/extr_sprintf.c_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"0123456789abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@LARGE = common dso_local global i32 0, align 4
@LEFT = common dso_local global i32 0, align 4
@ZEROPAD = common dso_local global i32 0, align 4
@SIGN = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@SPACE = common dso_local global i32 0, align 4
@SPECIAL = common dso_local global i32 0, align 4
@REMOVEHEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64, i32, i32, i32, i32)* @number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @number(i8* %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca [66 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @LARGE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i8*, i8** %21, align 8
  br label %31

29:                                               ; preds = %7
  %30 = load i8*, i8** %20, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i8* [ %28, %27 ], [ %30, %29 ]
  store i8* %32, i8** %19, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @LEFT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* @ZEROPAD, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %15, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %37, %31
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = icmp sgt i32 %46, 36
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %42
  store i8* null, i8** %8, align 8
  br label %279

49:                                               ; preds = %45
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @ZEROPAD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 48, i32 32
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @SIGN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %49
  %62 = load i64, i64* %11, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  store i8 45, i8* %17, align 1
  %65 = load i64, i64* %11, align 8
  %66 = sub nsw i64 0, %65
  store i64 %66, i64* %11, align 8
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %13, align 4
  br label %87

69:                                               ; preds = %61
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @PLUS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  store i8 43, i8* %17, align 1
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %13, align 4
  br label %86

77:                                               ; preds = %69
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @SPACE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  store i8 32, i8* %17, align 1
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %82, %77
  br label %86

86:                                               ; preds = %85, %74
  br label %87

87:                                               ; preds = %86, %64
  br label %88

88:                                               ; preds = %87, %49
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @SPECIAL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @REMOVEHEX, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i32, i32* %12, align 4
  %100 = icmp eq i32 %99, 16
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %13, align 4
  %103 = sub nsw i32 %102, 2
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %93, %88
  store i32 0, i32* %22, align 4
  %106 = load i64, i64* %11, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32, i32* %22, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %22, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds [66 x i8], [66 x i8]* %18, i64 0, i64 %114
  store i8 48, i8* %115, align 1
  br label %131

116:                                              ; preds = %108, %105
  br label %117

117:                                              ; preds = %120, %116
  %118 = load i64, i64* %11, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load i8*, i8** %19, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i64 @do_div(i64* %11, i32 %122)
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = load i32, i32* %22, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %22, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds [66 x i8], [66 x i8]* %18, i64 0, i64 %128
  store i8 %125, i8* %129, align 1
  br label %117

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130, %111
  %132 = load i32, i32* %22, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* %22, align 4
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %135, %131
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %13, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* @ZEROPAD, align 4
  %143 = load i32, i32* @LEFT, align 4
  %144 = add nsw i32 %142, %143
  %145 = and i32 %141, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %162, label %147

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %158, %147
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %13, align 4
  %151 = icmp sgt i32 %149, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %148
  %153 = load i8*, i8** %9, align 8
  %154 = load i8*, i8** %10, align 8
  %155 = icmp ule i8* %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i8*, i8** %9, align 8
  store i8 32, i8* %157, align 1
  br label %158

158:                                              ; preds = %156, %152
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %9, align 8
  br label %148

161:                                              ; preds = %148
  br label %162

162:                                              ; preds = %161, %137
  %163 = load i8, i8* %17, align 1
  %164 = icmp ne i8 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %162
  %166 = load i8*, i8** %9, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = icmp ule i8* %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load i8, i8* %17, align 1
  %171 = load i8*, i8** %9, align 8
  store i8 %170, i8* %171, align 1
  br label %172

172:                                              ; preds = %169, %165
  %173 = load i8*, i8** %9, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %9, align 8
  br label %175

175:                                              ; preds = %172, %162
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* @SPECIAL, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %209

180:                                              ; preds = %175
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* @REMOVEHEX, align 4
  %183 = and i32 %181, %182
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %209

185:                                              ; preds = %180
  %186 = load i32, i32* %12, align 4
  %187 = icmp eq i32 %186, 16
  br i1 %187, label %188, label %208

188:                                              ; preds = %185
  %189 = load i8*, i8** %9, align 8
  %190 = load i8*, i8** %10, align 8
  %191 = icmp ule i8* %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = load i8*, i8** %9, align 8
  store i8 48, i8* %193, align 1
  br label %194

194:                                              ; preds = %192, %188
  %195 = load i8*, i8** %9, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %9, align 8
  %197 = load i8*, i8** %9, align 8
  %198 = load i8*, i8** %10, align 8
  %199 = icmp ule i8* %197, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %194
  %201 = load i8*, i8** %19, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 33
  %203 = load i8, i8* %202, align 1
  %204 = load i8*, i8** %9, align 8
  store i8 %203, i8* %204, align 1
  br label %205

205:                                              ; preds = %200, %194
  %206 = load i8*, i8** %9, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %9, align 8
  br label %208

208:                                              ; preds = %205, %185
  br label %209

209:                                              ; preds = %208, %180, %175
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* @LEFT, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %230, label %214

214:                                              ; preds = %209
  br label %215

215:                                              ; preds = %226, %214
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %13, align 4
  %218 = icmp sgt i32 %216, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %215
  %220 = load i8*, i8** %9, align 8
  %221 = load i8*, i8** %10, align 8
  %222 = icmp ule i8* %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i8, i8* %16, align 1
  %225 = load i8*, i8** %9, align 8
  store i8 %224, i8* %225, align 1
  br label %226

226:                                              ; preds = %223, %219
  %227 = load i8*, i8** %9, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %9, align 8
  br label %215

229:                                              ; preds = %215
  br label %230

230:                                              ; preds = %229, %209
  br label %231

231:                                              ; preds = %242, %230
  %232 = load i32, i32* %22, align 4
  %233 = load i32, i32* %14, align 4
  %234 = add nsw i32 %233, -1
  store i32 %234, i32* %14, align 4
  %235 = icmp slt i32 %232, %233
  br i1 %235, label %236, label %245

236:                                              ; preds = %231
  %237 = load i8*, i8** %9, align 8
  %238 = load i8*, i8** %10, align 8
  %239 = icmp ule i8* %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = load i8*, i8** %9, align 8
  store i8 48, i8* %241, align 1
  br label %242

242:                                              ; preds = %240, %236
  %243 = load i8*, i8** %9, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %9, align 8
  br label %231

245:                                              ; preds = %231
  br label %246

246:                                              ; preds = %260, %245
  %247 = load i32, i32* %22, align 4
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %22, align 4
  %249 = icmp sgt i32 %247, 0
  br i1 %249, label %250, label %263

250:                                              ; preds = %246
  %251 = load i8*, i8** %9, align 8
  %252 = load i8*, i8** %10, align 8
  %253 = icmp ule i8* %251, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %250
  %255 = load i32, i32* %22, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [66 x i8], [66 x i8]* %18, i64 0, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = load i8*, i8** %9, align 8
  store i8 %258, i8* %259, align 1
  br label %260

260:                                              ; preds = %254, %250
  %261 = load i8*, i8** %9, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %9, align 8
  br label %246

263:                                              ; preds = %246
  br label %264

264:                                              ; preds = %274, %263
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 %265, -1
  store i32 %266, i32* %13, align 4
  %267 = icmp sgt i32 %265, 0
  br i1 %267, label %268, label %277

268:                                              ; preds = %264
  %269 = load i8*, i8** %9, align 8
  %270 = load i8*, i8** %10, align 8
  %271 = icmp ule i8* %269, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %268
  %273 = load i8*, i8** %9, align 8
  store i8 32, i8* %273, align 1
  br label %274

274:                                              ; preds = %272, %268
  %275 = load i8*, i8** %9, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %9, align 8
  br label %264

277:                                              ; preds = %264
  %278 = load i8*, i8** %9, align 8
  store i8* %278, i8** %8, align 8
  br label %279

279:                                              ; preds = %277, %48
  %280 = load i8*, i8** %8, align 8
  ret i8* %280
}

declare dso_local i64 @do_div(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
