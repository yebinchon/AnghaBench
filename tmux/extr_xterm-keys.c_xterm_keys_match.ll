; ModuleID = '/home/carl/AnghaBench/tmux/extr_xterm-keys.c_xterm_keys_match.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_xterm-keys.c_xterm_keys_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i64*, i64*)* @xterm_keys_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xterm_keys_match(i8* %0, i8* %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i64*, i64** %11, align 8
  store i64 0, i64* %14, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %69

18:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %19

19:                                               ; preds = %58, %18
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 95
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64*, i64** %11, align 8
  %28 = call i32 @xterm_keys_modifiers(i8* %25, i64 %26, i64* %12, i64* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %6, align 4
  br label %69

33:                                               ; preds = %24
  br label %48

34:                                               ; preds = %19
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 -1, i32* %6, align 4
  br label %69

45:                                               ; preds = %34
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %12, align 8
  br label %48

48:                                               ; preds = %45, %33
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %55, %56
  br label %58

58:                                               ; preds = %54, %48
  %59 = phi i1 [ false, %48 ], [ %57, %54 ]
  br i1 %59, label %19, label %60

60:                                               ; preds = %58
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %6, align 4
  br label %69

66:                                               ; preds = %60
  %67 = load i64, i64* %12, align 8
  %68 = load i64*, i64** %10, align 8
  store i64 %67, i64* %68, align 8
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %65, %44, %31, %17
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @xterm_keys_modifiers(i8*, i64, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
