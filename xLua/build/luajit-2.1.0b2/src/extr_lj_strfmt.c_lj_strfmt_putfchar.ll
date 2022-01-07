; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_strfmt.c_lj_strfmt_putfchar.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_strfmt.c_lj_strfmt_putfchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRFMT_F_LEFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_strfmt_putfchar(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @STRFMT_WIDTH(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 1, %16 ]
  %19 = call i8* @lj_buf_more(i32* %11, i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @STRFMT_F_LEFT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i8
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %8, align 8
  store i8 %26, i8* %27, align 1
  br label %29

29:                                               ; preds = %24, %17
  br label %30

30:                                               ; preds = %34, %29
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %7, align 4
  %33 = icmp sgt i32 %31, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  store i8 32, i8* %35, align 1
  br label %30

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @STRFMT_F_LEFT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %6, align 8
  %44 = trunc i64 %43 to i8
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  store i8 %44, i8* %45, align 1
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32*, i32** %4, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @setsbufP(i32* %48, i8* %49)
  %51 = load i32*, i32** %4, align 8
  ret i32* %51
}

declare dso_local i32 @STRFMT_WIDTH(i32) #1

declare dso_local i8* @lj_buf_more(i32*, i32) #1

declare dso_local i32 @setsbufP(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
