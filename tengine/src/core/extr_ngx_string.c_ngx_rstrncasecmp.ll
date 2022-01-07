; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_rstrncasecmp.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_rstrncasecmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @ngx_rstrncasecmp(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i8 0, i8* %4, align 1
  br label %70

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %67, %13
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %8, align 1
  %21 = load i8, i8* %8, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sge i32 %22, 97
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load i8, i8* %8, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sle i32 %26, 122
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i8, i8* %8, align 1
  %30 = sext i8 %29 to i32
  %31 = sub nsw i32 %30, 32
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %8, align 1
  br label %33

33:                                               ; preds = %28, %24, %16
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %9, align 1
  %38 = load i8, i8* %9, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sge i32 %39, 97
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load i8, i8* %9, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sle i32 %43, 122
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i8, i8* %9, align 1
  %47 = sext i8 %46 to i32
  %48 = sub nsw i32 %47, 32
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %9, align 1
  br label %50

50:                                               ; preds = %45, %41, %33
  %51 = load i8, i8* %8, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* %9, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i8, i8* %8, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8, i8* %9, align 1
  %60 = sext i8 %59 to i32
  %61 = sub nsw i32 %58, %60
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %4, align 1
  br label %70

63:                                               ; preds = %50
  %64 = load i64, i64* %7, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i8 0, i8* %4, align 1
  br label %70

67:                                               ; preds = %63
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, -1
  store i64 %69, i64* %7, align 8
  br label %16

70:                                               ; preds = %66, %56, %12
  %71 = load i8, i8* %4, align 1
  ret i8 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
