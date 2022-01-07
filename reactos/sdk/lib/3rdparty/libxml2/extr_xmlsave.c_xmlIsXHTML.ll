; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlsave.c_xmlIsXHTML.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlsave.c_xmlIsXHTML.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XHTML_STRICT_PUBLIC_ID = common dso_local global i32 0, align 4
@XHTML_FRAME_PUBLIC_ID = common dso_local global i32 0, align 4
@XHTML_TRANS_PUBLIC_ID = common dso_local global i32 0, align 4
@XHTML_STRICT_SYSTEM_ID = common dso_local global i32 0, align 4
@XHTML_FRAME_SYSTEM_ID = common dso_local global i32 0, align 4
@XHTML_TRANS_SYSTEM_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlIsXHTML(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 -1, i32* %3, align 4
  br label %57

12:                                               ; preds = %8, %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @XHTML_STRICT_PUBLIC_ID, align 4
  %18 = call i64 @xmlStrEqual(i32* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %57

21:                                               ; preds = %15
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @XHTML_FRAME_PUBLIC_ID, align 4
  %24 = call i64 @xmlStrEqual(i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %57

27:                                               ; preds = %21
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @XHTML_TRANS_PUBLIC_ID, align 4
  %30 = call i64 @xmlStrEqual(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %57

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %12
  %35 = load i32*, i32** %4, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @XHTML_STRICT_SYSTEM_ID, align 4
  %40 = call i64 @xmlStrEqual(i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %57

43:                                               ; preds = %37
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @XHTML_FRAME_SYSTEM_ID, align 4
  %46 = call i64 @xmlStrEqual(i32* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %57

49:                                               ; preds = %43
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @XHTML_TRANS_SYSTEM_ID, align 4
  %52 = call i64 @xmlStrEqual(i32* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %57

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %34
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %54, %48, %42, %32, %26, %20, %11
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @xmlStrEqual(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
