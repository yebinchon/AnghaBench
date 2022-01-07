; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_prime_is_prime.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_prime_is_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_NO = common dso_local global i32 0, align 4
@PRIME_SIZE = common dso_local global i32 0, align 4
@MP_VAL = common dso_local global i32 0, align 4
@__prime_tab = common dso_local global i32* null, align 8
@MP_EQ = common dso_local global i64 0, align 8
@MP_OKAY = common dso_local global i32 0, align 4
@MP_YES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @mp_prime_is_prime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_prime_is_prime(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @MP_NO, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PRIME_SIZE, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %3
  %21 = load i32, i32* @MP_VAL, align 4
  store i32 %21, i32* %4, align 4
  br label %95

22:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @PRIME_SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** @__prime_tab, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @mp_cmp_d(i32* %28, i32 %33)
  %35 = load i64, i64* @MP_EQ, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32*, i32** %7, align 8
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* @MP_OKAY, align 4
  store i32 %39, i32* %4, align 4
  br label %95

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %23

44:                                               ; preds = %23
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @mp_prime_is_divisible(i32* %45, i32* %11)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @MP_OKAY, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %95

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @MP_YES, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @MP_OKAY, align 4
  store i32 %56, i32* %4, align 4
  br label %95

57:                                               ; preds = %51
  %58 = call i32 @mp_init(i32* %8)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* @MP_OKAY, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %95

63:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %86, %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %64
  %69 = load i32*, i32** @__prime_tab, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @mp_set(i32* %8, i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @mp_prime_miller_rabin(i32* %75, i32* %8, i32* %11)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* @MP_OKAY, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %92

80:                                               ; preds = %68
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @MP_NO, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %92

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %64

89:                                               ; preds = %64
  %90 = load i32, i32* @MP_YES, align 4
  %91 = load i32*, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %84, %79
  %93 = call i32 @mp_clear(i32* %8)
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %92, %61, %55, %49, %37, %20
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i64 @mp_cmp_d(i32*, i32) #1

declare dso_local i32 @mp_prime_is_divisible(i32*, i32*) #1

declare dso_local i32 @mp_init(i32*) #1

declare dso_local i32 @mp_set(i32*, i32) #1

declare dso_local i32 @mp_prime_miller_rabin(i32*, i32*, i32*) #1

declare dso_local i32 @mp_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
