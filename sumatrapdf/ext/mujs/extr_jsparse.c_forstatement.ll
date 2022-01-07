; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_forstatement.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_forstatement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8 }

@TK_VAR = common dso_local global i8 0, align 1
@FOR_VAR = common dso_local global i32 0, align 4
@TK_IN = common dso_local global i8 0, align 1
@FOR_IN_VAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unexpected token in for-var-statement: %s\00", align 1
@FOR = common dso_local global i32 0, align 4
@FOR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"unexpected token in for-statement: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i32)* @forstatement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @forstatement(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = call i32 @jsP_expect(%struct.TYPE_10__* %10, i8 signext 40)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = load i8, i8* @TK_VAR, align 1
  %14 = call i64 @jsP_accept(%struct.TYPE_10__* %12, i8 signext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %59

16:                                               ; preds = %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = call i32* @vardeclist(%struct.TYPE_10__* %17, i32 1)
  store i32* %18, i32** %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = call i64 @jsP_accept(%struct.TYPE_10__* %19, i8 signext 59)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = call i32* @forexpression(%struct.TYPE_10__* %23, i8 signext 59)
  store i32* %24, i32** %7, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = call i32* @forexpression(%struct.TYPE_10__* %25, i8 signext 41)
  store i32* %26, i32** %8, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = call i32* @statement(%struct.TYPE_10__* %27)
  store i32* %28, i32** %9, align 8
  %29 = load i32, i32* @FOR_VAR, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32* @STM4(i32 %29, i32* %30, i32* %31, i32* %32, i32* %33)
  store i32* %34, i32** %3, align 8
  br label %110

35:                                               ; preds = %16
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = load i8, i8* @TK_IN, align 1
  %38 = call i64 @jsP_accept(%struct.TYPE_10__* %36, i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = call i32* @expression(%struct.TYPE_10__* %41, i32 0)
  store i32* %42, i32** %7, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = call i32 @jsP_expect(%struct.TYPE_10__* %43, i8 signext 41)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = call i32* @statement(%struct.TYPE_10__* %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32, i32* @FOR_IN_VAR, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32* @STM3(i32 %47, i32* %48, i32* %49, i32* %50)
  store i32* %51, i32** %3, align 8
  br label %110

52:                                               ; preds = %35
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @jsY_tokenstring(i8 signext %56)
  %58 = call i32 @jsP_error(%struct.TYPE_10__* %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %52, %2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 59
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = call i32* @expression(%struct.TYPE_10__* %66, i32 1)
  store i32* %67, i32** %6, align 8
  br label %69

68:                                               ; preds = %59
  store i32* null, i32** %6, align 8
  br label %69

69:                                               ; preds = %68, %65
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = call i64 @jsP_accept(%struct.TYPE_10__* %70, i8 signext 59)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = call i32* @forexpression(%struct.TYPE_10__* %74, i8 signext 59)
  store i32* %75, i32** %7, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = call i32* @forexpression(%struct.TYPE_10__* %76, i8 signext 41)
  store i32* %77, i32** %8, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = call i32* @statement(%struct.TYPE_10__* %78)
  store i32* %79, i32** %9, align 8
  %80 = load i32, i32* @FOR, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = call i32* @STM4(i32 %80, i32* %81, i32* %82, i32* %83, i32* %84)
  store i32* %85, i32** %3, align 8
  br label %110

86:                                               ; preds = %69
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = load i8, i8* @TK_IN, align 1
  %89 = call i64 @jsP_accept(%struct.TYPE_10__* %87, i8 signext %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = call i32* @expression(%struct.TYPE_10__* %92, i32 0)
  store i32* %93, i32** %7, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %95 = call i32 @jsP_expect(%struct.TYPE_10__* %94, i8 signext 41)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = call i32* @statement(%struct.TYPE_10__* %96)
  store i32* %97, i32** %8, align 8
  %98 = load i32, i32* @FOR_IN, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = call i32* @STM3(i32 %98, i32* %99, i32* %100, i32* %101)
  store i32* %102, i32** %3, align 8
  br label %110

103:                                              ; preds = %86
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i8, i8* %106, align 1
  %108 = call i32 @jsY_tokenstring(i8 signext %107)
  %109 = call i32 @jsP_error(%struct.TYPE_10__* %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %103, %91, %73, %40, %22
  %111 = load i32*, i32** %3, align 8
  ret i32* %111
}

declare dso_local i32 @jsP_expect(%struct.TYPE_10__*, i8 signext) #1

declare dso_local i64 @jsP_accept(%struct.TYPE_10__*, i8 signext) #1

declare dso_local i32* @vardeclist(%struct.TYPE_10__*, i32) #1

declare dso_local i32* @forexpression(%struct.TYPE_10__*, i8 signext) #1

declare dso_local i32* @statement(%struct.TYPE_10__*) #1

declare dso_local i32* @STM4(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @expression(%struct.TYPE_10__*, i32) #1

declare dso_local i32* @STM3(i32, i32*, i32*, i32*) #1

declare dso_local i32 @jsP_error(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @jsY_tokenstring(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
