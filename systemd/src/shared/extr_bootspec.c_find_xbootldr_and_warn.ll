; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bootspec.c_find_xbootldr_and_warn.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bootspec.c_find_xbootldr_and_warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"SYSTEMD_XBOOTLDR_PATH\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"$SYSTEMD_XBOOTLDR_PATH does not refer to absolute path, refusing to use it: %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/boot\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_xbootldr_and_warn(i8* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @verify_xbootldr(i8* %15, i32 0, i32 %16, i32* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %76

23:                                               ; preds = %14
  br label %62

24:                                               ; preds = %4
  %25 = call i8* @getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @path_is_valid(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @path_is_absolute(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = call i32 @SYNTHETIC_ERRNO(i32 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @log_error_errno(i32 %38, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  store i32 %40, i32* %5, align 4
  br label %76

41:                                               ; preds = %32
  br label %62

42:                                               ; preds = %24
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @verify_xbootldr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %43, i32* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %62

49:                                               ; preds = %42
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  %53 = load i32, i32* @EADDRNOTAVAIL, align 4
  %54 = sub nsw i32 0, %53
  %55 = call i32 @IN_SET(i32 %50, i32 %52, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %76

59:                                               ; preds = %49
  %60 = load i32, i32* @ENOKEY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %76

62:                                               ; preds = %48, %41, %23
  %63 = load i8**, i8*** %8, align 8
  %64 = icmp ne i8** %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i8*, i8** %6, align 8
  %67 = call i8* @strdup(i8* %66)
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = call i32 (...) @log_oom()
  store i32 %71, i32* %5, align 4
  br label %76

72:                                               ; preds = %65
  %73 = load i8*, i8** %11, align 8
  %74 = load i8**, i8*** %8, align 8
  store i8* %73, i8** %74, align 8
  br label %75

75:                                               ; preds = %72, %62
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %70, %59, %57, %36, %21
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @verify_xbootldr(i8*, i32, i32, i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @path_is_valid(i8*) #1

declare dso_local i32 @path_is_absolute(i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @log_oom(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
