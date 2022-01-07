; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrepr.c_reprobject.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrepr.c_reprobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**)* @reprobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reprobject(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @js_gettop(i32* %8)
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @js_isobject(i32* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @js_toobject(i32* %21, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @js_toobject(i32* %24, i32 -1)
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32*, i32** %3, align 8
  %29 = load i32**, i32*** %4, align 8
  %30 = call i32 @js_puts(i32* %28, i32** %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %76

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %11

36:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = load i32**, i32*** %4, align 8
  %39 = call i32 @js_putc(i32* %37, i32** %38, i8 signext 123)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @js_pushiterator(i32* %40, i32 -1, i32 1)
  br label %42

42:                                               ; preds = %54, %36
  %43 = load i32*, i32** %3, align 8
  %44 = call i8* @js_nextiterator(i32* %43, i32 -1)
  store i8* %44, i8** %5, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %70

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = icmp sgt i32 %47, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32*, i32** %3, align 8
  %52 = load i32**, i32*** %4, align 8
  %53 = call i32 @js_puts(i32* %51, i32** %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32*, i32** %3, align 8
  %56 = load i32**, i32*** %4, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @reprident(i32* %55, i32** %56, i8* %57)
  %59 = load i32*, i32** %3, align 8
  %60 = load i32**, i32*** %4, align 8
  %61 = call i32 @js_puts(i32* %59, i32** %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32*, i32** %3, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @js_getproperty(i32* %62, i32 -2, i8* %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load i32**, i32*** %4, align 8
  %67 = call i32 @reprvalue(i32* %65, i32** %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @js_pop(i32* %68, i32 1)
  br label %42

70:                                               ; preds = %42
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @js_pop(i32* %71, i32 1)
  %73 = load i32*, i32** %3, align 8
  %74 = load i32**, i32*** %4, align 8
  %75 = call i32 @js_putc(i32* %73, i32** %74, i8 signext 125)
  br label %76

76:                                               ; preds = %70, %27
  ret void
}

declare dso_local i32 @js_gettop(i32*) #1

declare dso_local i64 @js_isobject(i32*, i32) #1

declare dso_local i64 @js_toobject(i32*, i32) #1

declare dso_local i32 @js_puts(i32*, i32**, i8*) #1

declare dso_local i32 @js_putc(i32*, i32**, i8 signext) #1

declare dso_local i32 @js_pushiterator(i32*, i32, i32) #1

declare dso_local i8* @js_nextiterator(i32*, i32) #1

declare dso_local i32 @reprident(i32*, i32**, i8*) #1

declare dso_local i32 @js_getproperty(i32*, i32, i8*) #1

declare dso_local i32 @reprvalue(i32*, i32**) #1

declare dso_local i32 @js_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
