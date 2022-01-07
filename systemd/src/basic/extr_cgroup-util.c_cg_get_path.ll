; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_cgroup-util.c_cg_get_path.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_cgroup-util.c_cg_get_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cg_get_path(i8* %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8**, i8*** %9, align 8
  %13 = call i32 @assert(i8** %12)
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %88

25:                                               ; preds = %19, %16
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @strdup(i8* %29)
  store i8* %30, i8** %11, align 8
  br label %42

31:                                               ; preds = %25
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = call i8* @strdup(i8* %35)
  store i8* %36, i8** %11, align 8
  br label %41

37:                                               ; preds = %31
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @path_join(i8* %38, i8* %39)
  store i8* %40, i8** %11, align 8
  br label %41

41:                                               ; preds = %37, %34
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %88

48:                                               ; preds = %42
  %49 = load i8*, i8** %11, align 8
  %50 = call i8* @path_simplify(i8* %49, i32 0)
  %51 = load i8**, i8*** %9, align 8
  store i8* %50, i8** %51, align 8
  store i32 0, i32* %5, align 4
  br label %88

52:                                               ; preds = %4
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @cg_controller_is_valid(i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %88

59:                                               ; preds = %52
  %60 = call i32 (...) @cg_all_unified()
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %5, align 4
  br label %88

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i8**, i8*** %9, align 8
  %72 = call i32 @join_path_unified(i8* %69, i8* %70, i8** %71)
  store i32 %72, i32* %10, align 4
  br label %79

73:                                               ; preds = %65
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i8**, i8*** %9, align 8
  %78 = call i32 @join_path_legacy(i8* %74, i8* %75, i8* %76, i8** %77)
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %73, %68
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %5, align 4
  br label %88

84:                                               ; preds = %79
  %85 = load i8**, i8*** %9, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @path_simplify(i8* %86, i32 0)
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %82, %63, %56, %48, %45, %22
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @path_join(i8*, i8*) #1

declare dso_local i8* @path_simplify(i8*, i32) #1

declare dso_local i32 @cg_controller_is_valid(i8*) #1

declare dso_local i32 @cg_all_unified(...) #1

declare dso_local i32 @join_path_unified(i8*, i8*, i8**) #1

declare dso_local i32 @join_path_legacy(i8*, i8*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
