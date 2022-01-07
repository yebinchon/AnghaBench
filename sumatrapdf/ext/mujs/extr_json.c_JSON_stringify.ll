; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_json.c_JSON_stringify.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_json.c_JSON_stringify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @JSON_stringify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @JSON_stringify(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca [12 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  store i8* null, i8** %6, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @js_isnumber(i32* %8, i32 3)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @js_tointeger(i32* %12, i32 3)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %11
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 10
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 10, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @memset(i8* %22, i8 signext 32, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 %26
  store i8 0, i8* %27, align 1
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  store i8* %31, i8** %6, align 8
  br label %32

32:                                               ; preds = %30, %21
  br label %59

33:                                               ; preds = %1
  %34 = load i32*, i32** %2, align 8
  %35 = call i64 @js_isstring(i32* %34, i32 3)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load i32*, i32** %2, align 8
  %39 = call i8* @js_tostring(i32* %38, i32 3)
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strlen(i8* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 10
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 10, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %37
  %46 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @memcpy(i8* %46, i8* %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  store i8* %56, i8** %6, align 8
  br label %57

57:                                               ; preds = %55, %45
  br label %58

58:                                               ; preds = %57, %33
  br label %59

59:                                               ; preds = %58, %32
  %60 = load i32*, i32** %2, align 8
  %61 = call i64 @js_try(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32*, i32** %2, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = call i32 @js_free(i32* %64, %struct.TYPE_5__* %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @js_throw(i32* %67)
  br label %69

69:                                               ; preds = %63, %59
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @js_newobject(i32* %70)
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @js_copy(i32* %72, i32 1)
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @js_defproperty(i32* %74, i32 -2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %76 = load i32*, i32** %2, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @fmtvalue(i32* %76, %struct.TYPE_5__** %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %77, i32 0)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %69
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @js_pushundefined(i32* %81)
  br label %99

83:                                               ; preds = %69
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @js_putc(i32* %84, %struct.TYPE_5__** %3, i32 0)
  %86 = load i32*, i32** %2, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %88 = icmp ne %struct.TYPE_5__* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  br label %94

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %89
  %95 = phi i8* [ %92, %89 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %93 ]
  %96 = call i32 @js_pushstring(i32* %86, i8* %95)
  %97 = load i32*, i32** %2, align 8
  %98 = call i32 @js_rot2pop1(i32* %97)
  br label %99

99:                                               ; preds = %94, %80
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @js_endtry(i32* %100)
  %102 = load i32*, i32** %2, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %104 = call i32 @js_free(i32* %102, %struct.TYPE_5__* %103)
  ret void
}

declare dso_local i64 @js_isnumber(i32*, i32) #1

declare dso_local i32 @js_tointeger(i32*, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i64 @js_isstring(i32*, i32) #1

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @js_try(i32*) #1

declare dso_local i32 @js_free(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @js_throw(i32*) #1

declare dso_local i32 @js_newobject(i32*) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i32 @js_defproperty(i32*, i32, i8*, i32) #1

declare dso_local i32 @fmtvalue(i32*, %struct.TYPE_5__**, i8*, i8*, i32) #1

declare dso_local i32 @js_pushundefined(i32*) #1

declare dso_local i32 @js_putc(i32*, %struct.TYPE_5__**, i32) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

declare dso_local i32 @js_rot2pop1(i32*) #1

declare dso_local i32 @js_endtry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
