; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_S_fromCharCode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_S_fromCharCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTFmax = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @S_fromCharCode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @S_fromCharCode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @js_gettop(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load i32, i32* @UTFmax, align 4
  %14 = mul nsw i32 %12, %13
  %15 = add nsw i32 %14, 1
  %16 = call i8* @js_malloc(i32* %10, i32 %15)
  store i8* %16, i8** %7, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i64 @js_try(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32*, i32** %2, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @js_free(i32* %21, i8* %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @js_throw(i32* %24)
  br label %26

26:                                               ; preds = %20, %1
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @js_touint16(i32* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @runetochar(i8* %35, i32* %5)
  %37 = load i8*, i8** %7, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %7, align 8
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %27

43:                                               ; preds = %27
  %44 = load i8*, i8** %7, align 8
  store i8 0, i8* %44, align 1
  %45 = load i32*, i32** %2, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @js_pushstring(i32* %45, i8* %46)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @js_endtry(i32* %48)
  %50 = load i32*, i32** %2, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @js_free(i32* %50, i8* %51)
  ret void
}

declare dso_local i32 @js_gettop(i32*) #1

declare dso_local i8* @js_malloc(i32*, i32) #1

declare dso_local i64 @js_try(i32*) #1

declare dso_local i32 @js_free(i32*, i8*) #1

declare dso_local i32 @js_throw(i32*) #1

declare dso_local i32 @js_touint16(i32*, i32) #1

declare dso_local i32 @runetochar(i8*, i32*) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

declare dso_local i32 @js_endtry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
