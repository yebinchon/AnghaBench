; ModuleID = '/home/carl/AnghaBench/sqlcipher/mptest/extr_mptest.c_strglob.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/mptest/extr_mptest.c_strglob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strglob(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %11

11:                                               ; preds = %268, %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %4, align 8
  %14 = load i8, i8* %12, align 1
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %269

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 42
  br i1 %19, label %20, label %103

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %42, %20
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  %24 = load i8, i8* %22, align 1
  %25 = sext i8 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = icmp eq i32 %25, 42
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 63
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i1 [ true, %21 ], [ %29, %27 ]
  br i1 %31, label %32, label %43

32:                                               ; preds = %30
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 63
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  %38 = load i8, i8* %36, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %275

42:                                               ; preds = %35, %32
  br label %21

43:                                               ; preds = %30
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %275

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 91
  br i1 %49, label %50, label %73

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 -1
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @strglob(i8* %58, i8* %59)
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %56, %51
  %63 = phi i1 [ false, %51 ], [ %61, %56 ]
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  br label %51

67:                                               ; preds = %62
  %68 = load i8*, i8** %5, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %275

73:                                               ; preds = %47
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %101, %74
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %5, align 8
  %78 = load i8, i8* %76, align 1
  %79 = sext i8 %78 to i32
  store i32 %79, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %94, %81
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %5, align 8
  %89 = load i8, i8* %87, align 1
  %90 = sext i8 %89 to i32
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %275

94:                                               ; preds = %86
  br label %82

95:                                               ; preds = %82
  %96 = load i8*, i8** %4, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @strglob(i8* %96, i8* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 1, i32* %3, align 4
  br label %275

101:                                              ; preds = %95
  br label %75

102:                                              ; preds = %75
  store i32 0, i32* %3, align 4
  br label %275

103:                                              ; preds = %17
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, 63
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %5, align 8
  %109 = load i8, i8* %107, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %275

113:                                              ; preds = %106
  br label %267

114:                                              ; preds = %103
  %115 = load i32, i32* %6, align 4
  %116 = icmp eq i32 %115, 91
  br i1 %116, label %117, label %212

117:                                              ; preds = %114
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %5, align 8
  %120 = load i8, i8* %118, align 1
  %121 = sext i8 %120 to i32
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %275

125:                                              ; preds = %117
  %126 = load i8*, i8** %4, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %4, align 8
  %128 = load i8, i8* %126, align 1
  %129 = sext i8 %128 to i32
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, 94
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  store i32 1, i32* %8, align 4
  %133 = load i8*, i8** %4, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %4, align 8
  %135 = load i8, i8* %133, align 1
  %136 = sext i8 %135 to i32
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %132, %125
  %138 = load i32, i32* %7, align 4
  %139 = icmp eq i32 %138, 93
  br i1 %139, label %140, label %149

140:                                              ; preds = %137
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %141, 93
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 1, i32* %9, align 4
  br label %144

144:                                              ; preds = %143, %140
  %145 = load i8*, i8** %4, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %4, align 8
  %147 = load i8, i8* %145, align 1
  %148 = sext i8 %147 to i32
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %144, %137
  br label %150

150:                                              ; preds = %197, %149
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 93
  br label %156

156:                                              ; preds = %153, %150
  %157 = phi i1 [ false, %150 ], [ %155, %153 ]
  br i1 %157, label %158, label %202

158:                                              ; preds = %156
  %159 = load i32, i32* %7, align 4
  %160 = icmp eq i32 %159, 45
  br i1 %160, label %161, label %190

161:                                              ; preds = %158
  %162 = load i8*, i8** %4, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 93
  br i1 %166, label %167, label %190

167:                                              ; preds = %161
  %168 = load i8*, i8** %4, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %190

173:                                              ; preds = %167
  %174 = load i32, i32* %10, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %190

176:                                              ; preds = %173
  %177 = load i8*, i8** %4, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %4, align 8
  %179 = load i8, i8* %177, align 1
  %180 = sext i8 %179 to i32
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %176
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp sle i32 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  store i32 1, i32* %9, align 4
  br label %189

189:                                              ; preds = %188, %184, %176
  store i32 0, i32* %10, align 4
  br label %197

190:                                              ; preds = %173, %167, %161, %158
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  store i32 1, i32* %9, align 4
  br label %195

195:                                              ; preds = %194, %190
  %196 = load i32, i32* %7, align 4
  store i32 %196, i32* %10, align 4
  br label %197

197:                                              ; preds = %195, %189
  %198 = load i8*, i8** %4, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %4, align 8
  %200 = load i8, i8* %198, align 1
  %201 = sext i8 %200 to i32
  store i32 %201, i32* %7, align 4
  br label %150

202:                                              ; preds = %156
  %203 = load i32, i32* %7, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* %8, align 4
  %208 = xor i32 %206, %207
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %205, %202
  store i32 0, i32* %3, align 4
  br label %275

211:                                              ; preds = %205
  br label %266

212:                                              ; preds = %114
  %213 = load i32, i32* %6, align 4
  %214 = icmp eq i32 %213, 35
  br i1 %214, label %215, label %256

215:                                              ; preds = %212
  %216 = load i8*, i8** %5, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 0
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 45
  br i1 %220, label %227, label %221

221:                                              ; preds = %215
  %222 = load i8*, i8** %5, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 0
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 43
  br i1 %226, label %227, label %236

227:                                              ; preds = %221, %215
  %228 = load i8*, i8** %5, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 1
  %230 = load i8, i8* %229, align 1
  %231 = call i64 @ISDIGIT(i8 signext %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %227
  %234 = load i8*, i8** %5, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %5, align 8
  br label %236

236:                                              ; preds = %233, %227, %221
  %237 = load i8*, i8** %5, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 0
  %239 = load i8, i8* %238, align 1
  %240 = call i64 @ISDIGIT(i8 signext %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %236
  store i32 0, i32* %3, align 4
  br label %275

243:                                              ; preds = %236
  %244 = load i8*, i8** %5, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %5, align 8
  br label %246

246:                                              ; preds = %252, %243
  %247 = load i8*, i8** %5, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 0
  %249 = load i8, i8* %248, align 1
  %250 = call i64 @ISDIGIT(i8 signext %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %246
  %253 = load i8*, i8** %5, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %5, align 8
  br label %246

255:                                              ; preds = %246
  br label %265

256:                                              ; preds = %212
  %257 = load i32, i32* %6, align 4
  %258 = load i8*, i8** %5, align 8
  %259 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %259, i8** %5, align 8
  %260 = load i8, i8* %258, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp ne i32 %257, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  store i32 0, i32* %3, align 4
  br label %275

264:                                              ; preds = %256
  br label %265

265:                                              ; preds = %264, %255
  br label %266

266:                                              ; preds = %265, %211
  br label %267

267:                                              ; preds = %266, %113
  br label %268

268:                                              ; preds = %267
  br label %11

269:                                              ; preds = %11
  %270 = load i8*, i8** %5, align 8
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp eq i32 %272, 0
  %274 = zext i1 %273 to i32
  store i32 %274, i32* %3, align 4
  br label %275

275:                                              ; preds = %269, %263, %242, %210, %124, %112, %102, %100, %93, %67, %46, %41
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

declare dso_local i64 @ISDIGIT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
