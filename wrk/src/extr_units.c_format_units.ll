; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_units.c_format_units.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_units.c_format_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, double, i8** }

@.str = private unnamed_addr constant [8 x i8] c"%.*Lf%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (x86_fp80, %struct.TYPE_3__*, i32)* @format_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_units(x86_fp80 %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca x86_fp80, align 16
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %4, align 16
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load x86_fp80, x86_fp80* %4, align 16
  store x86_fp80 %12, x86_fp80* %7, align 16
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load double, double* %17, align 8
  %19 = fmul double %18, 8.500000e-01
  %20 = fpext double %19 to x86_fp80
  store x86_fp80 %20, x86_fp80* %8, align 16
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %51, %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %24, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load x86_fp80, x86_fp80* %7, align 16
  %33 = load x86_fp80, x86_fp80* %8, align 16
  %34 = fcmp oge x86_fp80 %32, %33
  br label %35

35:                                               ; preds = %31, %21
  %36 = phi i1 [ false, %21 ], [ %34, %31 ]
  br i1 %36, label %37, label %54

37:                                               ; preds = %35
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load double, double* %39, align 8
  %41 = fpext double %40 to x86_fp80
  %42 = load x86_fp80, x86_fp80* %7, align 16
  %43 = fdiv x86_fp80 %42, %41
  store x86_fp80 %43, x86_fp80* %7, align 16
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i8**, i8*** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %9, align 8
  br label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %21

54:                                               ; preds = %35
  %55 = load i32, i32* %6, align 4
  %56 = load x86_fp80, x86_fp80* %7, align 16
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @aprintf(i8** %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %55, x86_fp80 %56, i8* %57)
  %59 = load i8*, i8** %10, align 8
  ret i8* %59
}

declare dso_local i32 @aprintf(i8**, i8*, i32, x86_fp80, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
