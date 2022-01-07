; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_get_calling_convention.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_get_calling_convention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNDNAME_NO_MS_KEYWORDS = common dso_local global i32 0, align 4
@UNDNAME_NO_ALLOCATION_LANGUAGE = common dso_local global i32 0, align 4
@UNDNAME_NO_LEADING_UNDERSCORES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"dll_export \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"cdecl\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"pascal\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"thiscall\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"stdcall\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"fastcall\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"clrcall\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Unknown calling convention %c\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"__dll_export \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"__cdecl\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"__pascal\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"__thiscall\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"__stdcall\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"__fastcall\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"__clrcall\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8**, i8**, i32)* @get_calling_convention to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_calling_convention(i8 signext %0, i8** %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store i8 %0, i8* %6, align 1
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i8**, i8*** %8, align 8
  store i8* null, i8** %10, align 8
  %11 = load i8**, i8*** %7, align 8
  store i8* null, i8** %11, align 8
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @UNDNAME_NO_MS_KEYWORDS, align 4
  %14 = load i32, i32* @UNDNAME_NO_ALLOCATION_LANGUAGE, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %82, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @UNDNAME_NO_LEADING_UNDERSCORES, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %18
  %24 = load i8, i8* %6, align 1
  %25 = sext i8 %24 to i32
  %26 = sub nsw i32 %25, 65
  %27 = srem i32 %26, 2
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %30, align 8
  br label %31

31:                                               ; preds = %29, %23
  %32 = load i8, i8* %6, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %47 [
    i32 65, label %34
    i32 66, label %34
    i32 67, label %36
    i32 68, label %36
    i32 69, label %38
    i32 70, label %38
    i32 71, label %40
    i32 72, label %40
    i32 73, label %42
    i32 74, label %42
    i32 75, label %44
    i32 76, label %44
    i32 77, label %45
  ]

34:                                               ; preds = %31, %31
  %35 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %35, align 8
  br label %51

36:                                               ; preds = %31, %31
  %37 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %37, align 8
  br label %51

38:                                               ; preds = %31, %31
  %39 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %39, align 8
  br label %51

40:                                               ; preds = %31, %31
  %41 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %41, align 8
  br label %51

42:                                               ; preds = %31, %31
  %43 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %43, align 8
  br label %51

44:                                               ; preds = %31, %31
  br label %51

45:                                               ; preds = %31
  %46 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %46, align 8
  br label %51

47:                                               ; preds = %31
  %48 = load i8, i8* %6, align 1
  %49 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8 signext %48)
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %5, align 4
  br label %84

51:                                               ; preds = %45, %44, %42, %40, %38, %36, %34
  br label %81

52:                                               ; preds = %18
  %53 = load i8, i8* %6, align 1
  %54 = sext i8 %53 to i32
  %55 = sub nsw i32 %54, 65
  %56 = srem i32 %55, 2
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %59, align 8
  br label %60

60:                                               ; preds = %58, %52
  %61 = load i8, i8* %6, align 1
  %62 = sext i8 %61 to i32
  switch i32 %62, label %76 [
    i32 65, label %63
    i32 66, label %63
    i32 67, label %65
    i32 68, label %65
    i32 69, label %67
    i32 70, label %67
    i32 71, label %69
    i32 72, label %69
    i32 73, label %71
    i32 74, label %71
    i32 75, label %73
    i32 76, label %73
    i32 77, label %74
  ]

63:                                               ; preds = %60, %60
  %64 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %64, align 8
  br label %80

65:                                               ; preds = %60, %60
  %66 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %66, align 8
  br label %80

67:                                               ; preds = %60, %60
  %68 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8** %68, align 8
  br label %80

69:                                               ; preds = %60, %60
  %70 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8** %70, align 8
  br label %80

71:                                               ; preds = %60, %60
  %72 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8** %72, align 8
  br label %80

73:                                               ; preds = %60, %60
  br label %80

74:                                               ; preds = %60
  %75 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8** %75, align 8
  br label %80

76:                                               ; preds = %60
  %77 = load i8, i8* %6, align 1
  %78 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8 signext %77)
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %5, align 4
  br label %84

80:                                               ; preds = %74, %73, %71, %69, %67, %65, %63
  br label %81

81:                                               ; preds = %80, %51
  br label %82

82:                                               ; preds = %81, %4
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %76, %47
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @ERR(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
