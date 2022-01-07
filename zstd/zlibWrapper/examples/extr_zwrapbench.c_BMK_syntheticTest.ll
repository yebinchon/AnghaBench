; ModuleID = '/home/carl/AnghaBench/zstd/zlibWrapper/examples/extr_zwrapbench.c_BMK_syntheticTest.c'
source_filename = "/home/carl/AnghaBench/zstd/zlibWrapper/examples/extr_zwrapbench.c_BMK_syntheticTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Synthetic %2u%%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, double)* @BMK_syntheticTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BMK_syntheticTest(i32 %0, i32 %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca [20 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %10 = bitcast [20 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 20, i1 false)
  store i64 10000000, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call i8* @malloc(i64 %11)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call i32 @EXM_THROW(i32 21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i8*, i8** %9, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load double, double* %6, align 8
  %21 = call i32 @RDG_genBuffer(i8* %18, i64 %19, double %20, double 0.000000e+00, i32 0)
  %22 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %23 = load double, double* %6, align 8
  %24 = fmul double %23, 1.000000e+02
  %25 = fptoui double %24 to i32
  %26 = call i32 @snprintf(i8* %22, i32 20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @BMK_benchCLevel(i8* %27, i64 %28, i8* %29, i32 %30, i32 %31, i64* %8, i32 1, i32* null, i32 0)
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @free(i8* %33)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @EXM_THROW(i32, i8*) #2

declare dso_local i32 @RDG_genBuffer(i8*, i64, double, double, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @BMK_benchCLevel(i8*, i64, i8*, i32, i32, i64*, i32, i32*, i32) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
