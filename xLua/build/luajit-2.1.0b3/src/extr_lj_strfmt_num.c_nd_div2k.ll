; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_strfmt_num.c_nd_div2k.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_strfmt_num.c_nd_div2k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRFMT_T_FP_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @nd_div2k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_div2k(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %244

32:                                               ; preds = %26
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @lj_ffs(i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, %41
  store i32 %45, i32* %43, align 4
  store i32 0, i32* %5, align 4
  br label %244

46:                                               ; preds = %32
  %47 = load i32, i32* %13, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %4
  %57 = load i32, i32* %8, align 4
  %58 = icmp sgt i32 %57, 18
  br i1 %58, label %59, label %102

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @STRFMT_FP(i32 %60)
  %62 = load i32, i32* @STRFMT_T_FP_F, align 4
  %63 = call i64 @STRFMT_FP(i32 %62)
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @STRFMT_PREC(i32 %66)
  %68 = trunc i64 %67 to i32
  %69 = sdiv i32 %68, 9
  %70 = sub nsw i32 63, %69
  store i32 %70, i32* %11, align 4
  br label %101

71:                                               ; preds = %59
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 %72, 29
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @lj_fls(i32 %78)
  %80 = add nsw i32 %73, %79
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = sitofp i32 %83 to double
  %85 = fmul double %84, 0x3FD34413509F79FE
  %86 = fptosi double %85 to i32
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @STRFMT_PREC(i32 %88)
  %90 = trunc i64 %89 to i32
  %91 = sub nsw i32 %87, %90
  %92 = sdiv i32 %91, 9
  %93 = add nsw i32 62, %92
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 61, %94
  %96 = load i32, i32* %9, align 4
  %97 = call i64 @STRFMT_PREC(i32 %96)
  %98 = trunc i64 %97 to i32
  %99 = sdiv i32 %98, 8
  %100 = sub nsw i32 %95, %99
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %71, %65
  br label %102

102:                                              ; preds = %101, %56
  br label %103

103:                                              ; preds = %188, %102
  %104 = load i32, i32* %8, align 4
  %105 = icmp sge i32 %104, 9
  br i1 %105, label %106, label %191

106:                                              ; preds = %103
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %108

108:                                              ; preds = %129, %106
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = ashr i32 %114, 9
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %16, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  %122 = load i32, i32* %18, align 4
  %123 = and i32 %122, 511
  %124 = mul nsw i32 %123, 1953125
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %108
  br label %133

129:                                              ; preds = %108
  %130 = load i32, i32* %16, align 4
  %131 = sub nsw i32 %130, 1
  %132 = and i32 %131, 63
  store i32 %132, i32* %16, align 4
  br label %108

133:                                              ; preds = %128
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %167

137:                                              ; preds = %133
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %167

141:                                              ; preds = %137
  %142 = load i32, i32* %17, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = sub nsw i32 %145, 1
  %147 = and i32 %146, 63
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %17, align 4
  %149 = load i32*, i32** %6, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %148, i32* %152, align 4
  br label %153

153:                                              ; preds = %144, %141
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %153
  %161 = load i32, i32* %7, align 4
  %162 = sub nsw i32 %161, 1
  %163 = and i32 %162, 63
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %160, %153
  br label %188

167:                                              ; preds = %137, %133
  %168 = load i32*, i32** %6, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %187, label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = load i32, i32* %7, align 4
  %180 = sub nsw i32 %179, 1
  %181 = and i32 %180, 63
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %12, align 4
  br label %186

184:                                              ; preds = %174
  %185 = load i32, i32* %10, align 4
  store i32 %185, i32* %5, align 4
  br label %244

186:                                              ; preds = %178
  br label %187

187:                                              ; preds = %186, %167
  br label %188

188:                                              ; preds = %187, %166
  %189 = load i32, i32* %8, align 4
  %190 = sub nsw i32 %189, 9
  store i32 %190, i32* %8, align 4
  br label %103

191:                                              ; preds = %103
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %242

194:                                              ; preds = %191
  %195 = load i32, i32* %8, align 4
  %196 = shl i32 1, %195
  %197 = sub i32 %196, 1
  store i32 %197, i32* %19, align 4
  %198 = load i32, i32* %8, align 4
  %199 = ashr i32 1000000000, %198
  store i32 %199, i32* %20, align 4
  %200 = load i32, i32* %7, align 4
  store i32 %200, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %201

201:                                              ; preds = %225, %194
  %202 = load i32*, i32** %6, align 8
  %203 = load i32, i32* %21, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %23, align 4
  %207 = load i32, i32* %23, align 4
  %208 = load i32, i32* %8, align 4
  %209 = ashr i32 %207, %208
  %210 = load i32, i32* %22, align 4
  %211 = add nsw i32 %209, %210
  %212 = load i32*, i32** %6, align 8
  %213 = load i32, i32* %21, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 %211, i32* %215, align 4
  %216 = load i32, i32* %23, align 4
  %217 = load i32, i32* %19, align 4
  %218 = and i32 %216, %217
  %219 = load i32, i32* %20, align 4
  %220 = mul nsw i32 %218, %219
  store i32 %220, i32* %22, align 4
  %221 = load i32, i32* %21, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %201
  br label %229

225:                                              ; preds = %201
  %226 = load i32, i32* %21, align 4
  %227 = sub nsw i32 %226, 1
  %228 = and i32 %227, 63
  store i32 %228, i32* %21, align 4
  br label %201

229:                                              ; preds = %224
  %230 = load i32, i32* %22, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %229
  %233 = load i32, i32* %10, align 4
  %234 = sub nsw i32 %233, 1
  %235 = and i32 %234, 63
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %22, align 4
  %237 = load i32*, i32** %6, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %236, i32* %240, align 4
  br label %241

241:                                              ; preds = %232, %229
  br label %242

242:                                              ; preds = %241, %191
  %243 = load i32, i32* %10, align 4
  store i32 %243, i32* %5, align 4
  br label %244

244:                                              ; preds = %242, %184, %40, %31
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

declare dso_local i32 @lj_ffs(i32) #1

declare dso_local i64 @STRFMT_FP(i32) #1

declare dso_local i64 @STRFMT_PREC(i32) #1

declare dso_local i32 @lj_fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
