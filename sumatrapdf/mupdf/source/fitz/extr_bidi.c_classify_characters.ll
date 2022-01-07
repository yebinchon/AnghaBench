; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bidi.c_classify_characters.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bidi.c_classify_characters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_BIDI_CLASSIFY_WHITE_SPACE = common dso_local global i32 0, align 4
@char_from_types = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i64, i32)* @classify_characters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @classify_characters(i32* %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @FZ_BIDI_CLASSIFY_WHITE_SPACE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %28, %14
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @class_from_ch_ws(i32 %23)
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64 %24, i64* %27, align 8
  br label %28

28:                                               ; preds = %19
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %9, align 8
  br label %15

31:                                               ; preds = %15
  br label %50

32:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @class_from_ch_n(i32 %41)
  %43 = load i64*, i64** %6, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 %42, i64* %45, align 8
  br label %46

46:                                               ; preds = %37
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  br label %33

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %31
  ret void
}

declare dso_local i64 @class_from_ch_ws(i32) #1

declare dso_local i64 @class_from_ch_n(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
