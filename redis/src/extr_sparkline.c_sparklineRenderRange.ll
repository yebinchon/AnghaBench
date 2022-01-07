; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sparkline.c_sparklineRenderRange.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sparkline.c_sparklineRenderRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sequence = type { double, double, i64, %struct.sample* }
%struct.sample = type { double, i8* }

@charset_len = common dso_local global i32 0, align 4
@SPARKLINE_FILL = common dso_local global i32 0, align 4
@SPARKLINE_LOG_SCALE = common dso_local global i32 0, align 4
@charset_fill = common dso_local global i8* null, align 8
@charset = common dso_local global i8* null, align 8
@label_margin_top = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sparklineRenderRange(i32 %0, %struct.sequence* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sequence*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.sample*, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.sequence* %1, %struct.sequence** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %27 = load %struct.sequence*, %struct.sequence** %8, align 8
  %28 = getelementptr inbounds %struct.sequence, %struct.sequence* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = load %struct.sequence*, %struct.sequence** %8, align 8
  %31 = getelementptr inbounds %struct.sequence, %struct.sequence* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = fsub double %29, %32
  store double %33, double* %14, align 8
  %34 = load i32, i32* @charset_len, align 4
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i8* @zmalloc(i32 %37)
  store i8* %38, i8** %17, align 8
  store i32 1, i32* %18, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @SPARKLINE_FILL, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @SPARKLINE_LOG_SCALE, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %20, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %6
  %48 = load double, double* %14, align 8
  %49 = fadd double %48, 1.000000e+00
  %50 = call double @log(double %49) #3
  store double %50, double* %14, align 8
  br label %56

51:                                               ; preds = %6
  %52 = load double, double* %14, align 8
  %53 = fcmp oeq double %52, 0.000000e+00
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store double 1.000000e+00, double* %14, align 8
  br label %55

55:                                               ; preds = %54, %51
  br label %56

56:                                               ; preds = %55, %47
  br label %57

57:                                               ; preds = %227, %56
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %228

60:                                               ; preds = %57
  store i32 0, i32* %18, align 4
  %61 = load i8*, i8** %17, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @memset(i8* %61, i8 signext 32, i32 %62)
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %212, %60
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %215

68:                                               ; preds = %64
  %69 = load %struct.sequence*, %struct.sequence** %8, align 8
  %70 = getelementptr inbounds %struct.sequence, %struct.sequence* %69, i32 0, i32 3
  %71 = load %struct.sample*, %struct.sample** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.sample, %struct.sample* %71, i64 %75
  store %struct.sample* %76, %struct.sample** %21, align 8
  %77 = load %struct.sample*, %struct.sample** %21, align 8
  %78 = getelementptr inbounds %struct.sample, %struct.sample* %77, i32 0, i32 0
  %79 = load double, double* %78, align 8
  %80 = load %struct.sequence*, %struct.sequence** %8, align 8
  %81 = getelementptr inbounds %struct.sequence, %struct.sequence* %80, i32 0, i32 1
  %82 = load double, double* %81, align 8
  %83 = fsub double %79, %82
  store double %83, double* %22, align 8
  %84 = load i32, i32* %20, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %68
  %87 = load double, double* %22, align 8
  %88 = fadd double %87, 1.000000e+00
  %89 = call double @log(double %88) #3
  store double %89, double* %22, align 8
  br label %90

90:                                               ; preds = %86, %68
  %91 = load double, double* %22, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sitofp i32 %92 to double
  %94 = fmul double %91, %93
  %95 = fptosi double %94 to i32
  %96 = sitofp i32 %95 to double
  %97 = load double, double* %14, align 8
  %98 = fdiv double %96, %97
  %99 = fptosi double %98 to i32
  store i32 %99, i32* %23, align 4
  %100 = load i32, i32* %23, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  store i32 0, i32* %23, align 4
  br label %103

103:                                              ; preds = %102, %90
  %104 = load i32, i32* %23, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %15, align 4
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %23, align 4
  br label %110

110:                                              ; preds = %107, %103
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %167

114:                                              ; preds = %110
  %115 = load i32, i32* %23, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %16, align 4
  %118 = sub nsw i32 %116, %117
  %119 = sub nsw i32 %118, 1
  %120 = load i32, i32* @charset_len, align 4
  %121 = mul nsw i32 %119, %120
  %122 = sub nsw i32 %115, %121
  store i32 %122, i32* %24, align 4
  store i32 1, i32* %18, align 4
  %123 = load i32, i32* %24, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %153

125:                                              ; preds = %114
  %126 = load i32, i32* %24, align 4
  %127 = load i32, i32* @charset_len, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %153

129:                                              ; preds = %125
  %130 = load i32, i32* %19, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load i8*, i8** @charset_fill, align 8
  %134 = load i32, i32* %24, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  br label %146

139:                                              ; preds = %129
  %140 = load i8*, i8** @charset, align 8
  %141 = load i32, i32* %24, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  br label %146

146:                                              ; preds = %139, %132
  %147 = phi i32 [ %138, %132 ], [ %145, %139 ]
  %148 = trunc i32 %147 to i8
  %149 = load i8*, i8** %17, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  store i8 %148, i8* %152, align 1
  br label %166

153:                                              ; preds = %125, %114
  %154 = load i32, i32* %19, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load i32, i32* %24, align 4
  %158 = load i32, i32* @charset_len, align 4
  %159 = icmp sge i32 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load i8*, i8** %17, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  store i8 124, i8* %164, align 1
  br label %165

165:                                              ; preds = %160, %156, %153
  br label %166

166:                                              ; preds = %165, %146
  br label %211

167:                                              ; preds = %110
  %168 = load %struct.sequence*, %struct.sequence** %8, align 8
  %169 = getelementptr inbounds %struct.sequence, %struct.sequence* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %167
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %9, align 4
  %175 = sub nsw i32 %173, %174
  %176 = load i32, i32* @label_margin_top, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  store i32 1, i32* %18, align 4
  br label %215

179:                                              ; preds = %172, %167
  %180 = load %struct.sample*, %struct.sample** %21, align 8
  %181 = getelementptr inbounds %struct.sample, %struct.sample* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %210

184:                                              ; preds = %179
  %185 = load %struct.sample*, %struct.sample** %21, align 8
  %186 = getelementptr inbounds %struct.sample, %struct.sample* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @strlen(i8* %187)
  store i32 %188, i32* %25, align 4
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* %9, align 4
  %191 = sub nsw i32 %189, %190
  %192 = load i32, i32* @label_margin_top, align 4
  %193 = sub nsw i32 %191, %192
  store i32 %193, i32* %26, align 4
  %194 = load i32, i32* %25, align 4
  %195 = load i32, i32* %26, align 4
  %196 = icmp sgt i32 %194, %195
  br i1 %196, label %197, label %209

197:                                              ; preds = %184
  store i32 1, i32* %18, align 4
  %198 = load %struct.sample*, %struct.sample** %21, align 8
  %199 = getelementptr inbounds %struct.sample, %struct.sample* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* %26, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = load i8*, i8** %17, align 8
  %206 = load i32, i32* %13, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  store i8 %204, i8* %208, align 1
  br label %209

209:                                              ; preds = %197, %184
  br label %210

210:                                              ; preds = %209, %179
  br label %211

211:                                              ; preds = %210, %166
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %13, align 4
  br label %64

215:                                              ; preds = %178, %64
  %216 = load i32, i32* %18, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %215
  %219 = load i32, i32* %16, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %7, align 4
  %222 = load i8*, i8** %17, align 8
  %223 = load i32, i32* %11, align 4
  %224 = call i32 @sdscatlen(i32 %221, i8* %222, i32 %223)
  store i32 %224, i32* %7, align 4
  %225 = load i32, i32* %7, align 4
  %226 = call i32 @sdscatlen(i32 %225, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %226, i32* %7, align 4
  br label %227

227:                                              ; preds = %218, %215
  br label %57

228:                                              ; preds = %57
  %229 = load i8*, i8** %17, align 8
  %230 = call i32 @zfree(i8* %229)
  %231 = load i32, i32* %7, align 4
  ret i32 %231
}

declare dso_local i8* @zmalloc(i32) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @zfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
