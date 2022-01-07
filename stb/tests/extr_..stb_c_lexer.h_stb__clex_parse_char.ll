; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_..stb_c_lexer.h_stb__clex_parse_char.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_..stb_c_lexer.h_stb__clex_parse_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @stb__clex_parse_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb__clex_parse_char(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 92
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 2
  %13 = load i8**, i8*** %5, align 8
  store i8* %12, i8** %13, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %28 [
    i32 92, label %18
    i32 39, label %19
    i32 34, label %20
    i32 116, label %21
    i32 102, label %22
    i32 110, label %23
    i32 114, label %24
    i32 48, label %25
    i32 120, label %26
    i32 88, label %26
    i32 117, label %27
  ]

18:                                               ; preds = %10
  store i32 92, i32* %3, align 4
  br label %36

19:                                               ; preds = %10
  store i32 39, i32* %3, align 4
  br label %36

20:                                               ; preds = %10
  store i32 34, i32* %3, align 4
  br label %36

21:                                               ; preds = %10
  store i32 9, i32* %3, align 4
  br label %36

22:                                               ; preds = %10
  store i32 12, i32* %3, align 4
  br label %36

23:                                               ; preds = %10
  store i32 10, i32* %3, align 4
  br label %36

24:                                               ; preds = %10
  store i32 13, i32* %3, align 4
  br label %36

25:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %36

26:                                               ; preds = %10, %10
  store i32 -1, i32* %3, align 4
  br label %36

27:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %36

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8**, i8*** %5, align 8
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
