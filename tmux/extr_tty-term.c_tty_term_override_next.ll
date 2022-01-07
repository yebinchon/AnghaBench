; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty-term.c_tty_term_override_next.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty-term.c_tty_term_override_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tty_term_override_next.value = internal global [8192 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*)* @tty_term_override_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tty_term_override_next(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i64, i64* %7, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %80

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %62, %17
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %18
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 58
  br i1 %31, label %32, label %48

32:                                               ; preds = %25
  %33 = load i8*, i8** %4, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 58
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %6, align 8
  %43 = getelementptr inbounds [8192 x i8], [8192 x i8]* @tty_term_override_next.value, i64 0, i64 %41
  store i8 58, i8* %43, align 1
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 2
  store i64 %45, i64* %7, align 8
  br label %47

46:                                               ; preds = %32
  br label %63

47:                                               ; preds = %40
  br label %58

48:                                               ; preds = %25
  %49 = load i8*, i8** %4, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %6, align 8
  %55 = getelementptr inbounds [8192 x i8], [8192 x i8]* @tty_term_override_next.value, i64 0, i64 %53
  store i8 %52, i8* %55, align 1
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %48, %47
  %59 = load i64, i64* %6, align 8
  %60 = icmp eq i64 %59, 8191
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i8* null, i8** %3, align 8
  br label %80

62:                                               ; preds = %58
  br label %18

63:                                               ; preds = %46, %18
  %64 = load i8*, i8** %4, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, 1
  %73 = load i64*, i64** %5, align 8
  store i64 %72, i64* %73, align 8
  br label %77

74:                                               ; preds = %63
  %75 = load i64, i64* %7, align 8
  %76 = load i64*, i64** %5, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds [8192 x i8], [8192 x i8]* @tty_term_override_next.value, i64 0, i64 %78
  store i8 0, i8* %79, align 1
  store i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @tty_term_override_next.value, i64 0, i64 0), i8** %3, align 8
  br label %80

80:                                               ; preds = %77, %61, %16
  %81 = load i8*, i8** %3, align 8
  ret i8* %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
