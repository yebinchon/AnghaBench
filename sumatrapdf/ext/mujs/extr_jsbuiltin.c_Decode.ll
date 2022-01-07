; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsbuiltin.c_Decode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsbuiltin.c_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [26 x i8] c"truncated escape sequence\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid escape sequence\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @Decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Decode(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @js_try(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = call i32 @js_free(i32* %15, %struct.TYPE_4__* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @js_throw(i32* %18)
  br label %20

20:                                               ; preds = %14, %3
  br label %21

21:                                               ; preds = %93, %20
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %94

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  %28 = load i8, i8* %26, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 37
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @js_putc(i32* %33, %struct.TYPE_4__** %7, i32 %34)
  br label %93

36:                                               ; preds = %25
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41, %36
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @js_urierror(i32* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  store i32 %53, i32* %8, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %5, align 8
  %56 = load i8, i8* %54, align 1
  %57 = sext i8 %56 to i32
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @jsY_ishex(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %49
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @jsY_ishex(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61, %49
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @js_urierror(i32* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @jsY_tohex(i32 %69)
  %71 = shl i32 %70, 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @jsY_tohex(i32 %72)
  %74 = or i32 %71, %73
  store i32 %74, i32* %10, align 4
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @strchr(i8* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %68
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @js_putc(i32* %80, %struct.TYPE_4__** %7, i32 %81)
  br label %92

83:                                               ; preds = %68
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @js_putc(i32* %84, %struct.TYPE_4__** %7, i32 37)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @js_putc(i32* %86, %struct.TYPE_4__** %7, i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @js_putc(i32* %89, %struct.TYPE_4__** %7, i32 %90)
  br label %92

92:                                               ; preds = %83, %79
  br label %93

93:                                               ; preds = %92, %32
  br label %21

94:                                               ; preds = %21
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @js_putc(i32* %95, %struct.TYPE_4__** %7, i32 0)
  %97 = load i32*, i32** %4, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %99 = icmp ne %struct.TYPE_4__* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  br label %105

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104, %100
  %106 = phi i8* [ %103, %100 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %104 ]
  %107 = call i32 @js_pushstring(i32* %97, i8* %106)
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @js_endtry(i32* %108)
  %110 = load i32*, i32** %4, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %112 = call i32 @js_free(i32* %110, %struct.TYPE_4__* %111)
  ret void
}

declare dso_local i64 @js_try(i32*) #1

declare dso_local i32 @js_free(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @js_throw(i32*) #1

declare dso_local i32 @js_putc(i32*, %struct.TYPE_4__**, i32) #1

declare dso_local i32 @js_urierror(i32*, i8*) #1

declare dso_local i32 @jsY_ishex(i32) #1

declare dso_local i32 @jsY_tohex(i32) #1

declare dso_local i32 @strchr(i8*, i32) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

declare dso_local i32 @js_endtry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
