; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_extract.c_make_projection_matrix.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_extract.c_make_projection_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.make_projection_matrix.left_matrix = private unnamed_addr constant [9 x double] [double 7.624500e+01, double 1.496850e+02, double 2.907000e+01, double 0xC045838A0902DE01, double 0xC0551E3AFB7E9100, double 1.275000e+02, double 1.275000e+02, double 0xC05AB0FB549F9485, double 0xC034BC12AD81ADEB], align 16
@__const.make_projection_matrix.right_matrix = private unnamed_addr constant [9 x double] [double 0x407010100E6AFCCE, double 0.000000e+00, double 0x4076851CAC083127, double 0x407010100E6AFCCE, double 0xC0561C70B8CFBFC6, double 0xC066F12584F4C6E7, double 0x407010100E6AFCCE, double 0x407C7693404EA4A9, double 0.000000e+00], align 16
@.str = private unnamed_addr constant [8 x i8] c"red: %f\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"green: %f\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"blue: %f\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Projection matrix:\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%6d %6d %6d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @make_projection_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_projection_matrix(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [9 x double], align 16
  %8 = alloca [9 x double], align 16
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca [9 x double], align 16
  %14 = alloca [9 x double], align 16
  %15 = alloca [9 x double], align 16
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %17 = bitcast [9 x double]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([9 x double]* @__const.make_projection_matrix.left_matrix to i8*), i64 72, i1 false)
  %18 = bitcast [9 x double]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([9 x double]* @__const.make_projection_matrix.right_matrix to i8*), i64 72, i1 false)
  %19 = load i32, i32* %5, align 4
  %20 = and i32 16711680, %19
  %21 = ashr i32 %20, 16
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %22, 2.550000e+02
  store double %23, double* %9, align 8
  %24 = load i32, i32* %5, align 4
  %25 = and i32 65280, %24
  %26 = ashr i32 %25, 8
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 2.550000e+02
  store double %28, double* %10, align 8
  %29 = load i32, i32* %5, align 4
  %30 = and i32 255, %29
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 2.550000e+02
  store double %32, double* %11, align 8
  %33 = load double, double* %9, align 8
  %34 = load double, double* %9, align 8
  %35 = fmul double %33, %34
  %36 = load double, double* %10, align 8
  %37 = load double, double* %10, align 8
  %38 = fmul double %36, %37
  %39 = fadd double %35, %38
  %40 = load double, double* %11, align 8
  %41 = load double, double* %11, align 8
  %42 = fmul double %40, %41
  %43 = fadd double %39, %42
  %44 = call double @sqrt(double %43) #4
  store double %44, double* %12, align 8
  %45 = load double, double* %12, align 8
  %46 = fcmp ogt double %45, 0.000000e+00
  br i1 %46, label %47, label %57

47:                                               ; preds = %3
  %48 = load double, double* %12, align 8
  %49 = load double, double* %9, align 8
  %50 = fdiv double %49, %48
  store double %50, double* %9, align 8
  %51 = load double, double* %12, align 8
  %52 = load double, double* %10, align 8
  %53 = fdiv double %52, %51
  store double %53, double* %10, align 8
  %54 = load double, double* %12, align 8
  %55 = load double, double* %11, align 8
  %56 = fdiv double %55, %54
  store double %56, double* %11, align 8
  br label %57

57:                                               ; preds = %47, %3
  %58 = getelementptr inbounds [9 x double], [9 x double]* %13, i64 0, i64 0
  %59 = load double, double* %9, align 8
  %60 = load double, double* %9, align 8
  %61 = fmul double %59, %60
  store double %61, double* %58, align 8
  %62 = getelementptr inbounds double, double* %58, i64 1
  %63 = load double, double* %9, align 8
  %64 = load double, double* %10, align 8
  %65 = fmul double %63, %64
  store double %65, double* %62, align 8
  %66 = getelementptr inbounds double, double* %62, i64 1
  %67 = load double, double* %9, align 8
  %68 = load double, double* %11, align 8
  %69 = fmul double %67, %68
  store double %69, double* %66, align 8
  %70 = getelementptr inbounds double, double* %66, i64 1
  %71 = load double, double* %9, align 8
  %72 = load double, double* %10, align 8
  %73 = fmul double %71, %72
  store double %73, double* %70, align 8
  %74 = getelementptr inbounds double, double* %70, i64 1
  %75 = load double, double* %10, align 8
  %76 = load double, double* %10, align 8
  %77 = fmul double %75, %76
  store double %77, double* %74, align 8
  %78 = getelementptr inbounds double, double* %74, i64 1
  %79 = load double, double* %10, align 8
  %80 = load double, double* %11, align 8
  %81 = fmul double %79, %80
  store double %81, double* %78, align 8
  %82 = getelementptr inbounds double, double* %78, i64 1
  %83 = load double, double* %9, align 8
  %84 = load double, double* %11, align 8
  %85 = fmul double %83, %84
  store double %85, double* %82, align 8
  %86 = getelementptr inbounds double, double* %82, i64 1
  %87 = load double, double* %10, align 8
  %88 = load double, double* %11, align 8
  %89 = fmul double %87, %88
  store double %89, double* %86, align 8
  %90 = getelementptr inbounds double, double* %86, i64 1
  %91 = load double, double* %11, align 8
  %92 = load double, double* %11, align 8
  %93 = fmul double %91, %92
  store double %93, double* %90, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = load double, double* %9, align 8
  %96 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), double %95)
  %97 = load i32*, i32** %4, align 8
  %98 = load double, double* %10, align 8
  %99 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double %98)
  %100 = load i32*, i32** %4, align 8
  %101 = load double, double* %11, align 8
  %102 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), double %101)
  %103 = getelementptr inbounds [9 x double], [9 x double]* %14, i64 0, i64 0
  %104 = getelementptr inbounds [9 x double], [9 x double]* %13, i64 0, i64 0
  %105 = getelementptr inbounds [9 x double], [9 x double]* %8, i64 0, i64 0
  %106 = call i32 @mmult(double* %103, double* %104, double* %105)
  %107 = getelementptr inbounds [9 x double], [9 x double]* %15, i64 0, i64 0
  %108 = getelementptr inbounds [9 x double], [9 x double]* %7, i64 0, i64 0
  %109 = getelementptr inbounds [9 x double], [9 x double]* %14, i64 0, i64 0
  %110 = call i32 @mmult(double* %107, double* %108, double* %109)
  store i32 0, i32* %16, align 4
  br label %111

111:                                              ; preds = %124, %57
  %112 = load i32, i32* %16, align 4
  %113 = icmp slt i32 %112, 9
  br i1 %113, label %114, label %127

114:                                              ; preds = %111
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [9 x double], [9 x double]* %15, i64 0, i64 %116
  %118 = load double, double* %117, align 8
  %119 = fptosi double %118 to i32
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  br label %124

124:                                              ; preds = %114
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %16, align 4
  br label %111

127:                                              ; preds = %111
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %130 = load i32*, i32** %4, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %6, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %6, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %133, i32 %136, i32 %139)
  %141 = load i32*, i32** %4, align 8
  %142 = load i32*, i32** %6, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %6, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 4
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 5
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %144, i32 %147, i32 %150)
  %152 = load i32*, i32** %4, align 8
  %153 = load i32*, i32** %6, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 6
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %6, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 7
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %6, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 8
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %155, i32 %158, i32 %161)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #3

declare dso_local i32 @mmult(double*, double*, double*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
