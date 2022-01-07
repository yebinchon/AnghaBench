; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyle.c_is_valid_border_style.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyle.c_is_valid_border_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_valid_border_style.styleDotted = internal constant [7 x i8] c"dotted\00", align 1
@is_valid_border_style.styleDashed = internal constant [7 x i8] c"dashed\00", align 1
@is_valid_border_style.styleSolid = internal constant [6 x i8] c"solid\00", align 1
@is_valid_border_style.styleDouble = internal constant [7 x i8] c"double\00", align 1
@is_valid_border_style.styleGroove = internal constant [7 x i8] c"groove\00", align 1
@is_valid_border_style.styleRidge = internal constant [6 x i8] c"ridge\00", align 1
@is_valid_border_style.styleInset = internal constant [6 x i8] c"inset\00", align 1
@is_valid_border_style.styleOutset = internal constant [7 x i8] c"outset\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@styleNone = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_valid_border_style to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_border_style(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @debugstr_w(i32 %4)
  %6 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %46

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i8*, i8** @styleNone, align 8
  %12 = call i64 @strcmpiW(i32 %10, i8* %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @strcmpiW(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @is_valid_border_style.styleDotted, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @strcmpiW(i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @is_valid_border_style.styleDashed, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @strcmpiW(i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @is_valid_border_style.styleSolid, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @strcmpiW(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @is_valid_border_style.styleDouble, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @strcmpiW(i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @is_valid_border_style.styleGroove, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @strcmpiW(i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @is_valid_border_style.styleRidge, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @strcmpiW(i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @is_valid_border_style.styleInset, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @strcmpiW(i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @is_valid_border_style.styleOutset, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %38, %34, %30, %26, %22, %18, %14, %9, %1
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %2, align 4
  br label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i64 @strcmpiW(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
