; ModuleID = '/home/carl/AnghaBench/tmux/extr_key-string.c_key_string_get_modifiers.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_key-string.c_key_string_get_modifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEYC_CTRL = common dso_local global i64 0, align 8
@KEYC_ESCAPE = common dso_local global i64 0, align 8
@KEYC_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**)* @key_string_get_modifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @key_string_get_modifiers(i8** %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %41, %1
  %6 = load i8**, i8*** %3, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = load i8**, i8*** %3, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 45
  br label %19

19:                                               ; preds = %12, %5
  %20 = phi i1 [ false, %5 ], [ %18, %12 ]
  br i1 %20, label %21, label %45

21:                                               ; preds = %19
  %22 = load i8**, i8*** %3, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %39 [
    i32 67, label %27
    i32 99, label %27
    i32 77, label %31
    i32 109, label %31
    i32 83, label %35
    i32 115, label %35
  ]

27:                                               ; preds = %21, %21
  %28 = load i64, i64* @KEYC_CTRL, align 8
  %29 = load i64, i64* %4, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %4, align 8
  br label %41

31:                                               ; preds = %21, %21
  %32 = load i64, i64* @KEYC_ESCAPE, align 8
  %33 = load i64, i64* %4, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %4, align 8
  br label %41

35:                                               ; preds = %21, %21
  %36 = load i64, i64* @KEYC_SHIFT, align 8
  %37 = load i64, i64* %4, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %4, align 8
  br label %41

39:                                               ; preds = %21
  %40 = load i8**, i8*** %3, align 8
  store i8* null, i8** %40, align 8
  store i64 0, i64* %2, align 8
  br label %47

41:                                               ; preds = %35, %31, %27
  %42 = load i8**, i8*** %3, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  store i8* %44, i8** %42, align 8
  br label %5

45:                                               ; preds = %19
  %46 = load i64, i64* %4, align 8
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %45, %39
  %48 = load i64, i64* %2, align 8
  ret i64 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
