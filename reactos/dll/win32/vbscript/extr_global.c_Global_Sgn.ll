; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_Sgn.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_Sgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@VT_NULL = common dso_local global i64 0, align 8
@VBSE_ILLEGAL_NULL_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @Global_Sgn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Global_Sgn(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca double, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @debugstr_variant(i32* %13)
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 1
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @V_VT(i32* %20)
  %22 = load i64, i64* @VT_NULL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @VBSE_ILLEGAL_NULL_USE, align 4
  %26 = call i32 @MAKE_VBSERROR(i32 %25)
  store i32 %26, i32* %5, align 4
  br label %50

27:                                               ; preds = %4
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @to_double(i32* %28, double* %10)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i64 @FAILED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %50

35:                                               ; preds = %27
  %36 = load double, double* %10, align 8
  %37 = fcmp oeq double %36, 0.000000e+00
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %44

39:                                               ; preds = %35
  %40 = load double, double* %10, align 8
  %41 = fcmp ogt double %40, 0.000000e+00
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 -1
  br label %44

44:                                               ; preds = %39, %38
  %45 = phi i32 [ 0, %38 ], [ %43, %39 ]
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %11, align 2
  %47 = load i32*, i32** %9, align 8
  %48 = load i16, i16* %11, align 2
  %49 = call i32 @return_short(i32* %47, i16 signext %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %44, %33, %24
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i32 @MAKE_VBSERROR(i32) #1

declare dso_local i32 @to_double(i32*, double*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @return_short(i32*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
