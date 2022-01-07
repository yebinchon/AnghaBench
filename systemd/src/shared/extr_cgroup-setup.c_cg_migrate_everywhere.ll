; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_cgroup-setup.c_cg_migrate_everywhere.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_cgroup-setup.c_cg_migrate_everywhere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSTEMD_CGROUP_CONTROLLER = common dso_local global i32 0, align 4
@CGROUP_REMOVE = common dso_local global i32 0, align 4
@CGROUP_MASK_V1 = common dso_local global i32 0, align 4
@_CGROUP_CONTROLLER_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cg_migrate_everywhere(i32 %0, i8* %1, i8* %2, i8* (i32, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8* (i32, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* (i32, i8*)* %3, i8* (i32, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %14, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @path_equal(i8* %18, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* @CGROUP_REMOVE, align 4
  %28 = call i32 @cg_migrate_recursive(i32 %23, i8* %24, i32 %25, i8* %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %6, align 4
  br label %96

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %5
  %35 = call i32 (...) @cg_all_unified()
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %6, align 4
  br label %96

40:                                               ; preds = %34
  %41 = load i32, i32* %15, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %6, align 4
  br label %96

45:                                               ; preds = %40
  %46 = load i32, i32* @CGROUP_MASK_V1, align 4
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %12, align 8
  br label %49

49:                                               ; preds = %91, %45
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @_CGROUP_CONTROLLER_MAX, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %94

53:                                               ; preds = %49
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @CGROUP_CONTROLLER_TO_MASK(i64 %54)
  store i32 %55, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i64 @FLAGS_SET(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  br label %91

61:                                               ; preds = %53
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i64 @FLAGS_SET(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %91

67:                                               ; preds = %61
  %68 = load i8* (i32, i8*)*, i8* (i32, i8*)** %10, align 8
  %69 = icmp ne i8* (i32, i8*)* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i8* (i32, i8*)*, i8* (i32, i8*)** %10, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i8*, i8** %11, align 8
  %74 = call i8* %71(i32 %72, i8* %73)
  store i8* %74, i8** %17, align 8
  br label %75

75:                                               ; preds = %70, %67
  %76 = load i8*, i8** %17, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** %9, align 8
  store i8* %79, i8** %17, align 8
  br label %80

80:                                               ; preds = %78, %75
  %81 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @cgroup_controller_to_string(i64 %83)
  %85 = load i8*, i8** %17, align 8
  %86 = call i32 @cg_migrate_recursive_fallback(i32 %81, i8* %82, i32 %84, i8* %85, i32 0)
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @CGROUP_MASK_EXTEND_JOINED(i32 %87)
  %89 = load i32, i32* %13, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %80, %66, %60
  %92 = load i64, i64* %12, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %12, align 8
  br label %49

94:                                               ; preds = %49
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %43, %38, %31
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @path_equal(i8*, i8*) #1

declare dso_local i32 @cg_migrate_recursive(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @cg_all_unified(...) #1

declare dso_local i32 @CGROUP_CONTROLLER_TO_MASK(i64) #1

declare dso_local i64 @FLAGS_SET(i32, i32) #1

declare dso_local i32 @cg_migrate_recursive_fallback(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @cgroup_controller_to_string(i64) #1

declare dso_local i32 @CGROUP_MASK_EXTEND_JOINED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
