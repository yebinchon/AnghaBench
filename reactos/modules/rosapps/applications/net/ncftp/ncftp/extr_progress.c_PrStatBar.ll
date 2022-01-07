; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_progress.c_PrStatBar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_progress.c_PrStatBar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i64, i64, i64, i32, i32, i32, i32 (%struct.TYPE_4__*, i32)* }

@PrStatBar.uStr = internal global i8* null, align 8
@PrStatBar.uTotal = internal global double 0.000000e+00, align 8
@PrStatBar.uMult = internal global double 0.000000e+00, align 8
@stdout = common dso_local global i32 0, align 4
@kSizeUnknown = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%-32s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"%-32s   ETA: %3d:%02d  %6.2f/%6.2f %.2s  %6.2f %.2s/s %.1s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"\0D%s\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%s - [%.1f%%]\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"%-53s  %6.2f %.2s  %6.2f %.2s/s  \00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"%-46s  %6.2f/%6.2f %.2s  %6.2f %.2s/s  \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"\0D%s\0A\0D\00", align 1
@gRemoteCWD = common dso_local global i32 0, align 4
@kNetReading = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrStatBar(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [80 x i8], align 16
  %12 = alloca [134 x i8], align 16
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %237 [
    i32 129, label %15
    i32 128, label %59
    i32 130, label %142
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @stdout, align 4
  %17 = call i32 @fflush(i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 12
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @kSizeUnknown, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 16
  store i32 (%struct.TYPE_4__*, i32)* @PrSizeAndRateMeter, i32 (%struct.TYPE_4__*, i32)** %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @PrSizeAndRateMeter(%struct.TYPE_4__* %26, i32 %27)
  br label %237

29:                                               ; preds = %15
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 12
  %32 = load i64, i64* %31, align 8
  %33 = sitofp i64 %32 to double
  %34 = call double @FileSize(double %33, i8** @PrStatBar.uStr, double* @PrStatBar.uMult)
  store double %34, double* @PrStatBar.uTotal, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 9
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %40, align 16
  br label %49

41:                                               ; preds = %29
  %42 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 9
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @AbbrevStr(i8* %42, i32* %45, i32 78, i32 0)
  %47 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %48 = call i32 @STRNCAT(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %41, %39
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 15
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @stderr, align 4
  %56 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %57 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %54, %49
  br label %237

59:                                               ; preds = %2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 14
  %62 = load i32, i32* %61, align 4
  %63 = sitofp i32 %62 to double
  %64 = fadd double %63, 5.000000e-01
  %65 = fptosi double %64 to i32
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sdiv i32 %66, 60
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 %69, 60
  %71 = sub nsw i32 %68, %70
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp sgt i32 %72, 999
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  store i32 999, i32* %8, align 4
  store i32 59, i32* %7, align 4
  br label %75

75:                                               ; preds = %74, %59
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load double, double* %77, align 8
  %79 = fmul double %78, 1.024000e+03
  %80 = call double @FileSize(double %79, i8** %9, double* null)
  store double %80, double* %5, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 11
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 10
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = sitofp i64 %87 to double
  %89 = load double, double* @PrStatBar.uMult, align 8
  %90 = fdiv double %88, %89
  store double %90, double* %6, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 9
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %75
  %96 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %96, align 16
  br label %105

97:                                               ; preds = %75
  %98 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 9
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @AbbrevStr(i8* %98, i32* %101, i32 31, i32 0)
  %103 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %104 = call i32 @STRNCAT(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %105

105:                                              ; preds = %97, %95
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %119

111:                                              ; preds = %105
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %114, 15
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %118

117:                                              ; preds = %111
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %118

118:                                              ; preds = %117, %116
  br label %119

119:                                              ; preds = %118, %110
  %120 = getelementptr inbounds [134 x i8], [134 x i8]* %12, i64 0, i64 0
  %121 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %122 = load i32, i32* %8, align 4
  %123 = sitofp i32 %122 to double
  %124 = load i32, i32* %7, align 4
  %125 = load double, double* %6, align 8
  %126 = load double, double* @PrStatBar.uTotal, align 8
  %127 = load i8*, i8** @PrStatBar.uStr, align 8
  %128 = load double, double* %5, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = call i32 (i8*, i8*, i8*, double, ...) @sprintf(i8* %120, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i8* %121, double %123, i32 %124, double %125, double %126, i8* %127, double %128, i8* %129, i8* %130)
  %132 = load i32, i32* @stderr, align 4
  %133 = getelementptr inbounds [134 x i8], [134 x i8]* %12, i64 0, i64 0
  %134 = call i32 @fprintf(i32 %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %133)
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 9
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 13
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @SetXtermTitle(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32* %137, i32 %140)
  br label %237

142:                                              ; preds = %2
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load double, double* %144, align 8
  %146 = fmul double %145, 1.024000e+03
  %147 = call double @FileSize(double %146, i8** %9, double* null)
  store double %147, double* %5, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 11
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 10
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %150, %153
  %155 = sitofp i64 %154 to double
  %156 = load double, double* @PrStatBar.uMult, align 8
  %157 = fdiv double %155, %156
  store double %157, double* %6, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 12
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 11
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 10
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %163, %166
  %168 = icmp eq i64 %160, %167
  br i1 %168, label %169, label %192

169:                                              ; preds = %142
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 9
  %172 = load i32*, i32** %171, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %175, align 16
  br label %184

176:                                              ; preds = %169
  %177 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 9
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @AbbrevStr(i8* %177, i32* %180, i32 52, i32 0)
  %182 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %183 = call i32 @STRNCAT(i8* %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %184

184:                                              ; preds = %176, %174
  %185 = getelementptr inbounds [134 x i8], [134 x i8]* %12, i64 0, i64 0
  %186 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %187 = load double, double* @PrStatBar.uTotal, align 8
  %188 = load i8*, i8** @PrStatBar.uStr, align 8
  %189 = load double, double* %5, align 8
  %190 = load i8*, i8** %9, align 8
  %191 = call i32 (i8*, i8*, i8*, double, ...) @sprintf(i8* %185, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %186, double %187, i8* %188, double %189, i8* %190)
  br label %216

192:                                              ; preds = %142
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 9
  %195 = load i32*, i32** %194, align 8
  %196 = icmp eq i32* %195, null
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %198, align 16
  br label %207

199:                                              ; preds = %192
  %200 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 9
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @AbbrevStr(i8* %200, i32* %203, i32 45, i32 0)
  %205 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %206 = call i32 @STRNCAT(i8* %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %207

207:                                              ; preds = %199, %197
  %208 = getelementptr inbounds [134 x i8], [134 x i8]* %12, i64 0, i64 0
  %209 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %210 = load double, double* %6, align 8
  %211 = load double, double* @PrStatBar.uTotal, align 8
  %212 = load i8*, i8** @PrStatBar.uStr, align 8
  %213 = load double, double* %5, align 8
  %214 = load i8*, i8** %9, align 8
  %215 = call i32 (i8*, i8*, i8*, double, ...) @sprintf(i8* %208, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i8* %209, double %210, double %211, i8* %212, double %213, i8* %214)
  br label %216

216:                                              ; preds = %207, %184
  %217 = getelementptr inbounds [134 x i8], [134 x i8]* %12, i64 0, i64 0
  %218 = call i64 @strlen(i8* %217)
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %13, align 4
  br label %220

220:                                              ; preds = %227, %216
  %221 = load i32, i32* %13, align 4
  %222 = icmp slt i32 %221, 78
  br i1 %222, label %223, label %230

223:                                              ; preds = %220
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [134 x i8], [134 x i8]* %12, i64 0, i64 %225
  store i8 32, i8* %226, align 1
  br label %227

227:                                              ; preds = %223
  %228 = load i32, i32* %13, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %13, align 4
  br label %220

230:                                              ; preds = %220
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [134 x i8], [134 x i8]* %12, i64 0, i64 %232
  store i8 0, i8* %233, align 1
  %234 = load i32, i32* @stderr, align 4
  %235 = getelementptr inbounds [134 x i8], [134 x i8]* %12, i64 0, i64 0
  %236 = call i32 @fprintf(i32 %234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %235)
  br label %237

237:                                              ; preds = %23, %2, %230, %119, %58
  ret void
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @PrSizeAndRateMeter(%struct.TYPE_4__*, i32) #1

declare dso_local double @FileSize(double, i8**, double*) #1

declare dso_local i32 @AbbrevStr(i8*, i32*, i32, i32) #1

declare dso_local i32 @STRNCAT(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, double, ...) #1

declare dso_local i32 @SetXtermTitle(i8*, i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
