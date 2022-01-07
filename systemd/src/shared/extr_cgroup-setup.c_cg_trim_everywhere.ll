; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_cgroup-setup.c_cg_trim_everywhere.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_cgroup-setup.c_cg_trim_everywhere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSTEMD_CGROUP_CONTROLLER = common dso_local global i32 0, align 4
@CGROUP_MASK_V1 = common dso_local global i32 0, align 4
@_CGROUP_CONTROLLER_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cg_trim_everywhere(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @cg_trim(i32 %13, i8* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %69

21:                                               ; preds = %3
  %22 = call i32 (...) @cg_all_unified()
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  br label %69

27:                                               ; preds = %21
  %28 = load i32, i32* %11, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %69

32:                                               ; preds = %27
  %33 = load i32, i32* @CGROUP_MASK_V1, align 4
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %36

36:                                               ; preds = %64, %32
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @_CGROUP_CONTROLLER_MAX, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @CGROUP_CONTROLLER_TO_MASK(i64 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i64 @FLAGS_SET(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %64

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @FLAGS_SET(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %64

54:                                               ; preds = %48
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @cgroup_controller_to_string(i64 %55)
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @cg_trim(i32 %56, i8* %57, i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @CGROUP_MASK_EXTEND_JOINED(i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %54, %53, %47
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %8, align 8
  br label %36

67:                                               ; preds = %36
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %30, %25, %19
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @cg_trim(i32, i8*, i32) #1

declare dso_local i32 @cg_all_unified(...) #1

declare dso_local i32 @CGROUP_CONTROLLER_TO_MASK(i64) #1

declare dso_local i64 @FLAGS_SET(i32, i32) #1

declare dso_local i32 @cgroup_controller_to_string(i64) #1

declare dso_local i32 @CGROUP_MASK_EXTEND_JOINED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
