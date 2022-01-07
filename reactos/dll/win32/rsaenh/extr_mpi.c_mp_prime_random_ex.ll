; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_prime_random_ex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_prime_random_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_VAL = common dso_local global i32 0, align 4
@LTM_PRIME_SAFE = common dso_local global i32 0, align 4
@LTM_PRIME_BBS = common dso_local global i32 0, align 4
@MP_MEM = common dso_local global i32 0, align 4
@LTM_PRIME_2MSB_ON = common dso_local global i32 0, align 4
@LTM_PRIME_2MSB_OFF = common dso_local global i32 0, align 4
@MP_OKAY = common dso_local global i32 0, align 4
@MP_NO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_prime_random_ex(i32* %0, i32 %1, i32 %2, i32 %3, i32 (i8*, i32, i8*)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32 (i8*, i32, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 (i8*, i32, i8*)* %4, i32 (i8*, i32, i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  %22 = load i32, i32* %10, align 4
  %23 = icmp sle i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %6
  %28 = load i32, i32* @MP_VAL, align 4
  store i32 %28, i32* %7, align 4
  br label %240

29:                                               ; preds = %24
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @LTM_PRIME_SAFE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @LTM_PRIME_BBS, align 4
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %10, align 4
  %40 = ashr i32 %39, 3
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 7
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  %46 = add nsw i32 %40, %45
  store i32 %46, i32* %20, align 4
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load i32, i32* %20, align 4
  %49 = call i8* @HeapAlloc(i32 %47, i32 0, i32 %48)
  store i8* %49, i8** %14, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = load i32, i32* @MP_MEM, align 4
  store i32 %53, i32* %7, align 4
  br label %240

54:                                               ; preds = %38
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, 7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %64

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 7
  %62 = sub nsw i32 8, %61
  %63 = ashr i32 255, %62
  br label %64

64:                                               ; preds = %59, %58
  %65 = phi i32 [ 255, %58 ], [ %63, %59 ]
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, 7
  %69 = icmp eq i32 %68, 1
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  store i32 %71, i32* %21, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @LTM_PRIME_2MSB_ON, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %64
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %77, 2
  %79 = and i32 %78, 7
  %80 = shl i32 1, %79
  %81 = load i8, i8* %16, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %82, %80
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %16, align 1
  br label %101

85:                                               ; preds = %64
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @LTM_PRIME_2MSB_OFF, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 %91, 2
  %93 = and i32 %92, 7
  %94 = shl i32 1, %93
  %95 = xor i32 %94, -1
  %96 = load i8, i8* %15, align 1
  %97 = zext i8 %96 to i32
  %98 = and i32 %97, %95
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %15, align 1
  br label %100

100:                                              ; preds = %90, %85
  br label %101

101:                                              ; preds = %100, %76
  store i8 0, i8* %17, align 1
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @LTM_PRIME_BBS, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i8, i8* %17, align 1
  %108 = zext i8 %107 to i32
  %109 = or i32 %108, 3
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %17, align 1
  br label %111

111:                                              ; preds = %106, %101
  br label %112

112:                                              ; preds = %209, %111
  %113 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %12, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = load i32, i32* %20, align 4
  %116 = load i8*, i8** %13, align 8
  %117 = call i32 %113(i8* %114, i32 %115, i8* %116)
  %118 = load i32, i32* %20, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i32, i32* @MP_VAL, align 4
  store i32 %121, i32* %19, align 4
  br label %235

122:                                              ; preds = %112
  %123 = load i8, i8* %15, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8*, i8** %14, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %128, %124
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %126, align 1
  %131 = load i32, i32* %10, align 4
  %132 = sub nsw i32 %131, 1
  %133 = and i32 %132, 7
  %134 = shl i32 1, %133
  %135 = load i8*, i8** %14, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = or i32 %138, %134
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %136, align 1
  %141 = load i8, i8* %16, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8*, i8** %14, align 8
  %144 = load i32, i32* %21, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = or i32 %148, %142
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %146, align 1
  %151 = load i8, i8* %17, align 1
  %152 = zext i8 %151 to i32
  %153 = load i8*, i8** %14, align 8
  %154 = load i32, i32* %20, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %153, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = or i32 %159, %152
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %157, align 1
  %162 = load i32*, i32** %8, align 8
  %163 = load i8*, i8** %14, align 8
  %164 = load i32, i32* %20, align 4
  %165 = call i32 @mp_read_unsigned_bin(i32* %162, i8* %163, i32 %164)
  store i32 %165, i32* %19, align 4
  %166 = load i32, i32* @MP_OKAY, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %122
  br label %235

169:                                              ; preds = %122
  %170 = load i32*, i32** %8, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @mp_prime_is_prime(i32* %170, i32 %171, i32* %18)
  store i32 %172, i32* %19, align 4
  %173 = load i32, i32* @MP_OKAY, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %235

176:                                              ; preds = %169
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* @MP_NO, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  br label %209

181:                                              ; preds = %176
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @LTM_PRIME_SAFE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %208

186:                                              ; preds = %181
  %187 = load i32*, i32** %8, align 8
  %188 = load i32*, i32** %8, align 8
  %189 = call i32 @mp_sub_d(i32* %187, i32 1, i32* %188)
  store i32 %189, i32* %19, align 4
  %190 = load i32, i32* @MP_OKAY, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %235

193:                                              ; preds = %186
  %194 = load i32*, i32** %8, align 8
  %195 = load i32*, i32** %8, align 8
  %196 = call i32 @mp_div_2(i32* %194, i32* %195)
  store i32 %196, i32* %19, align 4
  %197 = load i32, i32* @MP_OKAY, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  br label %235

200:                                              ; preds = %193
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @mp_prime_is_prime(i32* %201, i32 %202, i32* %18)
  store i32 %203, i32* %19, align 4
  %204 = load i32, i32* @MP_OKAY, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %235

207:                                              ; preds = %200
  br label %208

208:                                              ; preds = %207, %181
  br label %209

209:                                              ; preds = %208, %180
  %210 = load i32, i32* %18, align 4
  %211 = load i32, i32* @MP_NO, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %112, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* @LTM_PRIME_SAFE, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %233

218:                                              ; preds = %213
  %219 = load i32*, i32** %8, align 8
  %220 = load i32*, i32** %8, align 8
  %221 = call i32 @mp_mul_2(i32* %219, i32* %220)
  store i32 %221, i32* %19, align 4
  %222 = load i32, i32* @MP_OKAY, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  br label %235

225:                                              ; preds = %218
  %226 = load i32*, i32** %8, align 8
  %227 = load i32*, i32** %8, align 8
  %228 = call i32 @mp_add_d(i32* %226, i32 1, i32* %227)
  store i32 %228, i32* %19, align 4
  %229 = load i32, i32* @MP_OKAY, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %225
  br label %235

232:                                              ; preds = %225
  br label %233

233:                                              ; preds = %232, %213
  %234 = load i32, i32* @MP_OKAY, align 4
  store i32 %234, i32* %19, align 4
  br label %235

235:                                              ; preds = %233, %231, %224, %206, %199, %192, %175, %168, %120
  %236 = call i32 (...) @GetProcessHeap()
  %237 = load i8*, i8** %14, align 8
  %238 = call i32 @HeapFree(i32 %236, i32 0, i8* %237)
  %239 = load i32, i32* %19, align 4
  store i32 %239, i32* %7, align 4
  br label %240

240:                                              ; preds = %235, %52, %27
  %241 = load i32, i32* %7, align 4
  ret i32 %241
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @mp_read_unsigned_bin(i32*, i8*, i32) #1

declare dso_local i32 @mp_prime_is_prime(i32*, i32, i32*) #1

declare dso_local i32 @mp_sub_d(i32*, i32, i32*) #1

declare dso_local i32 @mp_div_2(i32*, i32*) #1

declare dso_local i32 @mp_mul_2(i32*, i32*) #1

declare dso_local i32 @mp_add_d(i32*, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
