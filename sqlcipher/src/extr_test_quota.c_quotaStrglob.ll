; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_quota.c_quotaStrglob.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_quota.c_quotaStrglob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @quotaStrglob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quotaStrglob(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %12

12:                                               ; preds = %257, %2
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %4, align 8
  %15 = load i8, i8* %13, align 1
  %16 = sext i8 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %258

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 42
  br i1 %20, label %21, label %117

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  %25 = load i8, i8* %23, align 1
  %26 = sext i8 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = icmp eq i32 %26, 42
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 63
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi i1 [ true, %22 ], [ %30, %28 ]
  br i1 %32, label %33, label %44

33:                                               ; preds = %31
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 63
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  %39 = load i8, i8* %37, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %264

43:                                               ; preds = %36, %33
  br label %22

44:                                               ; preds = %31
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %264

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 91
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %65, %51
  %53 = load i8*, i8** %5, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 -1
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @quotaStrglob(i8* %59, i8* %60)
  %62 = icmp eq i32 %61, 0
  br label %63

63:                                               ; preds = %57, %52
  %64 = phi i1 [ false, %52 ], [ %62, %57 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  br label %52

68:                                               ; preds = %63
  %69 = load i8*, i8** %5, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %3, align 4
  br label %264

74:                                               ; preds = %48
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 47
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %81

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  br label %81

81:                                               ; preds = %79, %78
  %82 = phi i32 [ 92, %78 ], [ %80, %79 ]
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %115, %81
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %5, align 8
  %86 = load i8, i8* %84, align 1
  %87 = sext i8 %86 to i32
  store i32 %87, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %108, %89
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %95, %96
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i1 [ false, %90 ], [ %97, %94 ]
  br i1 %99, label %100, label %109

100:                                              ; preds = %98
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %5, align 8
  %103 = load i8, i8* %101, align 1
  %104 = sext i8 %103 to i32
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %264

108:                                              ; preds = %100
  br label %90

109:                                              ; preds = %98
  %110 = load i8*, i8** %4, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = call i32 @quotaStrglob(i8* %110, i8* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i32 1, i32* %3, align 4
  br label %264

115:                                              ; preds = %109
  br label %83

116:                                              ; preds = %83
  store i32 0, i32* %3, align 4
  br label %264

117:                                              ; preds = %18
  %118 = load i32, i32* %6, align 4
  %119 = icmp eq i32 %118, 63
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %5, align 8
  %123 = load i8, i8* %121, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %264

127:                                              ; preds = %120
  br label %256

128:                                              ; preds = %117
  %129 = load i32, i32* %6, align 4
  %130 = icmp eq i32 %129, 91
  br i1 %130, label %131, label %226

131:                                              ; preds = %128
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %5, align 8
  %134 = load i8, i8* %132, align 1
  %135 = sext i8 %134 to i32
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %264

139:                                              ; preds = %131
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %4, align 8
  %142 = load i8, i8* %140, align 1
  %143 = sext i8 %142 to i32
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp eq i32 %144, 94
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  store i32 1, i32* %9, align 4
  %147 = load i8*, i8** %4, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %4, align 8
  %149 = load i8, i8* %147, align 1
  %150 = sext i8 %149 to i32
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %146, %139
  %152 = load i32, i32* %7, align 4
  %153 = icmp eq i32 %152, 93
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = load i32, i32* %6, align 4
  %156 = icmp eq i32 %155, 93
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 1, i32* %10, align 4
  br label %158

158:                                              ; preds = %157, %154
  %159 = load i8*, i8** %4, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %4, align 8
  %161 = load i8, i8* %159, align 1
  %162 = sext i8 %161 to i32
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %158, %151
  br label %164

164:                                              ; preds = %211, %163
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 93
  br label %170

170:                                              ; preds = %167, %164
  %171 = phi i1 [ false, %164 ], [ %169, %167 ]
  br i1 %171, label %172, label %216

172:                                              ; preds = %170
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %173, 45
  br i1 %174, label %175, label %204

175:                                              ; preds = %172
  %176 = load i8*, i8** %4, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp ne i32 %179, 93
  br i1 %180, label %181, label %204

181:                                              ; preds = %175
  %182 = load i8*, i8** %4, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %204

187:                                              ; preds = %181
  %188 = load i32, i32* %11, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %204

190:                                              ; preds = %187
  %191 = load i8*, i8** %4, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %4, align 8
  %193 = load i8, i8* %191, align 1
  %194 = sext i8 %193 to i32
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp sge i32 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %190
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* %7, align 4
  %201 = icmp sle i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  store i32 1, i32* %10, align 4
  br label %203

203:                                              ; preds = %202, %198, %190
  store i32 0, i32* %11, align 4
  br label %211

204:                                              ; preds = %187, %181, %175, %172
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* %7, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  store i32 1, i32* %10, align 4
  br label %209

209:                                              ; preds = %208, %204
  %210 = load i32, i32* %7, align 4
  store i32 %210, i32* %11, align 4
  br label %211

211:                                              ; preds = %209, %203
  %212 = load i8*, i8** %4, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %4, align 8
  %214 = load i8, i8* %212, align 1
  %215 = sext i8 %214 to i32
  store i32 %215, i32* %7, align 4
  br label %164

216:                                              ; preds = %170
  %217 = load i32, i32* %7, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %216
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* %9, align 4
  %222 = xor i32 %220, %221
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %219, %216
  store i32 0, i32* %3, align 4
  br label %264

225:                                              ; preds = %219
  br label %255

226:                                              ; preds = %128
  %227 = load i32, i32* %6, align 4
  %228 = icmp eq i32 %227, 47
  br i1 %228, label %229, label %245

229:                                              ; preds = %226
  %230 = load i8*, i8** %5, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 0
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp ne i32 %233, 47
  br i1 %234, label %235, label %242

235:                                              ; preds = %229
  %236 = load i8*, i8** %5, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 0
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp ne i32 %239, 92
  br i1 %240, label %241, label %242

241:                                              ; preds = %235
  store i32 0, i32* %3, align 4
  br label %264

242:                                              ; preds = %235, %229
  %243 = load i8*, i8** %5, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %5, align 8
  br label %254

245:                                              ; preds = %226
  %246 = load i32, i32* %6, align 4
  %247 = load i8*, i8** %5, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %5, align 8
  %249 = load i8, i8* %247, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp ne i32 %246, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %245
  store i32 0, i32* %3, align 4
  br label %264

253:                                              ; preds = %245
  br label %254

254:                                              ; preds = %253, %242
  br label %255

255:                                              ; preds = %254, %225
  br label %256

256:                                              ; preds = %255, %127
  br label %257

257:                                              ; preds = %256
  br label %12

258:                                              ; preds = %12
  %259 = load i8*, i8** %5, align 8
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp eq i32 %261, 0
  %263 = zext i1 %262 to i32
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %258, %252, %241, %224, %138, %126, %116, %114, %107, %68, %47, %42
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
