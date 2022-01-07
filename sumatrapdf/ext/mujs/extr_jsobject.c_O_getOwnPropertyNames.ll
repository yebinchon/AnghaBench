; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_O_getOwnPropertyNames.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_O_getOwnPropertyNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"not an object\00", align 1
@JS_CARRAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@JS_CSTRING = common dso_local global i64 0, align 8
@JS_CREGEXP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ignoreCase\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"multiline\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"lastIndex\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @O_getOwnPropertyNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @O_getOwnPropertyNames(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @js_isobject(i32* %6, i32 1)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @js_typeerror(i32* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32*, i32** %2, align 8
  %14 = call %struct.TYPE_8__* @js_toobject(i32* %13, i32 1)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %3, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @js_newarray(i32* %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %12
  %24 = load i32*, i32** %2, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = call i32 @O_getOwnPropertyNames_walk(i32* %24, %struct.TYPE_9__* %27, i32 0)
  store i32 %28, i32* %5, align 4
  br label %30

29:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @JS_CARRAY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @js_pushliteral(i32* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  %42 = call i32 @js_setindex(i32* %39, i32 -2, i32 %40)
  br label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @JS_CSTRING, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %43
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @js_pushliteral(i32* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  %55 = call i32 @js_setindex(i32* %52, i32 -2, i32 %53)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %72, %49
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %57, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %56
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @js_pushnumber(i32* %65, i32 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  %71 = call i32 @js_setindex(i32* %68, i32 -2, i32 %69)
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %56

75:                                               ; preds = %56
  br label %76

76:                                               ; preds = %75, %43
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @JS_CREGEXP, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %113

82:                                               ; preds = %76
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @js_pushliteral(i32* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  %88 = call i32 @js_setindex(i32* %85, i32 -2, i32 %86)
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @js_pushliteral(i32* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32*, i32** %2, align 8
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  %94 = call i32 @js_setindex(i32* %91, i32 -2, i32 %92)
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 @js_pushliteral(i32* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i32*, i32** %2, align 8
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  %100 = call i32 @js_setindex(i32* %97, i32 -2, i32 %98)
  %101 = load i32*, i32** %2, align 8
  %102 = call i32 @js_pushliteral(i32* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i32*, i32** %2, align 8
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  %106 = call i32 @js_setindex(i32* %103, i32 -2, i32 %104)
  %107 = load i32*, i32** %2, align 8
  %108 = call i32 @js_pushliteral(i32* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i32*, i32** %2, align 8
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  %112 = call i32 @js_setindex(i32* %109, i32 -2, i32 %110)
  br label %113

113:                                              ; preds = %82, %76
  ret void
}

declare dso_local i32 @js_isobject(i32*, i32) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @js_toobject(i32*, i32) #1

declare dso_local i32 @js_newarray(i32*) #1

declare dso_local i32 @O_getOwnPropertyNames_walk(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @js_pushliteral(i32*, i8*) #1

declare dso_local i32 @js_setindex(i32*, i32, i32) #1

declare dso_local i32 @js_pushnumber(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
