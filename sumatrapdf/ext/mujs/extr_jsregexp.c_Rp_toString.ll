; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsregexp.c_Rp_toString.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsregexp.c_Rp_toString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@JS_REGEXP_G = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@JS_REGEXP_I = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@JS_REGEXP_M = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Rp_toString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Rp_toString(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.TYPE_3__* @js_toregexp(i32* %5, i32 0)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = add nsw i64 %11, 6
  %13 = call i8* @js_malloc(i32* %7, i64 %12)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strcpy(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strcat(i8* %16, i8* %19)
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @JS_REGEXP_G, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strcat(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @JS_REGEXP_I, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @strcat(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @JS_REGEXP_M, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @strcat(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %42
  %53 = load i32*, i32** %2, align 8
  %54 = call i64 @js_try(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32*, i32** %2, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @js_free(i32* %57, i8* %58)
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @js_throw(i32* %60)
  br label %62

62:                                               ; preds = %56, %52
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @js_pop(i32* %63, i32 0)
  %65 = load i32*, i32** %2, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @js_pushstring(i32* %65, i8* %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @js_endtry(i32* %68)
  %70 = load i32*, i32** %2, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @js_free(i32* %70, i8* %71)
  ret void
}

declare dso_local %struct.TYPE_3__* @js_toregexp(i32*, i32) #1

declare dso_local i8* @js_malloc(i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @js_try(i32*) #1

declare dso_local i32 @js_free(i32*, i8*) #1

declare dso_local i32 @js_throw(i32*) #1

declare dso_local i32 @js_pop(i32*, i32) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

declare dso_local i32 @js_endtry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
