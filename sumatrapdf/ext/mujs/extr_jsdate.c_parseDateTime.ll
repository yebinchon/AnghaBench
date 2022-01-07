; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_parseDateTime.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_parseDateTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAN = common dso_local global double 0.000000e+00, align 8
@msPerHour = common dso_local global i32 0, align 4
@msPerMinute = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*)* @parseDateTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @parseDateTime(i8* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 1970, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = call i32 @toint(i8** %3, i32 4, i32* %4)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load double, double* @NAN, align 8
  store double %19, double* %2, align 8
  br label %248

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 45
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %3, align 8
  %28 = call i32 @toint(i8** %3, i32 2, i32* %5)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load double, double* @NAN, align 8
  store double %31, double* %2, align 8
  br label %248

32:                                               ; preds = %25
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** %3, align 8
  %40 = call i32 @toint(i8** %3, i32 2, i32* %6)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load double, double* @NAN, align 8
  store double %43, double* %2, align 8
  br label %248

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %32
  br label %46

46:                                               ; preds = %45, %20
  %47 = load i8*, i8** %3, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 84
  br i1 %50, label %51, label %164

51:                                               ; preds = %46
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8* %53, i8** %3, align 8
  %54 = call i32 @toint(i8** %3, i32 2, i32* %7)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load double, double* @NAN, align 8
  store double %57, double* %2, align 8
  br label %248

58:                                               ; preds = %51
  %59 = load i8*, i8** %3, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 58
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load double, double* @NAN, align 8
  store double %64, double* %2, align 8
  br label %248

65:                                               ; preds = %58
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %67, i8** %3, align 8
  %68 = call i32 @toint(i8** %3, i32 2, i32* %8)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load double, double* @NAN, align 8
  store double %71, double* %2, align 8
  br label %248

72:                                               ; preds = %65
  %73 = load i8*, i8** %3, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 58
  br i1 %76, label %77, label %98

77:                                               ; preds = %72
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  store i8* %79, i8** %3, align 8
  %80 = call i32 @toint(i8** %3, i32 2, i32* %9)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load double, double* @NAN, align 8
  store double %83, double* %2, align 8
  br label %248

84:                                               ; preds = %77
  %85 = load i8*, i8** %3, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 46
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load i8*, i8** %3, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8* %91, i8** %3, align 8
  %92 = call i32 @toint(i8** %3, i32 3, i32* %10)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %89
  %95 = load double, double* @NAN, align 8
  store double %95, double* %2, align 8
  br label %248

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %84
  br label %98

98:                                               ; preds = %97, %72
  %99 = load i8*, i8** %3, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 90
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  store i8* %105, i8** %3, align 8
  store i32 0, i32* %11, align 4
  br label %163

106:                                              ; preds = %98
  %107 = load i8*, i8** %3, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 43
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load i8*, i8** %3, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 45
  br i1 %115, label %116, label %160

116:                                              ; preds = %111, %106
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %117 = load i8*, i8** %3, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 43
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 1, i32 -1
  store i32 %122, i32* %15, align 4
  %123 = load i8*, i8** %3, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  store i8* %124, i8** %3, align 8
  %125 = call i32 @toint(i8** %3, i32 2, i32* %13)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %116
  %128 = load double, double* @NAN, align 8
  store double %128, double* %2, align 8
  br label %248

129:                                              ; preds = %116
  %130 = load i8*, i8** %3, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 58
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load i8*, i8** %3, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  store i8* %136, i8** %3, align 8
  %137 = call i32 @toint(i8** %3, i32 2, i32* %14)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %134
  %140 = load double, double* @NAN, align 8
  store double %140, double* %2, align 8
  br label %248

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141, %129
  %143 = load i32, i32* %13, align 4
  %144 = icmp sgt i32 %143, 23
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %14, align 4
  %147 = icmp sgt i32 %146, 59
  br i1 %147, label %148, label %150

148:                                              ; preds = %145, %142
  %149 = load double, double* @NAN, align 8
  store double %149, double* %2, align 8
  br label %248

150:                                              ; preds = %145
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* @msPerHour, align 4
  %154 = mul nsw i32 %152, %153
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* @msPerMinute, align 4
  %157 = mul nsw i32 %155, %156
  %158 = add nsw i32 %154, %157
  %159 = mul nsw i32 %151, %158
  store i32 %159, i32* %11, align 4
  br label %162

160:                                              ; preds = %111
  %161 = call i32 (...) @LocalTZA()
  store i32 %161, i32* %11, align 4
  br label %162

162:                                              ; preds = %160, %150
  br label %163

163:                                              ; preds = %162, %103
  br label %164

164:                                              ; preds = %163, %46
  %165 = load i8*, i8** %3, align 8
  %166 = load i8, i8* %165, align 1
  %167 = icmp ne i8 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load double, double* @NAN, align 8
  store double %169, double* %2, align 8
  br label %248

170:                                              ; preds = %164
  %171 = load i32, i32* %5, align 4
  %172 = icmp slt i32 %171, 1
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %5, align 4
  %175 = icmp sgt i32 %174, 12
  br i1 %175, label %176, label %178

176:                                              ; preds = %173, %170
  %177 = load double, double* @NAN, align 8
  store double %177, double* %2, align 8
  br label %248

178:                                              ; preds = %173
  %179 = load i32, i32* %6, align 4
  %180 = icmp slt i32 %179, 1
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %6, align 4
  %183 = icmp sgt i32 %182, 31
  br i1 %183, label %184, label %186

184:                                              ; preds = %181, %178
  %185 = load double, double* @NAN, align 8
  store double %185, double* %2, align 8
  br label %248

186:                                              ; preds = %181
  %187 = load i32, i32* %7, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %7, align 4
  %191 = icmp sgt i32 %190, 24
  br i1 %191, label %192, label %194

192:                                              ; preds = %189, %186
  %193 = load double, double* @NAN, align 8
  store double %193, double* %2, align 8
  br label %248

194:                                              ; preds = %189
  %195 = load i32, i32* %8, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = load i32, i32* %8, align 4
  %199 = icmp sgt i32 %198, 59
  br i1 %199, label %200, label %202

200:                                              ; preds = %197, %194
  %201 = load double, double* @NAN, align 8
  store double %201, double* %2, align 8
  br label %248

202:                                              ; preds = %197
  %203 = load i32, i32* %9, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* %9, align 4
  %207 = icmp sgt i32 %206, 59
  br i1 %207, label %208, label %210

208:                                              ; preds = %205, %202
  %209 = load double, double* @NAN, align 8
  store double %209, double* %2, align 8
  br label %248

210:                                              ; preds = %205
  %211 = load i32, i32* %10, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = load i32, i32* %10, align 4
  %215 = icmp sgt i32 %214, 999
  br i1 %215, label %216, label %218

216:                                              ; preds = %213, %210
  %217 = load double, double* @NAN, align 8
  store double %217, double* %2, align 8
  br label %248

218:                                              ; preds = %213
  %219 = load i32, i32* %7, align 4
  %220 = icmp eq i32 %219, 24
  br i1 %220, label %221, label %232

221:                                              ; preds = %218
  %222 = load i32, i32* %8, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %9, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %224
  %228 = load i32, i32* %10, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %227, %224, %221
  %231 = load double, double* @NAN, align 8
  store double %231, double* %2, align 8
  br label %248

232:                                              ; preds = %227, %218
  %233 = load i32, i32* %4, align 4
  %234 = load i32, i32* %5, align 4
  %235 = sub nsw i32 %234, 1
  %236 = load i32, i32* %6, align 4
  %237 = call i32 @MakeDay(i32 %233, i32 %235, i32 %236)
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* %10, align 4
  %242 = call i32 @MakeTime(i32 %238, i32 %239, i32 %240, i32 %241)
  %243 = call double @MakeDate(i32 %237, i32 %242)
  store double %243, double* %12, align 8
  %244 = load double, double* %12, align 8
  %245 = load i32, i32* %11, align 4
  %246 = sitofp i32 %245 to double
  %247 = fsub double %244, %246
  store double %247, double* %2, align 8
  br label %248

248:                                              ; preds = %232, %230, %216, %208, %200, %192, %184, %176, %168, %148, %139, %127, %94, %82, %70, %63, %56, %42, %30, %18
  %249 = load double, double* %2, align 8
  ret double %249
}

declare dso_local i32 @toint(i8**, i32, i32*) #1

declare dso_local i32 @LocalTZA(...) #1

declare dso_local double @MakeDate(i32, i32) #1

declare dso_local i32 @MakeDay(i32, i32, i32) #1

declare dso_local i32 @MakeTime(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
