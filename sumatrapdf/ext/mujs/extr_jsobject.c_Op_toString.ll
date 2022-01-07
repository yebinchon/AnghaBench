; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_Op_toString.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_Op_toString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [19 x i8] c"[object Undefined]\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"[object Null]\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"[object Object]\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"[object Array]\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"[object Function]\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"[object Error]\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"[object Boolean]\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"[object Number]\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"[object String]\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"[object RegExp]\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"[object Date]\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"[object Math]\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"[object JSON]\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"[object Arguments]\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"[Iterator]\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"[object \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Op_toString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Op_toString(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i64 @js_isundefined(i32* %4, i32 0)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @js_pushliteral(i32* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %86

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @js_isnull(i32* %11, i32 0)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @js_pushliteral(i32* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %85

17:                                               ; preds = %10
  %18 = load i32*, i32** %2, align 8
  %19 = call %struct.TYPE_7__* @js_toobject(i32* %18, i32 0)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %3, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %84 [
    i32 132, label %23
    i32 142, label %26
    i32 137, label %29
    i32 130, label %32
    i32 140, label %35
    i32 138, label %38
    i32 141, label %41
    i32 133, label %44
    i32 129, label %47
    i32 131, label %50
    i32 139, label %53
    i32 134, label %56
    i32 135, label %59
    i32 143, label %62
    i32 136, label %65
    i32 128, label %68
  ]

23:                                               ; preds = %17
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @js_pushliteral(i32* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %84

26:                                               ; preds = %17
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @js_pushliteral(i32* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %84

29:                                               ; preds = %17
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @js_pushliteral(i32* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %84

32:                                               ; preds = %17
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @js_pushliteral(i32* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %84

35:                                               ; preds = %17
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @js_pushliteral(i32* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %84

38:                                               ; preds = %17
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @js_pushliteral(i32* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %84

41:                                               ; preds = %17
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @js_pushliteral(i32* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %84

44:                                               ; preds = %17
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @js_pushliteral(i32* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %84

47:                                               ; preds = %17
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @js_pushliteral(i32* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %84

50:                                               ; preds = %17
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @js_pushliteral(i32* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %84

53:                                               ; preds = %17
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @js_pushliteral(i32* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %84

56:                                               ; preds = %17
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @js_pushliteral(i32* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  br label %84

59:                                               ; preds = %17
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @js_pushliteral(i32* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  br label %84

62:                                               ; preds = %17
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @js_pushliteral(i32* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  br label %84

65:                                               ; preds = %17
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @js_pushliteral(i32* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  br label %84

68:                                               ; preds = %17
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @js_pushliteral(i32* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %71 = load i32*, i32** %2, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @js_pushliteral(i32* %71, i8* %76)
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @js_concat(i32* %78)
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @js_pushliteral(i32* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @js_concat(i32* %82)
  br label %84

84:                                               ; preds = %17, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23
  br label %85

85:                                               ; preds = %84, %14
  br label %86

86:                                               ; preds = %85, %7
  ret void
}

declare dso_local i64 @js_isundefined(i32*, i32) #1

declare dso_local i32 @js_pushliteral(i32*, i8*) #1

declare dso_local i64 @js_isnull(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @js_toobject(i32*, i32) #1

declare dso_local i32 @js_concat(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
