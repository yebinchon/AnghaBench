; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_fsprg.c_twopowmodphi.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_fsprg.c_twopowmodphi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @twopowmodphi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twopowmodphi(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @gcry_mpi_new(i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @gcry_mpi_sub_ui(i32 %9, i32 %10, i32 1)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %19, %2
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = shl i64 1, %14
  %16 = load i64, i64* %3, align 8
  %17 = icmp ule i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %12

22:                                               ; preds = %12
  %23 = call i32 @gcry_mpi_new(i32 0)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @gcry_mpi_set_ui(i32 %24, i32 1)
  br label %26

26:                                               ; preds = %58, %22
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @gcry_mpi_mulm(i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load i64, i64* %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = shl i64 1, %39
  %41 = and i64 %37, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %29
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @gcry_mpi_add(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @gcry_mpi_cmp(i32 %48, i32 %49)
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @gcry_mpi_sub(i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %43
  br label %58

58:                                               ; preds = %57, %29
  br label %26

59:                                               ; preds = %26
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @gcry_mpi_release(i32 %60)
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @gcry_mpi_new(i32) #1

declare dso_local i32 @gcry_mpi_sub_ui(i32, i32, i32) #1

declare dso_local i32 @gcry_mpi_set_ui(i32, i32) #1

declare dso_local i32 @gcry_mpi_mulm(i32, i32, i32, i32) #1

declare dso_local i32 @gcry_mpi_add(i32, i32, i32) #1

declare dso_local i64 @gcry_mpi_cmp(i32, i32) #1

declare dso_local i32 @gcry_mpi_sub(i32, i32, i32) #1

declare dso_local i32 @gcry_mpi_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
