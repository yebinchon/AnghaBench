; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math_impl.h_raidz_rec_pqr_abd.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math_impl.h_raidz_rec_pqr_abd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_X = common dso_local global i64 0, align 8
@TARGET_Y = common dso_local global i64 0, align 8
@TARGET_Z = common dso_local global i64 0, align 8
@CODE_P = common dso_local global i64 0, align 8
@CODE_Q = common dso_local global i64 0, align 8
@CODE_R = common dso_local global i64 0, align 8
@REC_PQR_X = common dso_local global i32 0, align 4
@REC_PQR_Y = common dso_local global i32 0, align 4
@REC_PQR_Z = common dso_local global i32 0, align 4
@REC_PQR_XS = common dso_local global i32 0, align 4
@REC_PQR_YS = common dso_local global i32 0, align 4
@MUL_PQR_XP = common dso_local global i64 0, align 8
@MUL_PQR_XQ = common dso_local global i64 0, align 8
@MUL_PQR_XR = common dso_local global i64 0, align 8
@MUL_PQR_YU = common dso_local global i64 0, align 8
@MUL_PQR_YP = common dso_local global i64 0, align 8
@MUL_PQR_YQ = common dso_local global i64 0, align 8
@REC_PQR_STRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64, i8**, i32*)* @raidz_rec_pqr_abd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raidz_rec_pqr_abd(i8** %0, i64 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i8** %0, i8*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = load i64, i64* @TARGET_X, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %9, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = load i64, i64* @TARGET_Y, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %10, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = load i64, i64* @TARGET_Z, align 8
  %28 = getelementptr inbounds i8*, i8** %26, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %6, align 8
  %33 = udiv i64 %32, 4
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %12, align 8
  %35 = load i8**, i8*** %7, align 8
  %36 = load i64, i64* @CODE_P, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %13, align 8
  %40 = load i8**, i8*** %7, align 8
  %41 = load i64, i64* @CODE_Q, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %14, align 8
  %45 = load i8**, i8*** %7, align 8
  %46 = load i64, i64* @CODE_R, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %15, align 8
  %50 = call i32 (...) @REC_PQR_DEFINE()
  br label %51

51:                                               ; preds = %146, %4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = icmp ult i32* %52, %53
  br i1 %54, label %55, label %171

55:                                               ; preds = %51
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* @REC_PQR_X, align 4
  %58 = call i32 @LOAD(i32* %56, i32 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* @REC_PQR_Y, align 4
  %61 = call i32 @LOAD(i32* %59, i32 %60)
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* @REC_PQR_Z, align 4
  %64 = call i32 @LOAD(i32* %62, i32 %63)
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* @REC_PQR_X, align 4
  %67 = call i32 @XOR_ACC(i32* %65, i32 %66)
  %68 = load i32*, i32** %14, align 8
  %69 = load i32, i32* @REC_PQR_Y, align 4
  %70 = call i32 @XOR_ACC(i32* %68, i32 %69)
  %71 = load i32*, i32** %15, align 8
  %72 = load i32, i32* @REC_PQR_Z, align 4
  %73 = call i32 @XOR_ACC(i32* %71, i32 %72)
  %74 = load i32, i32* @REC_PQR_X, align 4
  %75 = load i32, i32* @REC_PQR_XS, align 4
  %76 = call i32 @COPY(i32 %74, i32 %75)
  %77 = load i32, i32* @REC_PQR_Y, align 4
  %78 = load i32, i32* @REC_PQR_YS, align 4
  %79 = call i32 @COPY(i32 %77, i32 %78)
  %80 = load i32*, i32** %8, align 8
  %81 = load i64, i64* @MUL_PQR_XP, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @REC_PQR_X, align 4
  %85 = call i32 @MUL(i32 %83, i32 %84)
  %86 = load i32*, i32** %8, align 8
  %87 = load i64, i64* @MUL_PQR_XQ, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @REC_PQR_Y, align 4
  %91 = call i32 @MUL(i32 %89, i32 %90)
  %92 = load i32, i32* @REC_PQR_Y, align 4
  %93 = load i32, i32* @REC_PQR_X, align 4
  %94 = call i32 @XOR(i32 %92, i32 %93)
  %95 = load i32*, i32** %8, align 8
  %96 = load i64, i64* @MUL_PQR_XR, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @REC_PQR_Z, align 4
  %100 = call i32 @MUL(i32 %98, i32 %99)
  %101 = load i32, i32* @REC_PQR_Z, align 4
  %102 = load i32, i32* @REC_PQR_X, align 4
  %103 = call i32 @XOR(i32 %101, i32 %102)
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* @REC_PQR_X, align 4
  %106 = call i32 @STORE(i32* %104, i32 %105)
  %107 = load i32, i32* @REC_PQR_X, align 4
  %108 = load i32, i32* @REC_PQR_XS, align 4
  %109 = call i32 @XOR(i32 %107, i32 %108)
  %110 = load i32*, i32** %8, align 8
  %111 = load i64, i64* @MUL_PQR_YU, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @REC_PQR_X, align 4
  %115 = call i32 @MUL(i32 %113, i32 %114)
  %116 = load i32, i32* @REC_PQR_X, align 4
  %117 = load i32, i32* @REC_PQR_YS, align 4
  %118 = call i32 @XOR(i32 %116, i32 %117)
  %119 = load i32, i32* @REC_PQR_XS, align 4
  %120 = load i32, i32* @REC_PQR_X, align 4
  %121 = call i32 @COPY(i32 %119, i32 %120)
  %122 = load i32*, i32** %8, align 8
  %123 = load i64, i64* @MUL_PQR_YP, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @REC_PQR_X, align 4
  %127 = call i32 @MUL(i32 %125, i32 %126)
  %128 = load i32*, i32** %8, align 8
  %129 = load i64, i64* @MUL_PQR_YQ, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @REC_PQR_YS, align 4
  %133 = call i32 @MUL(i32 %131, i32 %132)
  %134 = load i32, i32* @REC_PQR_X, align 4
  %135 = load i32, i32* @REC_PQR_YS, align 4
  %136 = call i32 @XOR(i32 %134, i32 %135)
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* @REC_PQR_YS, align 4
  %139 = call i32 @STORE(i32* %137, i32 %138)
  %140 = load i32, i32* @REC_PQR_XS, align 4
  %141 = load i32, i32* @REC_PQR_YS, align 4
  %142 = call i32 @XOR(i32 %140, i32 %141)
  %143 = load i32*, i32** %11, align 8
  %144 = load i32, i32* @REC_PQR_YS, align 4
  %145 = call i32 @STORE(i32* %143, i32 %144)
  br label %146

146:                                              ; preds = %55
  %147 = load i32, i32* @REC_PQR_STRIDE, align 4
  %148 = load i32*, i32** %9, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32* %150, i32** %9, align 8
  %151 = load i32, i32* @REC_PQR_STRIDE, align 4
  %152 = load i32*, i32** %10, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32* %154, i32** %10, align 8
  %155 = load i32, i32* @REC_PQR_STRIDE, align 4
  %156 = load i32*, i32** %11, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32* %158, i32** %11, align 8
  %159 = load i32, i32* @REC_PQR_STRIDE, align 4
  %160 = load i32*, i32** %13, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32* %162, i32** %13, align 8
  %163 = load i32, i32* @REC_PQR_STRIDE, align 4
  %164 = load i32*, i32** %14, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32* %166, i32** %14, align 8
  %167 = load i32, i32* @REC_PQR_STRIDE, align 4
  %168 = load i32*, i32** %15, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32* %170, i32** %15, align 8
  br label %51

171:                                              ; preds = %51
  ret void
}

declare dso_local i32 @REC_PQR_DEFINE(...) #1

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
