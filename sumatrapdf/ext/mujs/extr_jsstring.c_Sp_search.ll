; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_search.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Sp_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Sp_search(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @checkstring(i32* %6, i32 0)
  store i8* %7, i8** %4, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @js_isregexp(i32* %8, i32 1)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @js_copy(i32* %12, i32 1)
  br label %27

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @js_isundefined(i32* %15, i32 1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @js_newregexp(i32* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %26

21:                                               ; preds = %14
  %22 = load i32*, i32** %2, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i8* @js_tostring(i32* %23, i32 1)
  %25 = call i32 @js_newregexp(i32* %22, i8* %24, i32 0)
  br label %26

26:                                               ; preds = %21, %18
  br label %27

27:                                               ; preds = %26, %11
  %28 = load i32*, i32** %2, align 8
  %29 = call %struct.TYPE_7__* @js_toregexp(i32* %28, i32 -1)
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %3, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @js_doregexec(i32* %30, i32 %33, i8* %34, %struct.TYPE_8__* %5, i32 0)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %27
  %38 = load i32*, i32** %2, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @js_utfptrtoidx(i8* %39, i32 %44)
  %46 = call i32 @js_pushnumber(i32* %38, i32 %45)
  br label %50

47:                                               ; preds = %27
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @js_pushnumber(i32* %48, i32 -1)
  br label %50

50:                                               ; preds = %47, %37
  ret void
}

declare dso_local i8* @checkstring(i32*, i32) #1

declare dso_local i64 @js_isregexp(i32*, i32) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i64 @js_isundefined(i32*, i32) #1

declare dso_local i32 @js_newregexp(i32*, i8*, i32) #1

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @js_toregexp(i32*, i32) #1

declare dso_local i32 @js_doregexec(i32*, i32, i8*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @js_pushnumber(i32*, i32) #1

declare dso_local i32 @js_utfptrtoidx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
