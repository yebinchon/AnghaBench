; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_fileio.c_check_ei.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_fileio.c_check_ei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_ei = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@NUL = common dso_local global i8 0, align 1
@NUM_EVENTS = common dso_local global i64 0, align 8
@FAIL = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_ei() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i8*, i8** @p_ei, align 8
  store i8* %3, i8** %2, align 8
  br label %4

4:                                                ; preds = %45, %0
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %4
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @STRNICMP(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %8
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 3
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = load i8, i8* @NUL, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %12
  %21 = load i8*, i8** %2, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 3
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 44
  br i1 %25, label %26, label %37

26:                                               ; preds = %20, %12
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  store i8* %28, i8** %2, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 44
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %2, align 8
  br label %36

36:                                               ; preds = %33, %26
  br label %45

37:                                               ; preds = %20, %8
  %38 = load i8*, i8** %2, align 8
  %39 = call i64 @event_name2nr(i8* %38, i8** %2)
  %40 = load i64, i64* @NUM_EVENTS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @FAIL, align 4
  store i32 %43, i32* %1, align 4
  br label %48

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %36
  br label %4

46:                                               ; preds = %4
  %47 = load i32, i32* @OK, align 4
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i64 @STRNICMP(i8*, i8*, i32) #1

declare dso_local i64 @event_name2nr(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
