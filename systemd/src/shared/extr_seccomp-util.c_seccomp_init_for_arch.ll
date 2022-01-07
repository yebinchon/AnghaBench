; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_seccomp-util.c_seccomp_init_for_arch.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_seccomp-util.c_seccomp_init_for_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@SCMP_ARCH_NATIVE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@SCMP_FLTATR_ACT_BADARCH = common dso_local global i32 0, align 4
@SCMP_ACT_ALLOW = common dso_local global i32 0, align 4
@SCMP_FLTATR_CTL_NNP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seccomp_init_for_arch(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @seccomp_init(i32 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %97

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SCMP_ARCH_NATIVE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (...) @seccomp_arch_native()
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = call i32 (...) @seccomp_arch_native()
  %28 = call i32 @seccomp_arch_remove(i64 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %93

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @seccomp_arch_add(i64 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %93

39:                                               ; preds = %32
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @seccomp_arch_exist(i64 %40, i32 %41)
  %43 = icmp sge i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* @SCMP_ARCH_NATIVE, align 4
  %48 = call i64 @seccomp_arch_exist(i64 %46, i32 %47)
  %49 = load i64, i64* @EEXIST, align 8
  %50 = sub nsw i64 0, %49
  %51 = icmp eq i64 %48, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64, i64* %8, align 8
  %55 = call i32 (...) @seccomp_arch_native()
  %56 = call i64 @seccomp_arch_exist(i64 %54, i32 %55)
  %57 = load i64, i64* @EEXIST, align 8
  %58 = sub nsw i64 0, %57
  %59 = icmp eq i64 %56, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  br label %75

62:                                               ; preds = %21, %17
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* @SCMP_ARCH_NATIVE, align 4
  %65 = call i64 @seccomp_arch_exist(i64 %63, i32 %64)
  %66 = icmp sge i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i64, i64* %8, align 8
  %70 = call i32 (...) @seccomp_arch_native()
  %71 = call i64 @seccomp_arch_exist(i64 %69, i32 %70)
  %72 = icmp sge i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  br label %75

75:                                               ; preds = %62, %39
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* @SCMP_FLTATR_ACT_BADARCH, align 4
  %78 = load i32, i32* @SCMP_ACT_ALLOW, align 4
  %79 = call i32 @seccomp_attr_set(i64 %76, i32 %77, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %93

83:                                               ; preds = %75
  %84 = load i64, i64* %8, align 8
  %85 = load i32, i32* @SCMP_FLTATR_CTL_NNP, align 4
  %86 = call i32 @seccomp_attr_set(i64 %84, i32 %85, i32 0)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %93

90:                                               ; preds = %83
  %91 = load i64, i64* %8, align 8
  %92 = load i64*, i64** %5, align 8
  store i64 %91, i64* %92, align 8
  store i32 0, i32* %4, align 4
  br label %97

93:                                               ; preds = %89, %82, %38, %31
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @seccomp_release(i64 %94)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %90, %14
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i64 @seccomp_init(i32) #1

declare dso_local i32 @seccomp_arch_native(...) #1

declare dso_local i32 @seccomp_arch_remove(i64, i32) #1

declare dso_local i32 @seccomp_arch_add(i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @seccomp_arch_exist(i64, i32) #1

declare dso_local i32 @seccomp_attr_set(i64, i32, i32) #1

declare dso_local i32 @seccomp_release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
