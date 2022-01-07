; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_prime_miller_rabin.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_prime_miller_rabin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_NO = common dso_local global i32 0, align 4
@MP_GT = common dso_local global i64 0, align 8
@MP_VAL = common dso_local global i32 0, align 4
@MP_OKAY = common dso_local global i32 0, align 4
@MP_EQ = common dso_local global i64 0, align 8
@MP_YES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @mp_prime_miller_rabin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_prime_miller_rabin(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @MP_NO, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @mp_cmp_d(i32* %16, i32 1)
  %18 = load i64, i64* @MP_GT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @MP_VAL, align 4
  store i32 %21, i32* %4, align 4
  br label %108

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @mp_init_copy(i32* %8, i32* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @MP_OKAY, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %4, align 4
  br label %108

29:                                               ; preds = %22
  %30 = call i32 @mp_sub_d(i32* %8, i32 1, i32* %8)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @MP_OKAY, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %105

34:                                               ; preds = %29
  %35 = call i32 @mp_init_copy(i32* %10, i32* %8)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* @MP_OKAY, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %105

39:                                               ; preds = %34
  %40 = call i32 @mp_cnt_lsb(i32* %10)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @mp_div_2d(i32* %10, i32 %41, i32* %10, i32* null)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* @MP_OKAY, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %103

46:                                               ; preds = %39
  %47 = call i32 @mp_init(i32* %9)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* @MP_OKAY, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %103

51:                                               ; preds = %46
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @mp_exptmod(i32* %52, i32* %10, i32* %53, i32* %9)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* @MP_OKAY, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %101

58:                                               ; preds = %51
  %59 = call i64 @mp_cmp_d(i32* %9, i32 1)
  %60 = load i64, i64* @MP_EQ, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %98

62:                                               ; preds = %58
  %63 = call i64 @mp_cmp(i32* %9, i32* %8)
  %64 = load i64, i64* @MP_EQ, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %98

66:                                               ; preds = %62
  store i32 1, i32* %12, align 4
  br label %67

67:                                               ; preds = %89, %66
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 %69, 1
  %71 = icmp sle i32 %68, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = call i64 @mp_cmp(i32* %9, i32* %8)
  %74 = load i64, i64* @MP_EQ, align 8
  %75 = icmp ne i64 %73, %74
  br label %76

76:                                               ; preds = %72, %67
  %77 = phi i1 [ false, %67 ], [ %75, %72 ]
  br i1 %77, label %78, label %92

78:                                               ; preds = %76
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @mp_sqrmod(i32* %9, i32* %79, i32* %9)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* @MP_OKAY, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %101

84:                                               ; preds = %78
  %85 = call i64 @mp_cmp_d(i32* %9, i32 1)
  %86 = load i64, i64* @MP_EQ, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %101

89:                                               ; preds = %84
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %67

92:                                               ; preds = %76
  %93 = call i64 @mp_cmp(i32* %9, i32* %8)
  %94 = load i64, i64* @MP_EQ, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %101

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %62, %58
  %99 = load i32, i32* @MP_YES, align 4
  %100 = load i32*, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %96, %88, %83, %57
  %102 = call i32 @mp_clear(i32* %9)
  br label %103

103:                                              ; preds = %101, %50, %45
  %104 = call i32 @mp_clear(i32* %10)
  br label %105

105:                                              ; preds = %103, %38, %33
  %106 = call i32 @mp_clear(i32* %8)
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %27, %20
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i64 @mp_cmp_d(i32*, i32) #1

declare dso_local i32 @mp_init_copy(i32*, i32*) #1

declare dso_local i32 @mp_sub_d(i32*, i32, i32*) #1

declare dso_local i32 @mp_cnt_lsb(i32*) #1

declare dso_local i32 @mp_div_2d(i32*, i32, i32*, i32*) #1

declare dso_local i32 @mp_init(i32*) #1

declare dso_local i32 @mp_exptmod(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @mp_cmp(i32*, i32*) #1

declare dso_local i32 @mp_sqrmod(i32*, i32*, i32*) #1

declare dso_local i32 @mp_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
