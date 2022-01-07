; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_parse_view_column_config_expr.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_parse_view_column_config_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c":=\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i8**, i32)* @parse_view_column_config_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_view_column_config_expr(i8** %0, i8** %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @strcspn(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %14, i64* %10, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = load i64, i64* %10, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8 0, i8* %24, align 1
  br label %25

25:                                               ; preds = %20, %4
  %26 = load i8**, i8*** %6, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcspn(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %28, i64* %11, align 8
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %25
  %32 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %32, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %40, align 8
  br label %43

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i8* [ %41, %39 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %42 ]
  %45 = load i8**, i8*** %8, align 8
  store i8* %44, i8** %45, align 8
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, 1
  %48 = load i8**, i8*** %6, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 %47
  store i8* %50, i8** %48, align 8
  %51 = load i32, i32* @SUCCESS, align 4
  store i32 %51, i32* %5, align 4
  br label %82

52:                                               ; preds = %31
  %53 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %53, align 8
  %54 = load i32, i32* @SUCCESS, align 4
  store i32 %54, i32* %5, align 4
  br label %82

55:                                               ; preds = %25
  %56 = load i8**, i8*** %6, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load i8**, i8*** %7, align 8
  store i8* %57, i8** %58, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %63, align 8
  br label %71

64:                                               ; preds = %55
  %65 = load i8**, i8*** %6, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8**, i8*** %8, align 8
  store i8* %69, i8** %70, align 8
  br label %71

71:                                               ; preds = %64, %62
  %72 = load i8**, i8*** %6, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8 0, i8* %75, align 1
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %76, 1
  %78 = load i8**, i8*** %6, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 %77
  store i8* %80, i8** %78, align 8
  %81 = load i32, i32* @SUCCESS, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %71, %52, %43
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
