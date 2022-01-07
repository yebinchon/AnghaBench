; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_fsprg.c_FSPRG_GenMK.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_fsprg.c_FSPRG_GenMK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSPRG_RECOMMENDED_SEEDLEN = common dso_local global i32 0, align 4
@GCRY_STRONG_RANDOM = common dso_local global i32 0, align 4
@RND_GEN_P = common dso_local global i32 0, align 4
@RND_GEN_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FSPRG_GenMK(i8* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* @FSPRG_RECOMMENDED_SEEDLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @VALIDATE_SECPAR(i32 %21)
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %16, align 4
  %24 = call i32 @initialize_libgcrypt(i32 0)
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @FSPRG_RECOMMENDED_SEEDLEN, align 4
  %29 = load i32, i32* @GCRY_STRONG_RANDOM, align 4
  %30 = call i32 @gcry_randomize(i32* %20, i32 %28, i32 %29)
  %31 = bitcast i32* %20 to i8*
  store i8* %31, i8** %8, align 8
  %32 = load i32, i32* @FSPRG_RECOMMENDED_SEEDLEN, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %27, %5
  %35 = load i32, i32* %16, align 4
  %36 = sdiv i32 %35, 2
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* @RND_GEN_P, align 4
  %40 = call i32 @genprime3mod4(i32 %36, i8* %37, i64 %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %16, align 4
  %42 = sdiv i32 %41, 2
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i32, i32* @RND_GEN_Q, align 4
  %46 = call i32 @genprime3mod4(i32 %42, i8* %43, i64 %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %80

49:                                               ; preds = %34
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr i8, i8* %50, i64 0
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @store_secpar(i8* %51, i32 %52)
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr i8, i8* %54, i64 2
  %56 = load i32, i32* %16, align 4
  %57 = sdiv i32 %56, 2
  %58 = mul nsw i32 0, %57
  %59 = sdiv i32 %58, 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %55, i64 %60
  %62 = load i32, i32* %16, align 4
  %63 = sdiv i32 %62, 2
  %64 = sdiv i32 %63, 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @mpi_export(i8* %61, i32 %64, i32 %65)
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr i8, i8* %67, i64 2
  %69 = load i32, i32* %16, align 4
  %70 = sdiv i32 %69, 2
  %71 = mul nsw i32 1, %70
  %72 = sdiv i32 %71, 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr i8, i8* %68, i64 %73
  %75 = load i32, i32* %16, align 4
  %76 = sdiv i32 %75, 2
  %77 = sdiv i32 %76, 8
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @mpi_export(i8* %74, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %49, %34
  %81 = load i8*, i8** %7, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %107

83:                                               ; preds = %80
  %84 = call i32 @gcry_mpi_new(i32 0)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @gcry_mpi_mul(i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @gcry_mpi_get_nbits(i32 %89)
  %91 = load i32, i32* %16, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr i8, i8* %95, i64 0
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @store_secpar(i8* %96, i32 %97)
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr i8, i8* %99, i64 2
  %101 = load i32, i32* %16, align 4
  %102 = sdiv i32 %101, 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @mpi_export(i8* %100, i32 %102, i32 %103)
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @gcry_mpi_release(i32 %105)
  br label %107

107:                                              ; preds = %83, %80
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @gcry_mpi_release(i32 %108)
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @gcry_mpi_release(i32 %110)
  %112 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %112)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VALIDATE_SECPAR(i32) #2

declare dso_local i32 @initialize_libgcrypt(i32) #2

declare dso_local i32 @gcry_randomize(i32*, i32, i32) #2

declare dso_local i32 @genprime3mod4(i32, i8*, i64, i32) #2

declare dso_local i32 @store_secpar(i8*, i32) #2

declare dso_local i32 @mpi_export(i8*, i32, i32) #2

declare dso_local i32 @gcry_mpi_new(i32) #2

declare dso_local i32 @gcry_mpi_mul(i32, i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @gcry_mpi_get_nbits(i32) #2

declare dso_local i32 @gcry_mpi_release(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
