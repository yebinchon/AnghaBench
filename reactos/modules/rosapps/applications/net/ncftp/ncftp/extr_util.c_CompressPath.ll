; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_util.c_CompressPath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_util.c_CompressPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CompressPath(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i8*, i8** %4, align 8
  store i8 0, i8* %19, align 1
  br label %292

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = getelementptr inbounds i8, i8* %25, i64 -1
  store i8* %26, i8** %10, align 8
  br label %27

27:                                               ; preds = %169, %20
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 46
  br i1 %32, label %33, label %82

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 -1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 47
  br i1 %42, label %43, label %67

43:                                               ; preds = %37, %33
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %49, %43
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 47
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  br label %64

64:                                               ; preds = %61, %55
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %8, align 8
  br label %81

67:                                               ; preds = %49, %37
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = icmp ult i8* %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %8, align 8
  %74 = load i8, i8* %72, align 1
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %9, align 8
  store i8 %74, i8* %75, align 1
  br label %80

77:                                               ; preds = %67
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %8, align 8
  br label %80

80:                                               ; preds = %77, %71
  br label %81

81:                                               ; preds = %80, %64
  br label %169

82:                                               ; preds = %27
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 47
  br i1 %84, label %85, label %134

85:                                               ; preds = %82
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = icmp ult i8* %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %8, align 8
  %92 = load i8, i8* %90, align 1
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %9, align 8
  store i8 %92, i8* %93, align 1
  br label %98

95:                                               ; preds = %85
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %8, align 8
  br label %98

98:                                               ; preds = %95, %89
  br label %99

99:                                               ; preds = %132, %98
  %100 = load i8*, i8** %8, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %103, 47
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i8*, i8** %8, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %8, align 8
  br label %132

108:                                              ; preds = %99
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, 46
  br i1 %110, label %111, label %130

111:                                              ; preds = %108
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp eq i32 %116, 47
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 2
  store i8* %120, i8** %8, align 8
  br label %129

121:                                              ; preds = %111
  %122 = load i32, i32* %7, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  store i8* %126, i8** %8, align 8
  br label %128

127:                                              ; preds = %121
  br label %133

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %128, %118
  br label %131

130:                                              ; preds = %108
  br label %133

131:                                              ; preds = %129
  br label %132

132:                                              ; preds = %131, %105
  br label %99

133:                                              ; preds = %130, %127
  br label %168

134:                                              ; preds = %82
  %135 = load i32, i32* %7, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %134
  %138 = load i8*, i8** %9, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 -1
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 47
  br i1 %142, label %143, label %151

143:                                              ; preds = %137
  %144 = load i8*, i8** %9, align 8
  %145 = load i8*, i8** %4, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  %147 = icmp ugt i8* %144, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i8*, i8** %9, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 -1
  store i8 0, i8* %150, align 1
  br label %151

151:                                              ; preds = %148, %143, %137
  %152 = load i8*, i8** %9, align 8
  store i8 0, i8* %152, align 1
  br label %170

153:                                              ; preds = %134
  %154 = load i8*, i8** %9, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = icmp ult i8* %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load i8*, i8** %8, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %8, align 8
  %160 = load i8, i8* %158, align 1
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %9, align 8
  store i8 %160, i8* %161, align 1
  br label %166

163:                                              ; preds = %153
  %164 = load i8*, i8** %8, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %8, align 8
  br label %166

166:                                              ; preds = %163, %157
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167, %133
  br label %169

169:                                              ; preds = %168, %81
  br label %27

170:                                              ; preds = %151
  %171 = load i8*, i8** %4, align 8
  store i8* %171, i8** %11, align 8
  br label %172

172:                                              ; preds = %291, %214, %170
  %173 = load i8*, i8** %11, align 8
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %292

177:                                              ; preds = %172
  %178 = load i8*, i8** %11, align 8
  store i8* %178, i8** %12, align 8
  br label %179

179:                                              ; preds = %193, %177
  %180 = load i8*, i8** %11, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %292

185:                                              ; preds = %179
  %186 = load i8*, i8** %11, align 8
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 47
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load i8*, i8** %11, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %11, align 8
  br label %196

193:                                              ; preds = %185
  %194 = load i8*, i8** %11, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %11, align 8
  br label %179

196:                                              ; preds = %190
  %197 = load i8*, i8** %12, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 46
  br i1 %201, label %202, label %216

202:                                              ; preds = %196
  %203 = load i8*, i8** %12, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 46
  br i1 %207, label %208, label %216

208:                                              ; preds = %202
  %209 = load i8*, i8** %12, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 2
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 47
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  br label %172

215:                                              ; preds = %208
  br label %216

216:                                              ; preds = %215, %202, %196
  %217 = load i8*, i8** %11, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 46
  br i1 %221, label %222, label %291

222:                                              ; preds = %216
  %223 = load i8*, i8** %11, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 1
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 46
  br i1 %227, label %228, label %291

228:                                              ; preds = %222
  %229 = load i8*, i8** %11, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 2
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 47
  br i1 %233, label %234, label %264

234:                                              ; preds = %228
  %235 = load i8*, i8** %12, align 8
  %236 = load i8*, i8** %4, align 8
  %237 = icmp eq i8* %235, %236
  br i1 %237, label %238, label %253

238:                                              ; preds = %234
  %239 = load i8*, i8** %4, align 8
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp eq i32 %241, 47
  br i1 %242, label %243, label %253

243:                                              ; preds = %238
  %244 = load i8*, i8** %12, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 1
  %246 = load i8*, i8** %11, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 3
  %248 = load i8*, i8** %11, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 3
  %250 = call i64 @strlen(i8* %249)
  %251 = add nsw i64 %250, 1
  %252 = call i32 @memmove(i8* %245, i8* %247, i64 %251)
  br label %262

253:                                              ; preds = %238, %234
  %254 = load i8*, i8** %12, align 8
  %255 = load i8*, i8** %11, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 3
  %257 = load i8*, i8** %11, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 3
  %259 = call i64 @strlen(i8* %258)
  %260 = add nsw i64 %259, 1
  %261 = call i32 @memmove(i8* %254, i8* %256, i64 %260)
  br label %262

262:                                              ; preds = %253, %243
  %263 = load i8*, i8** %4, align 8
  store i8* %263, i8** %11, align 8
  br label %290

264:                                              ; preds = %228
  %265 = load i8*, i8** %11, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 2
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %288

270:                                              ; preds = %264
  %271 = load i8*, i8** %12, align 8
  %272 = load i8*, i8** %4, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 1
  %274 = icmp ule i8* %271, %273
  br i1 %274, label %275, label %283

275:                                              ; preds = %270
  %276 = load i8*, i8** %4, align 8
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp eq i32 %278, 47
  br i1 %279, label %280, label %283

280:                                              ; preds = %275
  %281 = load i8*, i8** %4, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 1
  store i8 0, i8* %282, align 1
  br label %286

283:                                              ; preds = %275, %270
  %284 = load i8*, i8** %12, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 -1
  store i8 0, i8* %285, align 1
  br label %286

286:                                              ; preds = %283, %280
  %287 = load i8*, i8** %4, align 8
  store i8* %287, i8** %11, align 8
  br label %289

288:                                              ; preds = %264
  br label %289

289:                                              ; preds = %288, %286
  br label %290

290:                                              ; preds = %289, %262
  br label %291

291:                                              ; preds = %290, %222, %216
  br label %172

292:                                              ; preds = %18, %184, %172
  ret void
}

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
