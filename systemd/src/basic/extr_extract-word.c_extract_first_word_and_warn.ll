; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_extract-word.c_extract_first_word_and_warn.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_extract-word.c_extract_first_word_and_warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@EXTRACT_CUNESCAPE_RELAX = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Ignoring unknown escape sequences: \22%s\22\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unbalanced quoting, ignoring: \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Unable to decode word \22%s\22, ignoring: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extract_first_word_and_warn(i8** %0, i8** %1, i8* %2, i32 %3, i8* %4, i8* %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8** %0, i8*** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %20 = load i8**, i8*** %10, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %18, align 8
  %22 = load i8**, i8*** %10, align 8
  %23 = load i8**, i8*** %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @extract_first_word(i8** %22, i8** %23, i8* %24, i32 %25)
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %19, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %8
  %30 = load i32, i32* %19, align 4
  store i32 %30, i32* %9, align 4
  br label %85

31:                                               ; preds = %8
  %32 = load i32, i32* %19, align 4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @EXTRACT_CUNESCAPE_RELAX, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %77, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %18, align 8
  %43 = load i8**, i8*** %10, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i8**, i8*** %10, align 8
  %45 = load i8**, i8*** %11, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @EXTRACT_CUNESCAPE_RELAX, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @extract_first_word(i8** %44, i8** %45, i8* %46, i32 %49)
  store i32 %50, i32* %19, align 4
  %51 = load i32, i32* %19, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %41
  %54 = load i8*, i8** %14, align 8
  %55 = load i32, i32* @LOG_WARNING, align 4
  %56 = load i8*, i8** %15, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @EINVAL, align 4
  %59 = load i8**, i8*** %11, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @log_syntax(i8* %54, i32 %55, i8* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %60)
  %62 = load i32, i32* %19, align 4
  store i32 %62, i32* %9, align 4
  br label %85

63:                                               ; preds = %41
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i8*, i8** %14, align 8
  %70 = load i32, i32* @LOG_ERR, align 4
  %71 = load i8*, i8** %15, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %19, align 4
  %74 = load i8*, i8** %17, align 8
  %75 = call i32 @log_syntax(i8* %69, i32 %70, i8* %71, i32 %72, i32 %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  store i32 %75, i32* %9, align 4
  br label %85

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %36, %31
  %78 = load i8*, i8** %14, align 8
  %79 = load i32, i32* @LOG_ERR, align 4
  %80 = load i8*, i8** %15, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %19, align 4
  %83 = load i8*, i8** %17, align 8
  %84 = call i32 @log_syntax(i8* %78, i32 %79, i8* %80, i32 %81, i32 %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %77, %68, %53, %29
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local i32 @extract_first_word(i8**, i8**, i8*, i32) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
