; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_gamma-randr.c_randr_set_temperature_for_crtc.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_gamma-randr.c_randr_set_temperature_for_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CRTC %d does not exist. \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Valid CRTCs are [0-%d].\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Only CRTC 0 exists.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@UINT16_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"`%s' returned error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"RANDR Set CRTC Gamma\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32*, i32)* @randr_set_temperature_for_crtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @randr_set_temperature_for_crtc(%struct.TYPE_8__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %25, %4
  %29 = load i32, i32* @stderr, align 4
  %30 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* %30, i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load i32, i32* @stderr, align 4
  %39 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* %39, i32 %43)
  br label %49

45:                                               ; preds = %28
  %46 = load i32, i32* @stderr, align 4
  %47 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %45, %37
  store i32 -1, i32* %5, align 4
  br label %180

50:                                               ; preds = %25
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = mul i32 3, %67
  %69 = zext i32 %68 to i64
  %70 = mul i64 %69, 8
  %71 = trunc i64 %70 to i32
  %72 = call double* @malloc(i32 %71)
  store double* %72, double** %13, align 8
  %73 = load double*, double** %13, align 8
  %74 = icmp eq double* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %50
  %76 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %180

77:                                               ; preds = %50
  %78 = load double*, double** %13, align 8
  %79 = load i32, i32* %12, align 4
  %80 = mul i32 0, %79
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %78, i64 %81
  store double* %82, double** %14, align 8
  %83 = load double*, double** %13, align 8
  %84 = load i32, i32* %12, align 4
  %85 = mul i32 1, %84
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %83, i64 %86
  store double* %87, double** %15, align 8
  %88 = load double*, double** %13, align 8
  %89 = load i32, i32* %12, align 4
  %90 = mul i32 2, %89
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %88, i64 %91
  store double* %92, double** %16, align 8
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %77
  %96 = load double*, double** %13, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %12, align 4
  %106 = mul i32 3, %105
  %107 = zext i32 %106 to i64
  %108 = mul i64 %107, 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @memcpy(double* %96, i32 %104, i32 %109)
  br label %145

111:                                              ; preds = %77
  store i32 0, i32* %17, align 4
  br label %112

112:                                              ; preds = %141, %111
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %144

116:                                              ; preds = %112
  %117 = load i32, i32* %17, align 4
  %118 = sitofp i32 %117 to double
  %119 = load i32, i32* %12, align 4
  %120 = uitofp i32 %119 to double
  %121 = fdiv double %118, %120
  %122 = load i32, i32* @UINT16_MAX, align 4
  %123 = add nsw i32 %122, 1
  %124 = sitofp i32 %123 to double
  %125 = fmul double %121, %124
  store double %125, double* %18, align 8
  %126 = load double, double* %18, align 8
  %127 = load double*, double** %14, align 8
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, double* %127, i64 %129
  store double %126, double* %130, align 8
  %131 = load double, double* %18, align 8
  %132 = load double*, double** %15, align 8
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds double, double* %132, i64 %134
  store double %131, double* %135, align 8
  %136 = load double, double* %18, align 8
  %137 = load double*, double** %16, align 8
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, double* %137, i64 %139
  store double %136, double* %140, align 8
  br label %141

141:                                              ; preds = %116
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %17, align 4
  br label %112

144:                                              ; preds = %112
  br label %145

145:                                              ; preds = %144, %95
  %146 = load double*, double** %14, align 8
  %147 = load double*, double** %15, align 8
  %148 = load double*, double** %16, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load i32*, i32** %8, align 8
  %151 = call i32 @colorramp_fill(double* %146, double* %147, double* %148, i32 %149, i32* %150)
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load double*, double** %14, align 8
  %158 = load double*, double** %15, align 8
  %159 = load double*, double** %16, align 8
  %160 = call i32 @xcb_randr_set_crtc_gamma_checked(i32 %154, i32 %155, i32 %156, double* %157, double* %158, double* %159)
  store i32 %160, i32* %19, align 4
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %19, align 4
  %165 = call %struct.TYPE_7__* @xcb_request_check(i32 %163, i32 %164)
  store %struct.TYPE_7__* %165, %struct.TYPE_7__** %10, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %167 = icmp ne %struct.TYPE_7__* %166, null
  br i1 %167, label %168, label %177

168:                                              ; preds = %145
  %169 = load i32, i32* @stderr, align 4
  %170 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* %170, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %173)
  %175 = load double*, double** %13, align 8
  %176 = call i32 @free(double* %175)
  store i32 -1, i32* %5, align 4
  br label %180

177:                                              ; preds = %145
  %178 = load double*, double** %13, align 8
  %179 = call i32 @free(double* %178)
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %177, %168, %75, %49
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local double* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memcpy(double*, i32, i32) #1

declare dso_local i32 @colorramp_fill(double*, double*, double*, i32, i32*) #1

declare dso_local i32 @xcb_randr_set_crtc_gamma_checked(i32, i32, i32, double*, double*, double*) #1

declare dso_local %struct.TYPE_7__* @xcb_request_check(i32, i32) #1

declare dso_local i32 @free(double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
