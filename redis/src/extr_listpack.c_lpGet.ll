; ModuleID = '/home/carl/AnghaBench/redis/src/extr_listpack.c_lpGet.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_listpack.c_lpGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT64_MAX = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@LP_INTBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lpGet(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = call i64 @LP_ENCODING_IS_7BIT_UINT(i8 zeroext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load i32, i32* @UINT64_MAX, align 4
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 127
  store i32 %23, i32* %9, align 4
  br label %221

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @LP_ENCODING_IS_6BIT_STR(i8 zeroext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @LP_ENCODING_6BIT_STR_LEN(i8* %31)
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8* %35, i8** %4, align 8
  br label %249

36:                                               ; preds = %24
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @LP_ENCODING_IS_13BIT_INT(i8 zeroext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 31
  %48 = shl i32 %47, 8
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %48, %52
  store i32 %53, i32* %9, align 4
  store i32 4096, i32* %10, align 4
  store i32 8191, i32* %11, align 4
  br label %219

54:                                               ; preds = %36
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @LP_ENCODING_IS_16BIT_INT(i8 zeroext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %68, 8
  %70 = or i32 %64, %69
  store i32 %70, i32* %9, align 4
  store i32 32768, i32* %10, align 4
  %71 = load i32, i32* @UINT16_MAX, align 4
  store i32 %71, i32* %11, align 4
  br label %218

72:                                               ; preds = %54
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = call i64 @LP_ENCODING_IS_24BIT_INT(i8 zeroext %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %72
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = shl i32 %86, 8
  %88 = or i32 %82, %87
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 3
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl i32 %92, 16
  %94 = or i32 %88, %93
  store i32 %94, i32* %9, align 4
  store i32 8388608, i32* %10, align 4
  %95 = load i32, i32* @UINT32_MAX, align 4
  %96 = ashr i32 %95, 8
  store i32 %96, i32* %11, align 4
  br label %217

97:                                               ; preds = %72
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = call i64 @LP_ENCODING_IS_32BIT_INT(i8 zeroext %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %97
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = shl i32 %111, 8
  %113 = or i32 %107, %112
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 3
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = shl i32 %117, 16
  %119 = or i32 %113, %118
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 4
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = shl i32 %123, 24
  %125 = or i32 %119, %124
  store i32 %125, i32* %9, align 4
  store i32 -2147483648, i32* %10, align 4
  %126 = load i32, i32* @UINT32_MAX, align 4
  store i32 %126, i32* %11, align 4
  br label %216

127:                                              ; preds = %97
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = call i64 @LP_ENCODING_IS_64BIT_INT(i8 zeroext %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %181

133:                                              ; preds = %127
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = shl i32 %141, 8
  %143 = or i32 %137, %142
  %144 = load i8*, i8** %5, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 3
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = shl i32 %147, 16
  %149 = or i32 %143, %148
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 4
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = shl i32 %153, 24
  %155 = or i32 %149, %154
  %156 = load i8*, i8** %5, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 5
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = shl i32 %159, 32
  %161 = or i32 %155, %160
  %162 = load i8*, i8** %5, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 6
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = shl i32 %165, 40
  %167 = or i32 %161, %166
  %168 = load i8*, i8** %5, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 7
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = shl i32 %171, 48
  %173 = or i32 %167, %172
  %174 = load i8*, i8** %5, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 8
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = shl i32 %177, 56
  %179 = or i32 %173, %178
  store i32 %179, i32* %9, align 4
  store i32 undef, i32* %10, align 4
  %180 = load i32, i32* @UINT64_MAX, align 4
  store i32 %180, i32* %11, align 4
  br label %215

181:                                              ; preds = %127
  %182 = load i8*, i8** %5, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  %184 = load i8, i8* %183, align 1
  %185 = call i64 @LP_ENCODING_IS_12BIT_STR(i8 zeroext %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load i8*, i8** %5, align 8
  %189 = call i32 @LP_ENCODING_12BIT_STR_LEN(i8* %188)
  %190 = load i32*, i32** %6, align 8
  store i32 %189, i32* %190, align 4
  %191 = load i8*, i8** %5, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 2
  store i8* %192, i8** %4, align 8
  br label %249

193:                                              ; preds = %181
  %194 = load i8*, i8** %5, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 0
  %196 = load i8, i8* %195, align 1
  %197 = call i64 @LP_ENCODING_IS_32BIT_STR(i8 zeroext %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = load i8*, i8** %5, align 8
  %201 = call i32 @LP_ENCODING_32BIT_STR_LEN(i8* %200)
  %202 = load i32*, i32** %6, align 8
  store i32 %201, i32* %202, align 4
  %203 = load i8*, i8** %5, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 5
  store i8* %204, i8** %4, align 8
  br label %249

205:                                              ; preds = %193
  %206 = load i8*, i8** %5, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 0
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i64
  %210 = add i64 12345678900000000, %209
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* @UINT64_MAX, align 4
  store i32 %212, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %213

213:                                              ; preds = %205
  br label %214

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214, %133
  br label %216

216:                                              ; preds = %215, %103
  br label %217

217:                                              ; preds = %216, %78
  br label %218

218:                                              ; preds = %217, %60
  br label %219

219:                                              ; preds = %218, %42
  br label %220

220:                                              ; preds = %219
  br label %221

221:                                              ; preds = %220, %17
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %10, align 4
  %224 = icmp sge i32 %222, %223
  br i1 %224, label %225, label %233

225:                                              ; preds = %221
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %9, align 4
  %228 = sub nsw i32 %226, %227
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %9, align 4
  store i32 %229, i32* %8, align 4
  %230 = load i32, i32* %8, align 4
  %231 = sub nsw i32 0, %230
  %232 = sub nsw i32 %231, 1
  store i32 %232, i32* %8, align 4
  br label %235

233:                                              ; preds = %221
  %234 = load i32, i32* %9, align 4
  store i32 %234, i32* %8, align 4
  br label %235

235:                                              ; preds = %233, %225
  %236 = load i8*, i8** %7, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %246

238:                                              ; preds = %235
  %239 = load i8*, i8** %7, align 8
  %240 = load i32, i32* @LP_INTBUF_SIZE, align 4
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = call i32 @snprintf(i8* %239, i32 %240, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %242)
  %244 = load i32*, i32** %6, align 8
  store i32 %243, i32* %244, align 4
  %245 = load i8*, i8** %7, align 8
  store i8* %245, i8** %4, align 8
  br label %249

246:                                              ; preds = %235
  %247 = load i32, i32* %8, align 4
  %248 = load i32*, i32** %6, align 8
  store i32 %247, i32* %248, align 4
  store i8* null, i8** %4, align 8
  br label %249

249:                                              ; preds = %246, %238, %199, %187, %30
  %250 = load i8*, i8** %4, align 8
  ret i8* %250
}

declare dso_local i64 @LP_ENCODING_IS_7BIT_UINT(i8 zeroext) #1

declare dso_local i64 @LP_ENCODING_IS_6BIT_STR(i8 zeroext) #1

declare dso_local i32 @LP_ENCODING_6BIT_STR_LEN(i8*) #1

declare dso_local i64 @LP_ENCODING_IS_13BIT_INT(i8 zeroext) #1

declare dso_local i64 @LP_ENCODING_IS_16BIT_INT(i8 zeroext) #1

declare dso_local i64 @LP_ENCODING_IS_24BIT_INT(i8 zeroext) #1

declare dso_local i64 @LP_ENCODING_IS_32BIT_INT(i8 zeroext) #1

declare dso_local i64 @LP_ENCODING_IS_64BIT_INT(i8 zeroext) #1

declare dso_local i64 @LP_ENCODING_IS_12BIT_STR(i8 zeroext) #1

declare dso_local i32 @LP_ENCODING_12BIT_STR_LEN(i8*) #1

declare dso_local i64 @LP_ENCODING_IS_32BIT_STR(i8 zeroext) #1

declare dso_local i32 @LP_ENCODING_32BIT_STR_LEN(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
