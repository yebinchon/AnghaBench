; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_ctype.c_lj_ctype_repr_complex.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_ctype.c_lj_ctype_repr_complex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@STRFMT_G14 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_ctype_repr_complex(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @lj_buf_tmp_(i32* %10)
  store i32* %11, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to double*
  %18 = load double, double* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store double %18, double* %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to double*
  %22 = getelementptr inbounds double, double* %21, i64 1
  %23 = load double, double* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store double %23, double* %24, align 8
  br label %37

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to float*
  %28 = load float, float* %27, align 4
  %29 = fpext float %28 to double
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store double %29, double* %30, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = bitcast i8* %31 to float*
  %33 = getelementptr inbounds float, float* %32, i64 1
  %34 = load float, float* %33, align 4
  %35 = fpext float %34 to double
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store double %35, double* %36, align 8
  br label %37

37:                                               ; preds = %25, %15
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @STRFMT_G14, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = call i32 @lj_strfmt_putfnum(i32* %38, i32 %39, double %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, -2147483648
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = fcmp une double %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %37
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @lj_buf_putchar(i32* %55, i8 signext 43)
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @STRFMT_G14, align 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %61 = load double, double* %60, align 8
  %62 = call i32 @lj_strfmt_putfnum(i32* %58, i32 %59, double %61)
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i8* @sbufP(i32* %64)
  %66 = getelementptr inbounds i8, i8* %65, i64 -1
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sge i32 %68, 97
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 73, i32 105
  %72 = trunc i32 %71 to i8
  %73 = call i32 @lj_buf_putchar(i32* %63, i8 signext %72)
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i32* @lj_buf_str(i32* %74, i32* %75)
  ret i32* %76
}

declare dso_local i32* @lj_buf_tmp_(i32*) #1

declare dso_local i32 @lj_strfmt_putfnum(i32*, i32, double) #1

declare dso_local i32 @lj_buf_putchar(i32*, i8 signext) #1

declare dso_local i8* @sbufP(i32*) #1

declare dso_local i32* @lj_buf_str(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
