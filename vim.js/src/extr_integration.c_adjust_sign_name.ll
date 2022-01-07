; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_integration.c_adjust_sign_name.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_integration.c_adjust_sign_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@adjust_sign_name.fontSize = internal global i32 -1, align 4
@.str = private unnamed_addr constant [6 x i8] c"2.xpm\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"1.xpm\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".xpm\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adjust_sign_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @adjust_sign_name.fontSize, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (...) @workshop_get_font_height()
  store i32 %7, i32* @adjust_sign_name.fontSize, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* @adjust_sign_name.fontSize, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %41

12:                                               ; preds = %8
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 45
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %41

19:                                               ; preds = %12
  %20 = load i8*, i8** %2, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = getelementptr inbounds i8, i8* %24, i64 -5
  store i8* %25, i8** %3, align 8
  %26 = load i32, i32* @adjust_sign_name.fontSize, align 4
  %27 = icmp sle i32 %26, 11
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strcpy(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %41

31:                                               ; preds = %19
  %32 = load i32, i32* @adjust_sign_name.fontSize, align 4
  %33 = icmp sle i32 %32, 15
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @strcpy(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %40

37:                                               ; preds = %31
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strcpy(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %11, %18, %40, %28
  ret void
}

declare dso_local i32 @workshop_get_font_height(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
