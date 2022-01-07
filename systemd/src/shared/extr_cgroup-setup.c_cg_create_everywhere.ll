; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_cgroup-setup.c_cg_create_everywhere.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_cgroup-setup.c_cg_create_everywhere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSTEMD_CGROUP_CONTROLLER = common dso_local global i8* null, align 8
@CGROUP_MASK_V1 = common dso_local global i32 0, align 4
@_CGROUP_CONTROLLER_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cg_create_everywhere(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** @SYSTEMD_CGROUP_CONTROLLER, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @cg_create(i8* %14, i8* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %82

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %10, align 4
  %23 = call i32 (...) @cg_all_unified()
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %82

28:                                               ; preds = %21
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %82

33:                                               ; preds = %28
  %34 = load i32, i32* @CGROUP_MASK_V1, align 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @CGROUP_MASK_EXTEND_JOINED(i32 %37)
  store i32 %38, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %39

39:                                               ; preds = %77, %33
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @_CGROUP_CONTROLLER_MAX, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @CGROUP_CONTROLLER_TO_MASK(i64 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @FLAGS_SET(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %77

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i64 @FLAGS_SET(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %77

57:                                               ; preds = %51
  %58 = load i64, i64* %8, align 8
  %59 = call i8* @cgroup_controller_to_string(i64 %58)
  store i8* %59, i8** %13, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @FLAGS_SET(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i8*, i8** %13, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @cg_create(i8* %65, i8* %66)
  br label %72

68:                                               ; preds = %57
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @cg_trim(i8* %69, i8* %70, i32 1)
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @CGROUP_MASK_EXTEND_JOINED(i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %72, %56, %50
  %78 = load i64, i64* %8, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %8, align 8
  br label %39

80:                                               ; preds = %39
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %31, %26, %19
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @cg_create(i8*, i8*) #1

declare dso_local i32 @cg_all_unified(...) #1

declare dso_local i32 @CGROUP_MASK_EXTEND_JOINED(i32) #1

declare dso_local i32 @CGROUP_CONTROLLER_TO_MASK(i64) #1

declare dso_local i64 @FLAGS_SET(i32, i32) #1

declare dso_local i8* @cgroup_controller_to_string(i64) #1

declare dso_local i32 @cg_trim(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
