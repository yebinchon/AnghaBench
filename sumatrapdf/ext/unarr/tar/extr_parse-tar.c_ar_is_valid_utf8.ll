; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/tar/extr_parse-tar.c_ar_is_valid_utf8.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/tar/extr_parse-tar.c_ar_is_valid_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ar_is_valid_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar_is_valid_utf8(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %4, align 8
  br label %7

7:                                                ; preds = %68, %1
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %71

11:                                               ; preds = %7
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp slt i32 %14, 128
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %48

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp slt i32 %20, 192
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %46

23:                                               ; preds = %17
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp slt i32 %26, 224
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %44

29:                                               ; preds = %23
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp slt i32 %32, 240
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %42

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp slt i32 %38, 245
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 3, i32 -1
  br label %42

42:                                               ; preds = %35, %34
  %43 = phi i32 [ 2, %34 ], [ %41, %35 ]
  br label %44

44:                                               ; preds = %42, %28
  %45 = phi i32 [ 1, %28 ], [ %43, %42 ]
  br label %46

46:                                               ; preds = %44, %22
  %47 = phi i32 [ -1, %22 ], [ %45, %44 ]
  br label %48

48:                                               ; preds = %46, %16
  %49 = phi i32 [ 0, %16 ], [ %47, %46 ]
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %72

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %66, %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %5, align 4
  %57 = icmp sgt i32 %55, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 192
  %64 = icmp ne i32 %63, 128
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %72

66:                                               ; preds = %58
  br label %54

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %4, align 8
  br label %7

71:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %65, %52
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
