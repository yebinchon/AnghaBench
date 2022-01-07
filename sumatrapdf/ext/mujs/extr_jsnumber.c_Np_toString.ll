; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsnumber.c_Np_toString.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsnumber.c_Np_toString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { double }
%struct.TYPE_9__ = type { i8* }

@JS_CNUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"not a number\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"invalid radix\00", align 1
@Np_toString.digits = internal constant [37 x i8] c"0123456789abcdefghijklmnopqrstuvwxyz\00", align 16
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Np_toString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Np_toString(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call %struct.TYPE_8__* @js_toobject(i32* %14, i32 0)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %4, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @js_isundefined(i32* %16, i32 1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %23

20:                                               ; preds = %1
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @js_tointeger(i32* %21, i32 1)
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi i32 [ 10, %19 ], [ %22, %20 ]
  store i32 %24, i32* %5, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @JS_CNUMBER, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @js_typeerror(i32* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32*, i32** %2, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = call i8* @jsV_numbertostring(i32* %38, i8* %39, double %43)
  %45 = call i32 @js_pushstring(i32* %37, i8* %44)
  br label %255

46:                                               ; preds = %33
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %50, 36
  br i1 %51, label %52, label %55

52:                                               ; preds = %49, %46
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @js_rangeerror(i32* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load double, double* %58, align 8
  store double %59, double* %6, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load double, double* %62, align 8
  %64 = fcmp olt double %63, 0.000000e+00
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %7, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  store i32 undef, i32* %10, align 4
  %66 = load double, double* %6, align 8
  %67 = fcmp oeq double %66, 0.000000e+00
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @js_pushstring(i32* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %255

71:                                               ; preds = %55
  %72 = load double, double* %6, align 8
  %73 = call i64 @isnan(double %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @js_pushstring(i32* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %255

78:                                               ; preds = %71
  %79 = load double, double* %6, align 8
  %80 = call i64 @isinf(double %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i32*, i32** %2, align 8
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %88 = call i32 @js_pushstring(i32* %83, i8* %87)
  br label %255

89:                                               ; preds = %78
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load double, double* %6, align 8
  %94 = fneg double %93
  store double %94, double* %6, align 8
  br label %95

95:                                               ; preds = %92, %89
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %105, %95
  %97 = load double, double* %6, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call double @pow(i32 %98, i32 %99)
  %101 = fmul double %97, %100
  %102 = load i32, i32* %10, align 4
  %103 = sitofp i32 %102 to double
  %104 = fcmp ogt double %101, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %12, align 4
  br label %96

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %119, %108
  %110 = load double, double* %6, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  %114 = call double @pow(i32 %111, i32 %113)
  %115 = fmul double %110, %114
  %116 = load i32, i32* %10, align 4
  %117 = sitofp i32 %116 to double
  %118 = fcmp olt double %115, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %109
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %109

122:                                              ; preds = %109
  %123 = load double, double* %6, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call double @pow(i32 %124, i32 %125)
  %127 = fmul double %123, %126
  %128 = fadd double %127, 5.000000e-01
  %129 = fptosi double %128 to i32
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %140, %122
  %131 = load i32, i32* %9, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %5, align 4
  %136 = srem i32 %134, %135
  %137 = icmp eq i32 %136, 0
  br label %138

138:                                              ; preds = %133, %130
  %139 = phi i1 [ false, %130 ], [ %137, %133 ]
  br i1 %139, label %140, label %146

140:                                              ; preds = %138
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %9, align 4
  %143 = sdiv i32 %142, %141
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %12, align 4
  br label %130

146:                                              ; preds = %138
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %150, %146
  %148 = load i32, i32* %9, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %147
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %5, align 4
  %153 = srem i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [37 x i8], [37 x i8]* @Np_toString.digits, i64 0, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 %159
  store i8 %156, i8* %160, align 1
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* %9, align 4
  %163 = sdiv i32 %162, %161
  store i32 %163, i32* %9, align 4
  br label %147

164:                                              ; preds = %147
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %12, align 4
  %167 = sub nsw i32 %165, %166
  store i32 %167, i32* %13, align 4
  %168 = load i32*, i32** %2, align 8
  %169 = call i64 @js_try(i32* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %164
  %172 = load i32*, i32** %2, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %174 = call i32 @js_free(i32* %172, %struct.TYPE_9__* %173)
  %175 = load i32*, i32** %2, align 8
  %176 = call i32 @js_throw(i32* %175)
  br label %177

177:                                              ; preds = %171, %164
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i32*, i32** %2, align 8
  %182 = call i32 @js_putc(i32* %181, %struct.TYPE_9__** %8, i8 signext 45)
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i32, i32* %13, align 4
  %185 = icmp sle i32 %184, 0
  br i1 %185, label %186, label %211

186:                                              ; preds = %183
  %187 = load i32*, i32** %2, align 8
  %188 = call i32 @js_putc(i32* %187, %struct.TYPE_9__** %8, i8 signext 48)
  %189 = load i32*, i32** %2, align 8
  %190 = call i32 @js_putc(i32* %189, %struct.TYPE_9__** %8, i8 signext 46)
  br label %191

191:                                              ; preds = %195, %186
  %192 = load i32, i32* %13, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %13, align 4
  %194 = icmp slt i32 %192, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i32*, i32** %2, align 8
  %197 = call i32 @js_putc(i32* %196, %struct.TYPE_9__** %8, i8 signext 48)
  br label %191

198:                                              ; preds = %191
  br label %199

199:                                              ; preds = %203, %198
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %11, align 4
  %202 = icmp sgt i32 %200, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %199
  %204 = load i32*, i32** %2, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = call i32 @js_putc(i32* %204, %struct.TYPE_9__** %8, i8 signext %208)
  br label %199

210:                                              ; preds = %199
  br label %242

211:                                              ; preds = %183
  br label %212

212:                                              ; preds = %232, %211
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, -1
  store i32 %214, i32* %11, align 4
  %215 = icmp sgt i32 %213, 0
  br i1 %215, label %216, label %233

216:                                              ; preds = %212
  %217 = load i32*, i32** %2, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = call i32 @js_putc(i32* %217, %struct.TYPE_9__** %8, i8 signext %221)
  %223 = load i32, i32* %13, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %13, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %216
  %227 = load i32, i32* %11, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i32*, i32** %2, align 8
  %231 = call i32 @js_putc(i32* %230, %struct.TYPE_9__** %8, i8 signext 46)
  br label %232

232:                                              ; preds = %229, %226, %216
  br label %212

233:                                              ; preds = %212
  br label %234

234:                                              ; preds = %238, %233
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %235, -1
  store i32 %236, i32* %13, align 4
  %237 = icmp sgt i32 %235, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %234
  %239 = load i32*, i32** %2, align 8
  %240 = call i32 @js_putc(i32* %239, %struct.TYPE_9__** %8, i8 signext 48)
  br label %234

241:                                              ; preds = %234
  br label %242

242:                                              ; preds = %241, %210
  %243 = load i32*, i32** %2, align 8
  %244 = call i32 @js_putc(i32* %243, %struct.TYPE_9__** %8, i8 signext 0)
  %245 = load i32*, i32** %2, align 8
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @js_pushstring(i32* %245, i8* %248)
  %250 = load i32*, i32** %2, align 8
  %251 = call i32 @js_endtry(i32* %250)
  %252 = load i32*, i32** %2, align 8
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %254 = call i32 @js_free(i32* %252, %struct.TYPE_9__* %253)
  br label %255

255:                                              ; preds = %242, %82, %75, %68, %36
  ret void
}

declare dso_local %struct.TYPE_8__* @js_toobject(i32*, i32) #1

declare dso_local i64 @js_isundefined(i32*, i32) #1

declare dso_local i32 @js_tointeger(i32*, i32) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

declare dso_local i8* @jsV_numbertostring(i32*, i8*, double) #1

declare dso_local i32 @js_rangeerror(i32*, i8*) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i64 @isinf(double) #1

declare dso_local double @pow(i32, i32) #1

declare dso_local i64 @js_try(i32*) #1

declare dso_local i32 @js_free(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @js_throw(i32*) #1

declare dso_local i32 @js_putc(i32*, %struct.TYPE_9__**, i8 signext) #1

declare dso_local i32 @js_endtry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
