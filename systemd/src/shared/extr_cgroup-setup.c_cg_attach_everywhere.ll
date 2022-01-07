; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_cgroup-setup.c_cg_attach_everywhere.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_cgroup-setup.c_cg_attach_everywhere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSTEMD_CGROUP_CONTROLLER = common dso_local global i32 0, align 4
@CGROUP_MASK_V1 = common dso_local global i32 0, align 4
@_CGROUP_CONTROLLER_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cg_attach_everywhere(i32 %0, i8* %1, i32 %2, i8* (i32, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8* (i32, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* (i32, i8*)* %3, i8* (i32, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @cg_attach(i32 %17, i8* %18, i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %6, align 4
  br label %84

25:                                               ; preds = %5
  %26 = call i32 (...) @cg_all_unified()
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %6, align 4
  br label %84

31:                                               ; preds = %25
  %32 = load i32, i32* %14, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %84

35:                                               ; preds = %31
  %36 = load i32, i32* @CGROUP_MASK_V1, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %12, align 8
  br label %39

39:                                               ; preds = %80, %35
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @_CGROUP_CONTROLLER_MAX, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %83

43:                                               ; preds = %39
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @CGROUP_CONTROLLER_TO_MASK(i64 %44)
  store i32 %45, i32* %15, align 4
  store i8* null, i8** %16, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %15, align 4
  %48 = call i64 @FLAGS_SET(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %80

51:                                               ; preds = %43
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i64 @FLAGS_SET(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %80

57:                                               ; preds = %51
  %58 = load i8* (i32, i8*)*, i8* (i32, i8*)** %10, align 8
  %59 = icmp ne i8* (i32, i8*)* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i8* (i32, i8*)*, i8* (i32, i8*)** %10, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = call i8* %61(i32 %62, i8* %63)
  store i8* %64, i8** %16, align 8
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i8*, i8** %16, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load i8*, i8** %8, align 8
  store i8* %69, i8** %16, align 8
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @cgroup_controller_to_string(i64 %71)
  %73 = load i8*, i8** %16, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @cg_attach_fallback(i32 %72, i8* %73, i32 %74)
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @CGROUP_MASK_EXTEND_JOINED(i32 %76)
  %78 = load i32, i32* %13, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %70, %56, %50
  %81 = load i64, i64* %12, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %12, align 8
  br label %39

83:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %34, %29, %23
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @cg_attach(i32, i8*, i32) #1

declare dso_local i32 @cg_all_unified(...) #1

declare dso_local i32 @CGROUP_CONTROLLER_TO_MASK(i64) #1

declare dso_local i64 @FLAGS_SET(i32, i32) #1

declare dso_local i32 @cg_attach_fallback(i32, i8*, i32) #1

declare dso_local i32 @cgroup_controller_to_string(i64) #1

declare dso_local i32 @CGROUP_MASK_EXTEND_JOINED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
