; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_get_modifier.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_get_modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_symbol = type { i8*, i32 }

@UNDNAME_NO_MS_KEYWORDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"__ptr64\00", align 1
@UNDNAME_NO_LEADING_UNDERSCORES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"const volatile\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parsed_symbol*, i8**, i8**)* @get_modifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_modifier(%struct.parsed_symbol* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parsed_symbol*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  store %struct.parsed_symbol* %0, %struct.parsed_symbol** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %8 = load i8**, i8*** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load %struct.parsed_symbol*, %struct.parsed_symbol** %5, align 8
  %10 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 69
  br i1 %14, label %15, label %41

15:                                               ; preds = %3
  %16 = load %struct.parsed_symbol*, %struct.parsed_symbol** %5, align 8
  %17 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @UNDNAME_NO_MS_KEYWORDS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %15
  %23 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %24 = load %struct.parsed_symbol*, %struct.parsed_symbol** %5, align 8
  %25 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @UNDNAME_NO_LEADING_UNDERSCORES, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i8**, i8*** %7, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = load i8**, i8*** %7, align 8
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %30, %22
  br label %36

36:                                               ; preds = %35, %15
  %37 = load %struct.parsed_symbol*, %struct.parsed_symbol** %5, align 8
  %38 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %38, align 8
  br label %41

41:                                               ; preds = %36, %3
  %42 = load %struct.parsed_symbol*, %struct.parsed_symbol** %5, align 8
  %43 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %43, align 8
  %46 = load i8, i8* %44, align 1
  %47 = sext i8 %46 to i32
  switch i32 %47, label %56 [
    i32 65, label %48
    i32 66, label %50
    i32 67, label %52
    i32 68, label %54
  ]

48:                                               ; preds = %41
  %49 = load i8**, i8*** %6, align 8
  store i8* null, i8** %49, align 8
  br label %58

50:                                               ; preds = %41
  %51 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %51, align 8
  br label %58

52:                                               ; preds = %41
  %53 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %53, align 8
  br label %58

54:                                               ; preds = %41
  %55 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %55, align 8
  br label %58

56:                                               ; preds = %41
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %4, align 4
  br label %60

58:                                               ; preds = %54, %52, %50, %48
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
