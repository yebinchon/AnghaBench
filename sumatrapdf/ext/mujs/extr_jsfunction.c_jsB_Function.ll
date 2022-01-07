; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsfunction.c_jsB_Function.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsfunction.c_jsB_Function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"[string]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @jsB_Function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsB_Function(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %10 = call i32 @js_gettop(%struct.TYPE_20__* %9)
  store i32 %10, i32* %4, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %12 = call i64 @js_try(%struct.TYPE_20__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %17 = call i32 @js_free(%struct.TYPE_20__* %15, %struct.TYPE_21__* %16)
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %19 = call i32 @jsP_freeparse(%struct.TYPE_20__* %18)
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %21 = call i32 @js_throw(%struct.TYPE_20__* %20)
  br label %22

22:                                               ; preds = %14, %1
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %51

25:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %36 = call i32 @js_putc(%struct.TYPE_20__* %35, %struct.TYPE_21__** %5, i8 signext 44)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i8* @js_tostring(%struct.TYPE_20__* %39, i32 %40)
  %42 = call i32 @js_puts(%struct.TYPE_20__* %38, %struct.TYPE_21__** %5, i8* %41)
  br label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %26

46:                                               ; preds = %26
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %48 = call i32 @js_putc(%struct.TYPE_20__* %47, %struct.TYPE_21__** %5, i8 signext 41)
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %50 = call i32 @js_putc(%struct.TYPE_20__* %49, %struct.TYPE_21__** %5, i8 signext 0)
  br label %51

51:                                               ; preds = %46, %22
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sub nsw i32 %53, 1
  %55 = call i64 @js_isdefined(%struct.TYPE_20__* %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %59, 1
  %61 = call i8* @js_tostring(%struct.TYPE_20__* %58, i32 %60)
  br label %63

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %57
  %64 = phi i8* [ %61, %57 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %62 ]
  store i8* %64, i8** %6, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %67 = icmp ne %struct.TYPE_21__* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  br label %73

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %68
  %74 = phi i32* [ %71, %68 ], [ null, %72 ]
  %75 = load i8*, i8** %6, align 8
  %76 = call i32* @jsP_parsefunction(%struct.TYPE_20__* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %74, i8* %75)
  store i32* %76, i32** %7, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i32* @jsC_compilefunction(%struct.TYPE_20__* %77, i32* %78)
  store i32* %79, i32** %8, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %81 = call i32 @js_endtry(%struct.TYPE_20__* %80)
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %84 = call i32 @js_free(%struct.TYPE_20__* %82, %struct.TYPE_21__* %83)
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %86 = call i32 @jsP_freeparse(%struct.TYPE_20__* %85)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @js_newfunction(%struct.TYPE_20__* %87, i32* %88, i32 %91)
  ret void
}

declare dso_local i32 @js_gettop(%struct.TYPE_20__*) #1

declare dso_local i64 @js_try(%struct.TYPE_20__*) #1

declare dso_local i32 @js_free(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @jsP_freeparse(%struct.TYPE_20__*) #1

declare dso_local i32 @js_throw(%struct.TYPE_20__*) #1

declare dso_local i32 @js_putc(%struct.TYPE_20__*, %struct.TYPE_21__**, i8 signext) #1

declare dso_local i32 @js_puts(%struct.TYPE_20__*, %struct.TYPE_21__**, i8*) #1

declare dso_local i8* @js_tostring(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @js_isdefined(%struct.TYPE_20__*, i32) #1

declare dso_local i32* @jsP_parsefunction(%struct.TYPE_20__*, i8*, i32*, i8*) #1

declare dso_local i32* @jsC_compilefunction(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @js_endtry(%struct.TYPE_20__*) #1

declare dso_local i32 @js_newfunction(%struct.TYPE_20__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
