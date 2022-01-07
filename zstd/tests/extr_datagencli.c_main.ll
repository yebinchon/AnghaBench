; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_datagencli.c_main.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_datagencli.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPRESSIBILITY_DEFAULT = common dso_local global i32 0, align 4
@SIZE_DEFAULT = common dso_local global i32 0, align 4
@SEED_DEFAULT = common dso_local global i32 0, align 4
@displayLevel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Compressible data Generator \0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Compressibility : %i%%\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Seed = %u \0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @COMPRESSIBILITY_DEFAULT, align 4
  store i32 %13, i32* %6, align 4
  store double 0.000000e+00, double* %7, align 8
  %14 = load i32, i32* @SIZE_DEFAULT, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @SEED_DEFAULT, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  store i32 1, i32* %11, align 4
  br label %19

19:                                               ; preds = %214, %2
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %217

23:                                               ; preds = %19
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %214

32:                                               ; preds = %23
  %33 = load i8*, i8** %12, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %37, label %213

37:                                               ; preds = %32
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %12, align 8
  br label %40

40:                                               ; preds = %211, %37
  %41 = load i8*, i8** %12, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %212

45:                                               ; preds = %40
  %46 = load i8*, i8** %12, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  switch i32 %48, label %208 [
    i32 104, label %49
    i32 103, label %52
    i32 115, label %116
    i32 80, label %142
    i32 76, label %172
    i32 118, label %205
  ]

49:                                               ; preds = %45
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @usage(i8* %50)
  store i32 %51, i32* %3, align 4
  br label %236

52:                                               ; preds = %45
  %53 = load i8*, i8** %12, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %12, align 8
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %67, %52
  %56 = load i8*, i8** %12, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sge i32 %58, 48
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i8*, i8** %12, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sle i32 %63, 57
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i1 [ false, %55 ], [ %64, %60 ]
  br i1 %66, label %67, label %77

67:                                               ; preds = %65
  %68 = load i32, i32* %8, align 4
  %69 = mul nsw i32 %68, 10
  store i32 %69, i32* %8, align 4
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %12, align 8
  %72 = load i8, i8* %70, align 1
  %73 = sext i8 %72 to i32
  %74 = sub nsw i32 %73, 48
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %55

77:                                               ; preds = %65
  %78 = load i8*, i8** %12, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 75
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = shl i32 %83, 10
  store i32 %84, i32* %8, align 4
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %12, align 8
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i8*, i8** %12, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 77
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = shl i32 %93, 20
  store i32 %94, i32* %8, align 4
  %95 = load i8*, i8** %12, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %12, align 8
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i8*, i8** %12, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 71
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  %104 = shl i32 %103, 30
  store i32 %104, i32* %8, align 4
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %12, align 8
  br label %107

107:                                              ; preds = %102, %97
  %108 = load i8*, i8** %12, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 66
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %12, align 8
  br label %115

115:                                              ; preds = %112, %107
  br label %211

116:                                              ; preds = %45
  %117 = load i8*, i8** %12, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %12, align 8
  store i32 0, i32* %9, align 4
  br label %119

119:                                              ; preds = %131, %116
  %120 = load i8*, i8** %12, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp sge i32 %122, 48
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i8*, i8** %12, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp sle i32 %127, 57
  br label %129

129:                                              ; preds = %124, %119
  %130 = phi i1 [ false, %119 ], [ %128, %124 ]
  br i1 %130, label %131, label %141

131:                                              ; preds = %129
  %132 = load i32, i32* %9, align 4
  %133 = mul nsw i32 %132, 10
  store i32 %133, i32* %9, align 4
  %134 = load i8*, i8** %12, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %12, align 8
  %136 = load i8, i8* %134, align 1
  %137 = sext i8 %136 to i32
  %138 = sub nsw i32 %137, 48
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %9, align 4
  br label %119

141:                                              ; preds = %129
  br label %211

142:                                              ; preds = %45
  %143 = load i8*, i8** %12, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %12, align 8
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %157, %142
  %146 = load i8*, i8** %12, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp sge i32 %148, 48
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i8*, i8** %12, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp sle i32 %153, 57
  br label %155

155:                                              ; preds = %150, %145
  %156 = phi i1 [ false, %145 ], [ %154, %150 ]
  br i1 %156, label %157, label %167

157:                                              ; preds = %155
  %158 = load i32, i32* %6, align 4
  %159 = mul i32 %158, 10
  store i32 %159, i32* %6, align 4
  %160 = load i8*, i8** %12, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %12, align 8
  %162 = load i8, i8* %160, align 1
  %163 = sext i8 %162 to i32
  %164 = sub nsw i32 %163, 48
  %165 = load i32, i32* %6, align 4
  %166 = add i32 %165, %164
  store i32 %166, i32* %6, align 4
  br label %145

167:                                              ; preds = %155
  %168 = load i32, i32* %6, align 4
  %169 = icmp ugt i32 %168, 100
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32 100, i32* %6, align 4
  br label %171

171:                                              ; preds = %170, %167
  br label %211

172:                                              ; preds = %45
  %173 = load i8*, i8** %12, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %12, align 8
  store double 0.000000e+00, double* %7, align 8
  br label %175

175:                                              ; preds = %187, %172
  %176 = load i8*, i8** %12, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp sge i32 %178, 48
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load i8*, i8** %12, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp sle i32 %183, 57
  br label %185

185:                                              ; preds = %180, %175
  %186 = phi i1 [ false, %175 ], [ %184, %180 ]
  br i1 %186, label %187, label %198

187:                                              ; preds = %185
  %188 = load double, double* %7, align 8
  %189 = fmul double %188, 1.000000e+01
  store double %189, double* %7, align 8
  %190 = load i8*, i8** %12, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %12, align 8
  %192 = load i8, i8* %190, align 1
  %193 = sext i8 %192 to i32
  %194 = sub nsw i32 %193, 48
  %195 = sitofp i32 %194 to double
  %196 = load double, double* %7, align 8
  %197 = fadd double %196, %195
  store double %197, double* %7, align 8
  br label %175

198:                                              ; preds = %185
  %199 = load double, double* %7, align 8
  %200 = fcmp ogt double %199, 1.000000e+02
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store double 1.000000e+02, double* %7, align 8
  br label %202

202:                                              ; preds = %201, %198
  %203 = load double, double* %7, align 8
  %204 = fdiv double %203, 1.000000e+02
  store double %204, double* %7, align 8
  br label %211

205:                                              ; preds = %45
  store i32 4, i32* @displayLevel, align 4
  %206 = load i8*, i8** %12, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %12, align 8
  br label %211

208:                                              ; preds = %45
  %209 = load i8*, i8** %10, align 8
  %210 = call i32 @usage(i8* %209)
  store i32 %210, i32* %3, align 4
  br label %236

211:                                              ; preds = %205, %202, %171, %141, %115
  br label %40

212:                                              ; preds = %40
  br label %213

213:                                              ; preds = %212, %32
  br label %214

214:                                              ; preds = %213, %31
  %215 = load i32, i32* %11, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %11, align 4
  br label %19

217:                                              ; preds = %19
  %218 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* @COMPRESSIBILITY_DEFAULT, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load i32, i32* %6, align 4
  %224 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %223)
  br label %225

225:                                              ; preds = %222, %217
  %226 = load i32, i32* %9, align 4
  %227 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* %6, align 4
  %230 = uitofp i32 %229 to double
  %231 = fdiv double %230, 1.000000e+02
  %232 = load double, double* %7, align 8
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @RDG_genStdout(i32 %228, double %231, double %232, i32 %233)
  %235 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %236

236:                                              ; preds = %225, %208, %49
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i32 @RDG_genStdout(i32, double, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
