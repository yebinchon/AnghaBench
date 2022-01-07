; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_read_mpi.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_read_mpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i64, i64)* @read_mpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_mpi(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp ult i64 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %35

14:                                               ; preds = %4
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @mpi_len(i32* %15)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = mul i64 %17, 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i64 0, i64* %5, align 8
  br label %35

22:                                               ; preds = %14
  %23 = load i64, i64* %10, align 8
  %24 = add i64 %23, 2
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i64 0, i64* %5, align 8
  br label %35

29:                                               ; preds = %22
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @memcpy(i32* %30, i32* %31, i64 %32)
  %34 = load i64, i64* %10, align 8
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %29, %28, %21, %13
  %36 = load i64, i64* %5, align 8
  ret i64 %36
}

declare dso_local i64 @mpi_len(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
