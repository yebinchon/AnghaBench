; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_fsprg.c_FSPRG_GenState0.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_fsprg.c_FSPRG_GenState0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RND_GEN_X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FSPRG_GenState0(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = call i32 @initialize_libgcrypt(i32 0)
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr i8, i8* %13, i64 0
  %15 = call i32 @read_secpar(i8* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr i8, i8* %16, i64 2
  %18 = load i32, i32* %11, align 4
  %19 = sdiv i32 %18, 8
  %20 = call i32 @mpi_import(i8* %17, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* @RND_GEN_X, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @gensquare(i32 %21, i8* %22, i64 %23, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sdiv i32 %29, 8
  %31 = add nsw i32 2, %30
  %32 = call i32 @memcpy(i8* %27, i8* %28, i32 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr i8, i8* %33, i64 2
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 1, %35
  %37 = sdiv i32 %36, 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %34, i64 %38
  %40 = load i32, i32* %11, align 4
  %41 = sdiv i32 %40, 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @mpi_export(i8* %39, i32 %41, i32 %42)
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr i8, i8* %44, i64 2
  %46 = load i32, i32* %11, align 4
  %47 = mul nsw i32 2, %46
  %48 = sdiv i32 %47, 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* %45, i64 %49
  %51 = call i32 @memzero(i8* %50, i32 8)
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @gcry_mpi_release(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @gcry_mpi_release(i32 %54)
  ret void
}

declare dso_local i32 @initialize_libgcrypt(i32) #1

declare dso_local i32 @read_secpar(i8*) #1

declare dso_local i32 @mpi_import(i8*, i32) #1

declare dso_local i32 @gensquare(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mpi_export(i8*, i32, i32) #1

declare dso_local i32 @memzero(i8*, i32) #1

declare dso_local i32 @gcry_mpi_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
