; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_terminal-util.c_get_log_colors.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_terminal-util.c_get_log_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_ERR = common dso_local global i32 0, align 4
@ANSI_HIGHLIGHT_RED = common dso_local global i8* null, align 8
@ANSI_NORMAL = common dso_local global i8* null, align 8
@ANSI_HIGHLIGHT = common dso_local global i8* null, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@ANSI_HIGHLIGHT_YELLOW = common dso_local global i8* null, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@ANSI_GREY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_log_colors(i32 %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @LOG_ERR, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %4
  %13 = load i8**, i8*** %6, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8*, i8** @ANSI_HIGHLIGHT_RED, align 8
  %17 = load i8**, i8*** %6, align 8
  store i8* %16, i8** %17, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i8**, i8*** %7, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** @ANSI_NORMAL, align 8
  %23 = load i8**, i8*** %7, align 8
  store i8* %22, i8** %23, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i8**, i8*** %8, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** @ANSI_HIGHLIGHT, align 8
  %29 = load i8**, i8*** %8, align 8
  store i8* %28, i8** %29, align 8
  br label %30

30:                                               ; preds = %27, %24
  br label %103

31:                                               ; preds = %4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @LOG_WARNING, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load i8**, i8*** %6, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i8*, i8** @ANSI_HIGHLIGHT_YELLOW, align 8
  %40 = load i8**, i8*** %6, align 8
  store i8* %39, i8** %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i8**, i8*** %7, align 8
  %43 = icmp ne i8** %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i8*, i8** @ANSI_NORMAL, align 8
  %46 = load i8**, i8*** %7, align 8
  store i8* %45, i8** %46, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i8**, i8*** %8, align 8
  %49 = icmp ne i8** %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i8*, i8** @ANSI_HIGHLIGHT, align 8
  %52 = load i8**, i8*** %8, align 8
  store i8* %51, i8** %52, align 8
  br label %53

53:                                               ; preds = %50, %47
  br label %102

54:                                               ; preds = %31
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @LOG_NOTICE, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load i8**, i8*** %6, align 8
  %60 = icmp ne i8** %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** @ANSI_HIGHLIGHT, align 8
  %63 = load i8**, i8*** %6, align 8
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i8**, i8*** %7, align 8
  %66 = icmp ne i8** %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i8*, i8** @ANSI_NORMAL, align 8
  %69 = load i8**, i8*** %7, align 8
  store i8* %68, i8** %69, align 8
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i8**, i8*** %8, align 8
  %72 = icmp ne i8** %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i8*, i8** @ANSI_HIGHLIGHT_RED, align 8
  %75 = load i8**, i8*** %8, align 8
  store i8* %74, i8** %75, align 8
  br label %76

76:                                               ; preds = %73, %70
  br label %101

77:                                               ; preds = %54
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @LOG_DEBUG, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = load i8**, i8*** %6, align 8
  %83 = icmp ne i8** %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i8*, i8** @ANSI_GREY, align 8
  %86 = load i8**, i8*** %6, align 8
  store i8* %85, i8** %86, align 8
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i8**, i8*** %7, align 8
  %89 = icmp ne i8** %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i8*, i8** @ANSI_NORMAL, align 8
  %92 = load i8**, i8*** %7, align 8
  store i8* %91, i8** %92, align 8
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i8**, i8*** %8, align 8
  %95 = icmp ne i8** %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i8*, i8** @ANSI_HIGHLIGHT_RED, align 8
  %98 = load i8**, i8*** %8, align 8
  store i8* %97, i8** %98, align 8
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %77
  br label %101

101:                                              ; preds = %100, %76
  br label %102

102:                                              ; preds = %101, %53
  br label %103

103:                                              ; preds = %102, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
