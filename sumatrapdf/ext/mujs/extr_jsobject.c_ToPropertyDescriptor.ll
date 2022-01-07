; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_ToPropertyDescriptor.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_ToPropertyDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"enumerable\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"configurable\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@JS_READONLY = common dso_local global i32 0, align 4
@JS_DONTENUM = common dso_local global i32 0, align 4
@JS_DONTCONF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"value/writable and get/set attributes are exclusive\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i32*)* @ToPropertyDescriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ToPropertyDescriptor(i32* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @js_pushobject(i32* %15, i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @js_pushobject(i32* %18, i32* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @js_hasproperty(i32* %21, i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @js_toboolean(i32* %25, i32 -1)
  store i32 %26, i32* %13, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @js_pop(i32* %27, i32 1)
  br label %29

29:                                               ; preds = %24, %4
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @js_hasproperty(i32* %30, i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @js_toboolean(i32* %34, i32 -1)
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @js_pop(i32* %36, i32 1)
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @js_hasproperty(i32* %39, i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @js_toboolean(i32* %43, i32 -1)
  store i32 %44, i32* %12, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @js_pop(i32* %45, i32 1)
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 @js_hasproperty(i32* %48, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  store i32 1, i32* %10, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @js_setproperty(i32* %52, i32 -3, i8* %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @JS_READONLY, align 4
  %60 = load i32, i32* %14, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @JS_DONTENUM, align 4
  %67 = load i32, i32* %14, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @JS_DONTCONF, align 4
  %74 = load i32, i32* %14, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %72, %69
  %77 = load i32*, i32** %5, align 8
  %78 = call i64 @js_hasproperty(i32* %77, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83, %80
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @js_typeerror(i32* %87, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %83
  br label %93

90:                                               ; preds = %76
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @js_pushundefined(i32* %91)
  br label %93

93:                                               ; preds = %90, %89
  %94 = load i32*, i32** %5, align 8
  %95 = call i64 @js_hasproperty(i32* %94, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100, %97
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @js_typeerror(i32* %104, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %100
  br label %110

107:                                              ; preds = %93
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @js_pushundefined(i32* %108)
  br label %110

110:                                              ; preds = %107, %106
  %111 = load i32*, i32** %5, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @js_defaccessor(i32* %111, i32 -4, i8* %112, i32 %113)
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @js_pop(i32* %115, i32 2)
  ret void
}

declare dso_local i32 @js_pushobject(i32*, i32*) #1

declare dso_local i64 @js_hasproperty(i32*, i32, i8*) #1

declare dso_local i32 @js_toboolean(i32*, i32) #1

declare dso_local i32 @js_pop(i32*, i32) #1

declare dso_local i32 @js_setproperty(i32*, i32, i8*) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local i32 @js_pushundefined(i32*) #1

declare dso_local i32 @js_defaccessor(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
