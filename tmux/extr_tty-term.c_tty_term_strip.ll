; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty-term.c_tty_term_strip.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty-term.c_tty_term_strip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tty_term_strip.buf = internal global [8192 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @tty_term_strip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tty_term_strip(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32* @strchr(i8* %6, i8 signext 36)
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i8* @xstrdup(i8* %10)
  store i8* %11, i8** %2, align 8
  br label %72

12:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %4, align 8
  br label %14

14:                                               ; preds = %65, %12
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %68

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 36
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 60
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 62
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ false, %31 ], [ %40, %36 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %4, align 8
  br label %31

46:                                               ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 62
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %4, align 8
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %24, %19
  %56 = load i8*, i8** %4, align 8
  %57 = load i8, i8* %56, align 1
  %58 = load i64, i64* %5, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %5, align 8
  %60 = getelementptr inbounds [8192 x i8], [8192 x i8]* @tty_term_strip.buf, i64 0, i64 %58
  store i8 %57, i8* %60, align 1
  %61 = load i64, i64* %5, align 8
  %62 = icmp eq i64 %61, 8191
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %68

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %4, align 8
  br label %14

68:                                               ; preds = %63, %14
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds [8192 x i8], [8192 x i8]* @tty_term_strip.buf, i64 0, i64 %69
  store i8 0, i8* %70, align 1
  %71 = call i8* @xstrdup(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @tty_term_strip.buf, i64 0, i64 0))
  store i8* %71, i8** %2, align 8
  br label %72

72:                                               ; preds = %68, %9
  %73 = load i8*, i8** %2, align 8
  ret i8* %73
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
