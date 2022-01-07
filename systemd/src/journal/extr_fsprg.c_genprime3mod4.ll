; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_fsprg.c_genprime3mod4.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_fsprg.c_genprime3mod4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i32)* @genprime3mod4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genprime3mod4(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %13, 8
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* %5, align 4
  %20 = srem i32 %19, 8
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i64, i64* %9, align 8
  %25 = icmp ugt i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64, i64* %9, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @det_randomize(i32* %18, i64 %28, i8* %29, i64 %30, i32 %31)
  %33 = getelementptr inbounds i32, i32* %18, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = or i32 %34, 192
  store i32 %35, i32* %33, align 16
  %36 = load i64, i64* %9, align 8
  %37 = sub i64 %36, 1
  %38 = getelementptr inbounds i32, i32* %18, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, 3
  store i32 %40, i32* %38, align 4
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @mpi_import(i32* %18, i64 %41)
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %47, %4
  %44 = load i32, i32* %12, align 4
  %45 = call i64 @gcry_prime_check(i32 %44, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @gcry_mpi_add_ui(i32 %48, i32 %49, i32 4)
  br label %43

51:                                               ; preds = %43
  %52 = load i32, i32* %12, align 4
  %53 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %53)
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @det_randomize(i32*, i64, i8*, i64, i32) #2

declare dso_local i32 @mpi_import(i32*, i64) #2

declare dso_local i64 @gcry_prime_check(i32, i32) #2

declare dso_local i32 @gcry_mpi_add_ui(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
