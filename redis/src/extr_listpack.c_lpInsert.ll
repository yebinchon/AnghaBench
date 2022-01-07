; ModuleID = '/home/carl/AnghaBench/redis/src/extr_listpack.c_lpInsert.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_listpack.c_lpInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LP_MAX_INT_ENCODING_LEN = common dso_local global i32 0, align 4
@LP_MAX_BACKLEN_SIZE = common dso_local global i32 0, align 4
@LP_REPLACE = common dso_local global i32 0, align 4
@LP_AFTER = common dso_local global i32 0, align 4
@LP_BEFORE = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@LP_EOF = common dso_local global i8 0, align 1
@LP_ENCODING_INT = common dso_local global i32 0, align 4
@LP_HDR_NUMELE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lpInsert(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  %28 = load i32, i32* @LP_MAX_INT_ENCODING_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %14, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %15, align 8
  %32 = load i32, i32* @LP_MAX_BACKLEN_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %16, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %6
  %38 = load i32, i32* @LP_REPLACE, align 4
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %37, %6
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @LP_AFTER, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i8*, i8** %11, align 8
  %45 = call i8* @lpSkip(i8* %44)
  store i8* %45, i8** %11, align 8
  %46 = load i32, i32* @LP_BEFORE, align 4
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  store i64 %52, i64* %18, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @lpEncodeGetType(i8* %56, i32 %57, i8* %31, i32* %17)
  store i32 %58, i32* %19, align 4
  br label %60

59:                                               ; preds = %47
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i8*, i8** %9, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %17, align 4
  %65 = call i64 @lpEncodeBacklen(i8* %34, i32 %64)
  br label %67

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %63
  %68 = phi i64 [ %65, %63 ], [ 0, %66 ]
  store i64 %68, i64* %20, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @lpGetTotalBytes(i8* %69)
  store i32 %70, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @LP_REPLACE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @lpCurrentEncodedSize(i8* %75)
  store i32 %76, i32* %22, align 4
  %77 = load i32, i32* %22, align 4
  %78 = call i64 @lpEncodeBacklen(i8* null, i32 %77)
  %79 = load i32, i32* %22, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %22, align 4
  br label %83

83:                                               ; preds = %74, %67
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %20, align 8
  %89 = add i64 %87, %88
  %90 = load i32, i32* %22, align 4
  %91 = sext i32 %90 to i64
  %92 = sub i64 %89, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %23, align 4
  %94 = load i32, i32* %23, align 4
  %95 = load i32, i32* @UINT32_MAX, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %83
  store i8* null, i8** %7, align 8
  store i32 1, i32* %24, align 4
  br label %254

98:                                               ; preds = %83
  %99 = load i8*, i8** %8, align 8
  %100 = load i64, i64* %18, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %25, align 8
  %102 = load i32, i32* %23, align 4
  %103 = load i32, i32* %21, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %98
  %106 = load i8*, i8** %8, align 8
  %107 = load i32, i32* %23, align 4
  %108 = call i8* @lp_realloc(i8* %106, i32 %107)
  store i8* %108, i8** %8, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i8* null, i8** %7, align 8
  store i32 1, i32* %24, align 4
  br label %254

111:                                              ; preds = %105
  %112 = load i8*, i8** %8, align 8
  %113 = load i64, i64* %18, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %25, align 8
  br label %115

115:                                              ; preds = %111, %98
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @LP_BEFORE, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %115
  %120 = load i8*, i8** %25, align 8
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i64, i64* %20, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i8*, i8** %25, align 8
  %127 = load i32, i32* %21, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %18, align 8
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  %132 = call i32 @memmove(i8* %125, i8* %126, i32 %131)
  br label %160

133:                                              ; preds = %115
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %20, align 8
  %137 = add i64 %135, %136
  %138 = load i32, i32* %22, align 4
  %139 = sext i32 %138 to i64
  %140 = sub i64 %137, %139
  store i64 %140, i64* %26, align 8
  %141 = load i8*, i8** %25, align 8
  %142 = load i32, i32* %22, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i64, i64* %26, align 8
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  %147 = load i8*, i8** %25, align 8
  %148 = load i32, i32* %22, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i32, i32* %21, align 4
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* %18, align 8
  %154 = sub i64 %152, %153
  %155 = load i32, i32* %22, align 4
  %156 = sext i32 %155 to i64
  %157 = sub i64 %154, %156
  %158 = trunc i64 %157 to i32
  %159 = call i32 @memmove(i8* %146, i8* %150, i32 %158)
  br label %160

160:                                              ; preds = %133, %119
  %161 = load i32, i32* %23, align 4
  %162 = load i32, i32* %21, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %160
  %165 = load i8*, i8** %8, align 8
  %166 = load i32, i32* %23, align 4
  %167 = call i8* @lp_realloc(i8* %165, i32 %166)
  store i8* %167, i8** %8, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  store i8* null, i8** %7, align 8
  store i32 1, i32* %24, align 4
  br label %254

170:                                              ; preds = %164
  %171 = load i8*, i8** %8, align 8
  %172 = load i64, i64* %18, align 8
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8* %173, i8** %25, align 8
  br label %174

174:                                              ; preds = %170, %160
  %175 = load i8**, i8*** %13, align 8
  %176 = icmp ne i8** %175, null
  br i1 %176, label %177, label %193

177:                                              ; preds = %174
  %178 = load i8*, i8** %25, align 8
  %179 = load i8**, i8*** %13, align 8
  store i8* %178, i8** %179, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %192, label %182

182:                                              ; preds = %177
  %183 = load i8*, i8** %25, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = load i8, i8* @LP_EOF, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %182
  %191 = load i8**, i8*** %13, align 8
  store i8* null, i8** %191, align 8
  br label %192

192:                                              ; preds = %190, %182, %177
  br label %193

193:                                              ; preds = %192, %174
  %194 = load i8*, i8** %9, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %221

196:                                              ; preds = %193
  %197 = load i32, i32* %19, align 4
  %198 = load i32, i32* @LP_ENCODING_INT, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %196
  %201 = load i8*, i8** %25, align 8
  %202 = load i32, i32* %17, align 4
  %203 = call i32 @memcpy(i8* %201, i8* %31, i32 %202)
  br label %209

204:                                              ; preds = %196
  %205 = load i8*, i8** %25, align 8
  %206 = load i8*, i8** %9, align 8
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @lpEncodeString(i8* %205, i8* %206, i32 %207)
  br label %209

209:                                              ; preds = %204, %200
  %210 = load i32, i32* %17, align 4
  %211 = load i8*, i8** %25, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8* %213, i8** %25, align 8
  %214 = load i8*, i8** %25, align 8
  %215 = load i64, i64* %20, align 8
  %216 = trunc i64 %215 to i32
  %217 = call i32 @memcpy(i8* %214, i8* %34, i32 %216)
  %218 = load i64, i64* %20, align 8
  %219 = load i8*, i8** %25, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 %218
  store i8* %220, i8** %25, align 8
  br label %221

221:                                              ; preds = %209, %193
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* @LP_REPLACE, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %228, label %225

225:                                              ; preds = %221
  %226 = load i8*, i8** %9, align 8
  %227 = icmp eq i8* %226, null
  br i1 %227, label %228, label %249

228:                                              ; preds = %225, %221
  %229 = load i8*, i8** %8, align 8
  %230 = call i32 @lpGetNumElements(i8* %229)
  store i32 %230, i32* %27, align 4
  %231 = load i32, i32* %27, align 4
  %232 = load i32, i32* @LP_HDR_NUMELE_UNKNOWN, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %248

234:                                              ; preds = %228
  %235 = load i8*, i8** %9, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %242

237:                                              ; preds = %234
  %238 = load i8*, i8** %8, align 8
  %239 = load i32, i32* %27, align 4
  %240 = add nsw i32 %239, 1
  %241 = call i32 @lpSetNumElements(i8* %238, i32 %240)
  br label %247

242:                                              ; preds = %234
  %243 = load i8*, i8** %8, align 8
  %244 = load i32, i32* %27, align 4
  %245 = sub nsw i32 %244, 1
  %246 = call i32 @lpSetNumElements(i8* %243, i32 %245)
  br label %247

247:                                              ; preds = %242, %237
  br label %248

248:                                              ; preds = %247, %228
  br label %249

249:                                              ; preds = %248, %225
  %250 = load i8*, i8** %8, align 8
  %251 = load i32, i32* %23, align 4
  %252 = call i32 @lpSetTotalBytes(i8* %250, i32 %251)
  %253 = load i8*, i8** %8, align 8
  store i8* %253, i8** %7, align 8
  store i32 1, i32* %24, align 4
  br label %254

254:                                              ; preds = %249, %169, %110, %97
  %255 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %255)
  %256 = load i8*, i8** %7, align 8
  ret i8* %256
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @lpSkip(i8*) #2

declare dso_local i32 @lpEncodeGetType(i8*, i32, i8*, i32*) #2

declare dso_local i64 @lpEncodeBacklen(i8*, i32) #2

declare dso_local i32 @lpGetTotalBytes(i8*) #2

declare dso_local i32 @lpCurrentEncodedSize(i8*) #2

declare dso_local i8* @lp_realloc(i8*, i32) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @lpEncodeString(i8*, i8*, i32) #2

declare dso_local i32 @lpGetNumElements(i8*) #2

declare dso_local i32 @lpSetNumElements(i8*, i32) #2

declare dso_local i32 @lpSetTotalBytes(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
