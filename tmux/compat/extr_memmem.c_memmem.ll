; ModuleID = '/home/carl/AnghaBench/tmux/compat/extr_memmem.c_memmem.c'
source_filename = "/home/carl/AnghaBench/tmux/compat/extr_memmem.c_memmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memmem(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %12, align 8
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %13, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i8*, i8** %12, align 8
  store i8* %19, i8** %5, align 8
  br label %69

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i8* null, i8** %5, align 8
  br label %69

25:                                               ; preds = %20
  %26 = load i64, i64* %9, align 8
  %27 = icmp eq i64 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load i8, i8* %30, align 1
  %32 = load i64, i64* %7, align 8
  %33 = call i8* @memchr(i8* %29, i8 signext %31, i64 %32)
  store i8* %33, i8** %5, align 8
  br label %69

34:                                               ; preds = %25
  %35 = load i8*, i8** %12, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %12, align 8
  store i8* %41, i8** %10, align 8
  br label %42

42:                                               ; preds = %65, %34
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ule i8* %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %42
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8*, i8** %13, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %50, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %46
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i64 @memcmp(i8* %57, i8* %58, i64 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i8*, i8** %10, align 8
  store i8* %63, i8** %5, align 8
  br label %69

64:                                               ; preds = %56, %46
  br label %65

65:                                               ; preds = %64
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %10, align 8
  br label %42

68:                                               ; preds = %42
  store i8* null, i8** %5, align 8
  br label %69

69:                                               ; preds = %68, %62, %28, %24, %18
  %70 = load i8*, i8** %5, align 8
  ret i8* %70
}

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
