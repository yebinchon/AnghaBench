; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_random-util.c_rdrand.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_random-util.c_rdrand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rdrand.have_rdrand = internal global i32 -1, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@EUCLEAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"RDRAND returned suspicious value %lx, assuming bad hardware RNG, not using value.\00", align 1
@bit_RDRND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdrand(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %10 = load i32, i32* @rdrand.have_rdrand, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = call i64 @__get_cpuid(i32 1, i32* %6, i32* %7, i32* %8, i32* %9)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  store i32 0, i32* @rdrand.have_rdrand, align 4
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %54

18:                                               ; preds = %12
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 1073741824
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* @rdrand.have_rdrand, align 4
  br label %25

25:                                               ; preds = %18, %1
  %26 = load i32, i32* @rdrand.have_rdrand, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %54

31:                                               ; preds = %25
  %32 = call i64 asm sideeffect "rdrand $0;setc $1", "=r,=*qm,~{dirflag},~{fpsr},~{flags}"(i32* %5) #2, !srcloc !2
  store i64 %32, i64* %4, align 8
  %33 = call i32 @msan_unpoison(i32* %5, i32 4)
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %54

39:                                               ; preds = %31
  %40 = load i64, i64* %4, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @ULONG_MAX, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42, %39
  %47 = load i32, i32* @EUCLEAN, align 4
  %48 = call i32 @SYNTHETIC_ERRNO(i32 %47)
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @log_debug_errno(i32 %48, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i64 %49)
  store i32 %50, i32* %2, align 4
  br label %54

51:                                               ; preds = %42
  %52 = load i64, i64* %4, align 8
  %53 = load i64*, i64** %3, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %46, %36, %28, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @__get_cpuid(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @msan_unpoison(i32*, i32) #1

declare dso_local i32 @log_debug_errno(i32, i8*, i64) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 991}
