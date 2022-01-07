; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/expert/extr_sqlite3expert.c_idxSampleFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/expert/extr_sqlite3expert.c_idxSampleFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IdxSampleCtx = type { double, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @idxSampleFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idxSampleFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.IdxSampleCtx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @sqlite3_user_data(i32* %10)
  %12 = inttoptr i64 %11 to %struct.IdxSampleCtx*
  store %struct.IdxSampleCtx* %12, %struct.IdxSampleCtx** %7, align 8
  %13 = load i32**, i32*** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.IdxSampleCtx*, %struct.IdxSampleCtx** %7, align 8
  %19 = getelementptr inbounds %struct.IdxSampleCtx, %struct.IdxSampleCtx* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = fcmp oeq double %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %52

23:                                               ; preds = %3
  %24 = load %struct.IdxSampleCtx*, %struct.IdxSampleCtx** %7, align 8
  %25 = getelementptr inbounds %struct.IdxSampleCtx, %struct.IdxSampleCtx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sitofp i32 %26 to double
  %28 = load %struct.IdxSampleCtx*, %struct.IdxSampleCtx** %7, align 8
  %29 = getelementptr inbounds %struct.IdxSampleCtx, %struct.IdxSampleCtx* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = fdiv double %27, %30
  %32 = load %struct.IdxSampleCtx*, %struct.IdxSampleCtx** %7, align 8
  %33 = getelementptr inbounds %struct.IdxSampleCtx, %struct.IdxSampleCtx* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sitofp i32 %34 to double
  %36 = fcmp ole double %31, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %23
  %41 = bitcast i16* %9 to i8*
  %42 = call i32 @sqlite3_randomness(i32 2, i8* %41)
  %43 = load i16, i16* %9, align 2
  %44 = zext i16 %43 to i32
  %45 = srem i32 %44, 100
  %46 = load %struct.IdxSampleCtx*, %struct.IdxSampleCtx** %7, align 8
  %47 = getelementptr inbounds %struct.IdxSampleCtx, %struct.IdxSampleCtx* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = icmp sle i32 %45, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %40, %23
  br label %52

52:                                               ; preds = %51, %22
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @sqlite3_result_int(i32* %53, i32 %54)
  %56 = load %struct.IdxSampleCtx*, %struct.IdxSampleCtx** %7, align 8
  %57 = getelementptr inbounds %struct.IdxSampleCtx, %struct.IdxSampleCtx* %56, i32 0, i32 0
  %58 = load double, double* %57, align 8
  %59 = fadd double %58, 1.000000e+00
  store double %59, double* %57, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sitofp i32 %60 to double
  %62 = load %struct.IdxSampleCtx*, %struct.IdxSampleCtx** %7, align 8
  %63 = getelementptr inbounds %struct.IdxSampleCtx, %struct.IdxSampleCtx* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sitofp i32 %64 to double
  %66 = fadd double %65, %61
  %67 = fptosi double %66 to i32
  store i32 %67, i32* %63, align 8
  ret void
}

declare dso_local i64 @sqlite3_user_data(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_randomness(i32, i8*) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
