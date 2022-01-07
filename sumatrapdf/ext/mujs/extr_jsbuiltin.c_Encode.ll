; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsbuiltin.c_Encode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsbuiltin.c_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@Encode.HEX = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Encode(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @js_try(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = call i32 @js_free(i32* %13, %struct.TYPE_4__* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @js_throw(i32* %16)
  br label %18

18:                                               ; preds = %12, %3
  br label %19

19:                                               ; preds = %57, %18
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  %26 = load i8, i8* %24, align 1
  %27 = zext i8 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @strchr(i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = trunc i32 %34 to i8
  %36 = call i32 @js_putc(i32* %33, %struct.TYPE_4__** %7, i8 signext %35)
  br label %57

37:                                               ; preds = %23
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @js_putc(i32* %38, %struct.TYPE_4__** %7, i8 signext 37)
  %40 = load i32*, i32** %4, align 8
  %41 = load i8*, i8** @Encode.HEX, align 8
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %42, 4
  %44 = and i32 %43, 15
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @js_putc(i32* %40, %struct.TYPE_4__** %7, i8 signext %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i8*, i8** @Encode.HEX, align 8
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 15
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @js_putc(i32* %49, %struct.TYPE_4__** %7, i8 signext %55)
  br label %57

57:                                               ; preds = %37, %32
  br label %19

58:                                               ; preds = %19
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @js_putc(i32* %59, %struct.TYPE_4__** %7, i8 signext 0)
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  br label %69

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %64
  %70 = phi i8* [ %67, %64 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %68 ]
  %71 = call i32 @js_pushstring(i32* %61, i8* %70)
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @js_endtry(i32* %72)
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = call i32 @js_free(i32* %74, %struct.TYPE_4__* %75)
  ret void
}

declare dso_local i64 @js_try(i32*) #1

declare dso_local i32 @js_free(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @js_throw(i32*) #1

declare dso_local i64 @strchr(i8*, i32) #1

declare dso_local i32 @js_putc(i32*, %struct.TYPE_4__**, i8 signext) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

declare dso_local i32 @js_endtry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
