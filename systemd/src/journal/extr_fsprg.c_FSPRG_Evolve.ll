; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_fsprg.c_FSPRG_Evolve.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_fsprg.c_FSPRG_Evolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FSPRG_Evolve(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = call i32 @initialize_libgcrypt(i32 0)
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr i8, i8* %8, i64 0
  %10 = call i32 @read_secpar(i8* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr i8, i8* %11, i64 2
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 0, %13
  %15 = sdiv i32 %14, 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr i8, i8* %12, i64 %16
  %18 = load i32, i32* %5, align 4
  %19 = sdiv i32 %18, 8
  %20 = call i32 @mpi_import(i8* %17, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = getelementptr i8, i8* %21, i64 2
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 1, %23
  %25 = sdiv i32 %24, 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %22, i64 %26
  %28 = load i32, i32* %5, align 4
  %29 = sdiv i32 %28, 8
  %30 = call i32 @mpi_import(i8* %27, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i8*, i8** %2, align 8
  %32 = getelementptr i8, i8* %31, i64 2
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 2, %33
  %35 = sdiv i32 %34, 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %32, i64 %36
  %38 = call i32 @uint64_import(i8* %37, i32 8)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @gcry_mpi_mulm(i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  %46 = load i8*, i8** %2, align 8
  %47 = getelementptr i8, i8* %46, i64 2
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 1, %48
  %50 = sdiv i32 %49, 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %47, i64 %51
  %53 = load i32, i32* %5, align 4
  %54 = sdiv i32 %53, 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @mpi_export(i8* %52, i32 %54, i32 %55)
  %57 = load i8*, i8** %2, align 8
  %58 = getelementptr i8, i8* %57, i64 2
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 2, %59
  %61 = sdiv i32 %60, 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr i8, i8* %58, i64 %62
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @uint64_export(i8* %63, i32 8, i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @gcry_mpi_release(i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @gcry_mpi_release(i32 %68)
  ret void
}

declare dso_local i32 @initialize_libgcrypt(i32) #1

declare dso_local i32 @read_secpar(i8*) #1

declare dso_local i32 @mpi_import(i8*, i32) #1

declare dso_local i32 @uint64_import(i8*, i32) #1

declare dso_local i32 @gcry_mpi_mulm(i32, i32, i32, i32) #1

declare dso_local i32 @mpi_export(i8*, i32, i32) #1

declare dso_local i32 @uint64_export(i8*, i32, i32) #1

declare dso_local i32 @gcry_mpi_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
