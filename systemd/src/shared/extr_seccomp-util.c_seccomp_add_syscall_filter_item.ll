; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_seccomp-util.c_seccomp_add_syscall_filter_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_seccomp-util.c_seccomp_add_syscall_filter_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Filter set %s is not known!\00", align 1
@__NR_SCMP_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"System call %s is not known, ignoring.\00", align 1
@EDOM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Failed to add rule for system call %s() / %d%s: %m\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c", ignoring\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seccomp_add_syscall_filter_item(i8* %0, i8* %1, i32 %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @assert(i8* %16)
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @assert(i8* %18)
  %20 = load i8**, i8*** %10, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strv_contains(i8** %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %95

25:                                               ; preds = %5
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 64
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = call i32* @syscall_filter_set_find(i8* %32)
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = call i32 @SYNTHETIC_ERRNO(i32 %37)
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 (i32, i8*, i8*, ...) @log_debug_errno(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 %40, i32* %6, align 4
  br label %95

41:                                               ; preds = %31
  %42 = load i8*, i8** %7, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i8**, i8*** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @seccomp_add_syscall_filter_set(i8* %42, i32* %43, i32 %44, i8** %45, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %95

48:                                               ; preds = %25
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @seccomp_syscall_resolve_name(i8* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @__NR_SCMP_ERROR, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @log_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %54
  store i32 0, i32* %6, align 4
  br label %95

61:                                               ; preds = %48
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @seccomp_rule_add_exact(i8* %62, i32 %63, i32 %64, i32 0)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %61
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @EDOM, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76, %68
  %80 = load i32, i32* %14, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %87 = call i32 (i32, i8*, i8*, ...) @log_debug_errno(i32 %80, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %81, i32 %82, i8* %86)
  br label %88

88:                                               ; preds = %79, %76
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %6, align 4
  br label %95

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %61
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %94, %91, %60, %41, %36, %24
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @strv_contains(i8**, i8*) #1

declare dso_local i32* @syscall_filter_set_find(i8*) #1

declare dso_local i32 @log_debug_errno(i32, i8*, i8*, ...) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @seccomp_add_syscall_filter_set(i8*, i32*, i32, i8**, i32) #1

declare dso_local i32 @seccomp_syscall_resolve_name(i8*) #1

declare dso_local i32 @log_debug(i8*, i8*) #1

declare dso_local i32 @seccomp_rule_add_exact(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
