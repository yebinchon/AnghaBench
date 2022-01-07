; ModuleID = '/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_padcstr.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_padcstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @utf8_padcstr(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @utf8_cstrwidth(i8* %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @xstrdup(i8* %16)
  store i8* %17, i8** %3, align 8
  br label %50

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, 1
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %8, align 8
  %25 = sub nsw i64 %23, %24
  %26 = add i64 %22, %25
  %27 = call i8* @xmalloc(i64 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @memcpy(i8* %28, i8* %29, i64 %30)
  %32 = load i64, i64* %8, align 8
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %42, %18
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %6, align 8
  %41 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8 32, i8* %41, align 1
  br label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %9, align 8
  br label %33

45:                                               ; preds = %33
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %7, align 8
  store i8* %49, i8** %3, align 8
  br label %50

50:                                               ; preds = %45, %15
  %51 = load i8*, i8** %3, align 8
  ret i8* %51
}

declare dso_local i64 @utf8_cstrwidth(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
