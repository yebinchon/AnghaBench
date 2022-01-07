; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/stdlib/extr_fcvtbuf.c_cvt.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/stdlib/extr_fcvtbuf.c_cvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVTBUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (double, i32, i32*, i32*, i8*, i32)* @cvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cvt(double %0, i32 %1, i32* %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store double %0, double* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @CVTBUFSIZE, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp sge i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @CVTBUFSIZE, align 4
  %25 = sub nsw i32 %24, 2
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %23, %6
  store i32 0, i32* %14, align 4
  %27 = load i32*, i32** %11, align 8
  store i32 0, i32* %27, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8* %29, i8** %17, align 8
  %30 = load double, double* %8, align 8
  %31 = fcmp olt double %30, 0.000000e+00
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32*, i32** %11, align 8
  store i32 1, i32* %33, align 4
  %34 = load double, double* %8, align 8
  %35 = fneg double %34
  store double %35, double* %8, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load double, double* %8, align 8
  %38 = call double @modf(double %37, double* %15) #2
  store double %38, double* %8, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load i32, i32* @CVTBUFSIZE, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8* %42, i8** %18, align 8
  %43 = load double, double* %15, align 8
  %44 = fcmp une double %43, 0.000000e+00
  br i1 %44, label %45, label %82

45:                                               ; preds = %36
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* @CVTBUFSIZE, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8* %49, i8** %18, align 8
  br label %50

50:                                               ; preds = %53, %45
  %51 = load double, double* %15, align 8
  %52 = fcmp une double %51, 0.000000e+00
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load double, double* %15, align 8
  %55 = fdiv double %54, 1.000000e+01
  %56 = call double @modf(double %55, double* %15) #2
  store double %56, double* %16, align 8
  %57 = load double, double* %16, align 8
  %58 = fadd double %57, 3.000000e-02
  %59 = fmul double %58, 1.000000e+01
  %60 = fptosi double %59 to i32
  %61 = add nsw i32 %60, 48
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %18, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 -1
  store i8* %64, i8** %18, align 8
  store i8 %62, i8* %64, align 1
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  br label %50

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %75, %67
  %69 = load i8*, i8** %18, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load i32, i32* @CVTBUFSIZE, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = icmp ult i8* %69, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i8*, i8** %18, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %18, align 8
  %78 = load i8, i8* %76, align 1
  %79 = load i8*, i8** %17, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %17, align 8
  store i8 %78, i8* %79, align 1
  br label %68

81:                                               ; preds = %68
  br label %96

82:                                               ; preds = %36
  %83 = load double, double* %8, align 8
  %84 = fcmp ogt double %83, 0.000000e+00
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  br label %86

86:                                               ; preds = %90, %85
  %87 = load double, double* %8, align 8
  %88 = fmul double %87, 1.000000e+01
  store double %88, double* %16, align 8
  %89 = fcmp olt double %88, 1.000000e+00
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load double, double* %16, align 8
  store double %91, double* %8, align 8
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %14, align 4
  br label %86

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %82
  br label %96

96:                                               ; preds = %95, %81
  %97 = load i8*, i8** %12, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8* %100, i8** %18, align 8
  %101 = load i32, i32* %13, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load i32, i32* %14, align 4
  %105 = load i8*, i8** %18, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %18, align 8
  br label %108

108:                                              ; preds = %103, %96
  %109 = load i32, i32* %14, align 4
  %110 = load i32*, i32** %10, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i8*, i8** %18, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = icmp ult i8* %111, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i8*, i8** %12, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  store i8 0, i8* %117, align 1
  %118 = load i8*, i8** %12, align 8
  store i8* %118, i8** %7, align 8
  br label %201

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %133, %119
  %121 = load i8*, i8** %17, align 8
  %122 = load i8*, i8** %18, align 8
  %123 = icmp ule i8* %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load i8*, i8** %17, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load i32, i32* @CVTBUFSIZE, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = icmp ult i8* %125, %129
  br label %131

131:                                              ; preds = %124, %120
  %132 = phi i1 [ false, %120 ], [ %130, %124 ]
  br i1 %132, label %133, label %144

133:                                              ; preds = %131
  %134 = load double, double* %8, align 8
  %135 = fmul double %134, 1.000000e+01
  store double %135, double* %8, align 8
  %136 = load double, double* %8, align 8
  %137 = call double @modf(double %136, double* %16) #2
  store double %137, double* %8, align 8
  %138 = load double, double* %16, align 8
  %139 = fptosi double %138 to i32
  %140 = add nsw i32 %139, 48
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** %17, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %17, align 8
  store i8 %141, i8* %142, align 1
  br label %120

144:                                              ; preds = %131
  %145 = load i8*, i8** %18, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = load i32, i32* @CVTBUFSIZE, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = icmp uge i8* %145, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = load i8*, i8** %12, align 8
  %153 = load i32, i32* @CVTBUFSIZE, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  store i8 0, i8* %156, align 1
  %157 = load i8*, i8** %12, align 8
  store i8* %157, i8** %7, align 8
  br label %201

158:                                              ; preds = %144
  %159 = load i8*, i8** %18, align 8
  store i8* %159, i8** %17, align 8
  %160 = load i8*, i8** %18, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = add nsw i32 %162, 5
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %160, align 1
  br label %165

165:                                              ; preds = %197, %158
  %166 = load i8*, i8** %18, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp sgt i32 %168, 57
  br i1 %169, label %170, label %198

170:                                              ; preds = %165
  %171 = load i8*, i8** %18, align 8
  store i8 48, i8* %171, align 1
  %172 = load i8*, i8** %18, align 8
  %173 = load i8*, i8** %12, align 8
  %174 = icmp ugt i8* %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load i8*, i8** %18, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 -1
  store i8* %177, i8** %18, align 8
  %178 = load i8, i8* %177, align 1
  %179 = add i8 %178, 1
  store i8 %179, i8* %177, align 1
  br label %197

180:                                              ; preds = %170
  %181 = load i8*, i8** %18, align 8
  store i8 49, i8* %181, align 1
  %182 = load i32*, i32** %10, align 8
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %180
  %188 = load i8*, i8** %17, align 8
  %189 = load i8*, i8** %12, align 8
  %190 = icmp ugt i8* %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i8*, i8** %17, align 8
  store i8 48, i8* %192, align 1
  br label %193

193:                                              ; preds = %191, %187
  %194 = load i8*, i8** %17, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %17, align 8
  br label %196

196:                                              ; preds = %193, %180
  br label %197

197:                                              ; preds = %196, %175
  br label %165

198:                                              ; preds = %165
  %199 = load i8*, i8** %17, align 8
  store i8 0, i8* %199, align 1
  %200 = load i8*, i8** %12, align 8
  store i8* %200, i8** %7, align 8
  br label %201

201:                                              ; preds = %198, %151, %115
  %202 = load i8*, i8** %7, align 8
  ret i8* %202
}

; Function Attrs: nounwind
declare dso_local double @modf(double, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
