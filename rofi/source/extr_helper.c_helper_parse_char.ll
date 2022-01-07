; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_helper_parse_char.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_helper_parse_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"Failed to parse character string: \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @helper_parse_char(i8* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @strlen(i8* %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp eq i64 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %2, align 1
  br label %61

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %14, 2
  br i1 %15, label %16, label %38

16:                                               ; preds = %13
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 92
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %36 [
    i32 110, label %27
    i32 97, label %28
    i32 98, label %29
    i32 116, label %30
    i32 118, label %31
    i32 102, label %32
    i32 114, label %33
    i32 92, label %34
    i32 48, label %35
  ]

27:                                               ; preds = %22
  store i8 10, i8* %2, align 1
  br label %61

28:                                               ; preds = %22
  store i8 7, i8* %2, align 1
  br label %61

29:                                               ; preds = %22
  store i8 8, i8* %2, align 1
  br label %61

30:                                               ; preds = %22
  store i8 9, i8* %2, align 1
  br label %61

31:                                               ; preds = %22
  store i8 11, i8* %2, align 1
  br label %61

32:                                               ; preds = %22
  store i8 12, i8* %2, align 1
  br label %61

33:                                               ; preds = %22
  store i8 13, i8* %2, align 1
  br label %61

34:                                               ; preds = %22
  store i8 92, i8* %2, align 1
  br label %61

35:                                               ; preds = %22
  store i8 0, i8* %2, align 1
  br label %61

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37, %16, %13
  %39 = load i64, i64* %4, align 8
  %40 = icmp ugt i64 %39, 2
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 92
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 120
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = call i64 @strtol(i8* %55, i32* null, i32 16)
  %57 = trunc i64 %56 to i8
  store i8 %57, i8* %2, align 1
  br label %61

58:                                               ; preds = %47, %41, %38
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @g_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %59)
  store i8 10, i8* %2, align 1
  br label %61

61:                                               ; preds = %58, %53, %35, %34, %33, %32, %31, %30, %29, %28, %27, %9
  %62 = load i8, i8* %2, align 1
  ret i8 %62
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @g_warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
