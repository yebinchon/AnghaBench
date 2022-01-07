; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyle.c_set_nsstyle_attr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyle.c_set_nsstyle_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@ATTR_FIX_PX = common dso_local global i32 0, align 4
@ATTR_FIX_URL = common dso_local global i32 0, align 4
@style_tbl = common dso_local global %struct.TYPE_2__* null, align 8
@emptyW = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"SetProperty failed: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_nsstyle_attr(i32* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %12, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @ATTR_FIX_PX, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32*, i32** %7, align 8
  %23 = call i32* @fix_px_value(i32* %22)
  store i32* %23, i32** %12, align 8
  br label %33

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ATTR_FIX_URL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = call i32* @fix_url_value(i32* %30)
  store i32* %31, i32** %12, align 8
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %32, %21
  br label %34

34:                                               ; preds = %33, %4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @style_tbl, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @nsAString_InitDepend(i32* %9, i32* %39)
  %41 = load i32*, i32** %12, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32*, i32** %12, align 8
  br label %47

45:                                               ; preds = %34
  %46 = load i32*, i32** %7, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32* [ %44, %43 ], [ %46, %45 ]
  %49 = call i32 @nsAString_InitDepend(i32* %10, i32* %48)
  %50 = load i32*, i32** @emptyW, align 8
  %51 = call i32 @nsAString_InitDepend(i32* %11, i32* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @nsIDOMCSSStyleDeclaration_SetProperty(i32* %52, i32* %9, i32* %10, i32* %11)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i64 @NS_FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %47
  %61 = call i32 @nsAString_Finish(i32* %9)
  %62 = call i32 @nsAString_Finish(i32* %10)
  %63 = call i32 @nsAString_Finish(i32* %11)
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @heap_free(i32* %64)
  %66 = load i32, i32* @S_OK, align 4
  ret i32 %66
}

declare dso_local i32* @fix_px_value(i32*) #1

declare dso_local i32* @fix_url_value(i32*) #1

declare dso_local i32 @nsAString_InitDepend(i32*, i32*) #1

declare dso_local i32 @nsIDOMCSSStyleDeclaration_SetProperty(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
