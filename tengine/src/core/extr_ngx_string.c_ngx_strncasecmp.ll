; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_strncasecmp.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_strncasecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @ngx_strncasecmp(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %10

10:                                               ; preds = %64, %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %75

13:                                               ; preds = %10
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* %14, align 4
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %8, align 1
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* %18, align 4
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %9, align 1
  %22 = load i8, i8* %8, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sge i32 %23, 65
  br i1 %24, label %25, label %33

25:                                               ; preds = %13
  %26 = load i8, i8* %8, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp sle i32 %27, 90
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i8, i8* %8, align 1
  %31 = sext i8 %30 to i32
  %32 = or i32 %31, 32
  br label %36

33:                                               ; preds = %25, %13
  %34 = load i8, i8* %8, align 1
  %35 = sext i8 %34 to i32
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i32 [ %32, %29 ], [ %35, %33 ]
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %8, align 1
  %39 = load i8, i8* %9, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sge i32 %40, 65
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i8, i8* %9, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sle i32 %44, 90
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8, i8* %9, align 1
  %48 = sext i8 %47 to i32
  %49 = or i32 %48, 32
  br label %53

50:                                               ; preds = %42, %36
  %51 = load i8, i8* %9, align 1
  %52 = sext i8 %51 to i32
  br label %53

53:                                               ; preds = %50, %46
  %54 = phi i32 [ %49, %46 ], [ %52, %50 ]
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %9, align 1
  %56 = load i8, i8* %8, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8, i8* %9, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load i8, i8* %8, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %7, align 8
  br label %10

67:                                               ; preds = %61
  store i8 0, i8* %4, align 1
  br label %76

68:                                               ; preds = %53
  %69 = load i8, i8* %8, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* %9, align 1
  %72 = sext i8 %71 to i32
  %73 = sub nsw i32 %70, %72
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %4, align 1
  br label %76

75:                                               ; preds = %10
  store i8 0, i8* %4, align 1
  br label %76

76:                                               ; preds = %75, %68, %67
  %77 = load i8, i8* %4, align 1
  ret i8 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
