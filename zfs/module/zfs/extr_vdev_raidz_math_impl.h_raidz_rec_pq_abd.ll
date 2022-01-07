; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math_impl.h_raidz_rec_pq_abd.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math_impl.h_raidz_rec_pq_abd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_X = common dso_local global i64 0, align 8
@TARGET_Y = common dso_local global i64 0, align 8
@CODE_P = common dso_local global i64 0, align 8
@CODE_Q = common dso_local global i64 0, align 8
@REC_PQ_X = common dso_local global i32 0, align 4
@REC_PQ_Y = common dso_local global i32 0, align 4
@REC_PQ_T = common dso_local global i32 0, align 4
@MUL_PQ_X = common dso_local global i64 0, align 8
@MUL_PQ_Y = common dso_local global i64 0, align 8
@REC_PQ_STRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64, i8**, i32*)* @raidz_rec_pq_abd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raidz_rec_pq_abd(i8** %0, i64 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i8** %0, i8*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = load i64, i64* @TARGET_X, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %9, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = load i64, i64* @TARGET_Y, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = udiv i64 %25, 4
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %11, align 8
  %28 = load i8**, i8*** %7, align 8
  %29 = load i64, i64* @CODE_P, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %12, align 8
  %33 = load i8**, i8*** %7, align 8
  %34 = load i64, i64* @CODE_Q, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %13, align 8
  %38 = call i32 (...) @REC_PQ_DEFINE()
  br label %39

39:                                               ; preds = %83, %4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = icmp ult i32* %40, %41
  br i1 %42, label %43, label %100

43:                                               ; preds = %39
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* @REC_PQ_X, align 4
  %46 = call i32 @LOAD(i32* %44, i32 %45)
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* @REC_PQ_Y, align 4
  %49 = call i32 @LOAD(i32* %47, i32 %48)
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* @REC_PQ_X, align 4
  %52 = call i32 @XOR_ACC(i32* %50, i32 %51)
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* @REC_PQ_Y, align 4
  %55 = call i32 @XOR_ACC(i32* %53, i32 %54)
  %56 = load i32, i32* @REC_PQ_X, align 4
  %57 = load i32, i32* @REC_PQ_T, align 4
  %58 = call i32 @COPY(i32 %56, i32 %57)
  %59 = load i32*, i32** %8, align 8
  %60 = load i64, i64* @MUL_PQ_X, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @REC_PQ_X, align 4
  %64 = call i32 @MUL(i32 %62, i32 %63)
  %65 = load i32*, i32** %8, align 8
  %66 = load i64, i64* @MUL_PQ_Y, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @REC_PQ_Y, align 4
  %70 = call i32 @MUL(i32 %68, i32 %69)
  %71 = load i32, i32* @REC_PQ_Y, align 4
  %72 = load i32, i32* @REC_PQ_X, align 4
  %73 = call i32 @XOR(i32 %71, i32 %72)
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* @REC_PQ_X, align 4
  %76 = call i32 @STORE(i32* %74, i32 %75)
  %77 = load i32, i32* @REC_PQ_T, align 4
  %78 = load i32, i32* @REC_PQ_X, align 4
  %79 = call i32 @XOR(i32 %77, i32 %78)
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* @REC_PQ_X, align 4
  %82 = call i32 @STORE(i32* %80, i32 %81)
  br label %83

83:                                               ; preds = %43
  %84 = load i32, i32* @REC_PQ_STRIDE, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %9, align 8
  %88 = load i32, i32* @REC_PQ_STRIDE, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %10, align 8
  %92 = load i32, i32* @REC_PQ_STRIDE, align 4
  %93 = load i32*, i32** %12, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %12, align 8
  %96 = load i32, i32* @REC_PQ_STRIDE, align 4
  %97 = load i32*, i32** %13, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32* %99, i32** %13, align 8
  br label %39

100:                                              ; preds = %39
  ret void
}

declare dso_local i32 @REC_PQ_DEFINE(...) #1

declare dso_local i32 @LOAD(i32*, i32) #1

declare dso_local i32 @XOR_ACC(i32*, i32) #1

declare dso_local i32 @COPY(i32, i32) #1

declare dso_local i32 @MUL(i32, i32) #1

declare dso_local i32 @XOR(i32, i32) #1

declare dso_local i32 @STORE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
