; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyle.c_get_nsstyle_pixel_val.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyle.c_get_nsstyle_pixel_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@E_POINTER = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@pxW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: only px values are currently supported\0A\00", align 1
@E_NOTIMPL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32, i32*)* @get_nsstyle_pixel_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_nsstyle_pixel_val(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @E_POINTER, align 8
  store i64 %15, i64* %4, align 8
  br label %70

16:                                               ; preds = %3
  %17 = call i32 @nsAString_Init(i32* %8, i32* null)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @get_nsstyle_attr_nsval(i32 %20, i32 %21, i32* %8)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %16
  %27 = call i32 @nsAString_GetData(i32* %8, i32** %11)
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %64

30:                                               ; preds = %26
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @strtolW(i32* %31, i8** %10, i32 10)
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 46
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %45, %38
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %10, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @isdigitW(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %39

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* @pxW, align 4
  %55 = call i64 @strcmpW(i8* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = call i32 @nsAString_Finish(i32* %8)
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @debugstr_w(i32* %59)
  %61 = call i32 @FIXME(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i64, i64* @E_NOTIMPL, align 8
  store i64 %62, i64* %9, align 8
  br label %63

63:                                               ; preds = %57, %52, %47
  br label %66

64:                                               ; preds = %26
  %65 = load i32*, i32** %7, align 8
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %64, %63
  br label %67

67:                                               ; preds = %66, %16
  %68 = call i32 @nsAString_Finish(i32* %8)
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %67, %14
  %71 = load i64, i64* %4, align 8
  ret i64 %71
}

declare dso_local i32 @nsAString_Init(i32*, i32*) #1

declare dso_local i64 @get_nsstyle_attr_nsval(i32, i32, i32*) #1

declare dso_local i32 @nsAString_GetData(i32*, i32**) #1

declare dso_local i32 @strtolW(i32*, i8**, i32) #1

declare dso_local i64 @isdigitW(i8 signext) #1

declare dso_local i64 @strcmpW(i8*, i32) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
