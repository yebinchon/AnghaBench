; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_fsprg.c_FSPRG_Seek.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_fsprg.c_FSPRG_Seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RND_GEN_X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FSPRG_Seek(i8* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %21 = call i32 @initialize_libgcrypt(i32 0)
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr i8, i8* %22, i64 0
  %24 = call i32 @read_secpar(i8* %23)
  store i32 %24, i32* %20, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr i8, i8* %25, i64 2
  %27 = load i32, i32* %20, align 4
  %28 = sdiv i32 %27, 2
  %29 = mul nsw i32 0, %28
  %30 = sdiv i32 %29, 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr i8, i8* %26, i64 %31
  %33 = load i32, i32* %20, align 4
  %34 = sdiv i32 %33, 2
  %35 = sdiv i32 %34, 8
  %36 = call i32 @mpi_import(i8* %32, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr i8, i8* %37, i64 2
  %39 = load i32, i32* %20, align 4
  %40 = sdiv i32 %39, 2
  %41 = mul nsw i32 1, %40
  %42 = sdiv i32 %41, 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %38, i64 %43
  %45 = load i32, i32* %20, align 4
  %46 = sdiv i32 %45, 2
  %47 = sdiv i32 %46, 8
  %48 = call i32 @mpi_import(i8* %44, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = call i32 @gcry_mpi_new(i32 0)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @gcry_mpi_mul(i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* @RND_GEN_X, align 4
  %58 = load i32, i32* %20, align 4
  %59 = call i32 @gensquare(i32 %54, i8* %55, i64 %56, i32 %57, i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @CRT_decompose(i32* %15, i32* %16, i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @twopowmodphi(i32 %64, i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @twopowmodphi(i32 %67, i32 %68)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @gcry_mpi_powm(i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @gcry_mpi_powm(i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @CRT_compose(i32* %19, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr i8, i8* %85, i64 0
  %87 = load i32, i32* %20, align 4
  %88 = call i32 @store_secpar(i8* %86, i32 %87)
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr i8, i8* %89, i64 2
  %91 = load i32, i32* %20, align 4
  %92 = mul nsw i32 0, %91
  %93 = sdiv i32 %92, 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr i8, i8* %90, i64 %94
  %96 = load i32, i32* %20, align 4
  %97 = sdiv i32 %96, 8
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @mpi_export(i8* %95, i32 %97, i32 %98)
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr i8, i8* %100, i64 2
  %102 = load i32, i32* %20, align 4
  %103 = mul nsw i32 1, %102
  %104 = sdiv i32 %103, 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr i8, i8* %101, i64 %105
  %107 = load i32, i32* %20, align 4
  %108 = sdiv i32 %107, 8
  %109 = load i32, i32* %19, align 4
  %110 = call i32 @mpi_export(i8* %106, i32 %108, i32 %109)
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr i8, i8* %111, i64 2
  %113 = load i32, i32* %20, align 4
  %114 = mul nsw i32 2, %113
  %115 = sdiv i32 %114, 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr i8, i8* %112, i64 %116
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @uint64_export(i8* %117, i32 8, i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @gcry_mpi_release(i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @gcry_mpi_release(i32 %122)
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @gcry_mpi_release(i32 %124)
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @gcry_mpi_release(i32 %126)
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @gcry_mpi_release(i32 %128)
  %130 = load i32, i32* %16, align 4
  %131 = call i32 @gcry_mpi_release(i32 %130)
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @gcry_mpi_release(i32 %132)
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @gcry_mpi_release(i32 %134)
  %136 = load i32, i32* %19, align 4
  %137 = call i32 @gcry_mpi_release(i32 %136)
  ret void
}

declare dso_local i32 @initialize_libgcrypt(i32) #1

declare dso_local i32 @read_secpar(i8*) #1

declare dso_local i32 @mpi_import(i8*, i32) #1

declare dso_local i32 @gcry_mpi_new(i32) #1

declare dso_local i32 @gcry_mpi_mul(i32, i32, i32) #1

declare dso_local i32 @gensquare(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @CRT_decompose(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @twopowmodphi(i32, i32) #1

declare dso_local i32 @gcry_mpi_powm(i32, i32, i32, i32) #1

declare dso_local i32 @CRT_compose(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @store_secpar(i8*, i32) #1

declare dso_local i32 @mpi_export(i8*, i32, i32) #1

declare dso_local i32 @uint64_export(i8*, i32, i32) #1

declare dso_local i32 @gcry_mpi_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
