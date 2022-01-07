; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_parserep.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_parserep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cstate = type { i64, i32, i32 }

@P_BOL = common dso_local global i32 0, align 4
@P_EOL = common dso_local global i32 0, align 4
@L_WORD = common dso_local global i8 0, align 1
@P_WORD = common dso_local global i32 0, align 4
@L_NWORD = common dso_local global i8 0, align 1
@P_NWORD = common dso_local global i32 0, align 4
@L_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"invalid quantifier\00", align 1
@REPINF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.cstate*)* @parserep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parserep(%struct.cstate* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.cstate*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cstate* %0, %struct.cstate** %3, align 8
  %7 = load %struct.cstate*, %struct.cstate** %3, align 8
  %8 = call i64 @accept(%struct.cstate* %7, i8 signext 94)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.cstate*, %struct.cstate** %3, align 8
  %12 = load i32, i32* @P_BOL, align 4
  %13 = call i32* @newnode(%struct.cstate* %11, i32 %12)
  store i32* %13, i32** %2, align 8
  br label %105

14:                                               ; preds = %1
  %15 = load %struct.cstate*, %struct.cstate** %3, align 8
  %16 = call i64 @accept(%struct.cstate* %15, i8 signext 36)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.cstate*, %struct.cstate** %3, align 8
  %20 = load i32, i32* @P_EOL, align 4
  %21 = call i32* @newnode(%struct.cstate* %19, i32 %20)
  store i32* %21, i32** %2, align 8
  br label %105

22:                                               ; preds = %14
  %23 = load %struct.cstate*, %struct.cstate** %3, align 8
  %24 = load i8, i8* @L_WORD, align 1
  %25 = call i64 @accept(%struct.cstate* %23, i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.cstate*, %struct.cstate** %3, align 8
  %29 = load i32, i32* @P_WORD, align 4
  %30 = call i32* @newnode(%struct.cstate* %28, i32 %29)
  store i32* %30, i32** %2, align 8
  br label %105

31:                                               ; preds = %22
  %32 = load %struct.cstate*, %struct.cstate** %3, align 8
  %33 = load i8, i8* @L_NWORD, align 1
  %34 = call i64 @accept(%struct.cstate* %32, i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.cstate*, %struct.cstate** %3, align 8
  %38 = load i32, i32* @P_NWORD, align 4
  %39 = call i32* @newnode(%struct.cstate* %37, i32 %38)
  store i32* %39, i32** %2, align 8
  br label %105

40:                                               ; preds = %31
  %41 = load %struct.cstate*, %struct.cstate** %3, align 8
  %42 = call i32* @parseatom(%struct.cstate* %41)
  store i32* %42, i32** %4, align 8
  %43 = load %struct.cstate*, %struct.cstate** %3, align 8
  %44 = getelementptr inbounds %struct.cstate, %struct.cstate* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @L_COUNT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %40
  %49 = load %struct.cstate*, %struct.cstate** %3, align 8
  %50 = getelementptr inbounds %struct.cstate, %struct.cstate* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %5, align 4
  %52 = load %struct.cstate*, %struct.cstate** %3, align 8
  %53 = getelementptr inbounds %struct.cstate, %struct.cstate* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  %55 = load %struct.cstate*, %struct.cstate** %3, align 8
  %56 = call i32 @next(%struct.cstate* %55)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load %struct.cstate*, %struct.cstate** %3, align 8
  %62 = call i32 @die(%struct.cstate* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %48
  %64 = load %struct.cstate*, %struct.cstate** %3, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.cstate*, %struct.cstate** %3, align 8
  %67 = call i64 @accept(%struct.cstate* %66, i8 signext 63)
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32* @newrep(%struct.cstate* %64, i32* %65, i64 %67, i32 %68, i32 %69)
  store i32* %70, i32** %2, align 8
  br label %105

71:                                               ; preds = %40
  %72 = load %struct.cstate*, %struct.cstate** %3, align 8
  %73 = call i64 @accept(%struct.cstate* %72, i8 signext 42)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct.cstate*, %struct.cstate** %3, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.cstate*, %struct.cstate** %3, align 8
  %79 = call i64 @accept(%struct.cstate* %78, i8 signext 63)
  %80 = load i32, i32* @REPINF, align 4
  %81 = call i32* @newrep(%struct.cstate* %76, i32* %77, i64 %79, i32 0, i32 %80)
  store i32* %81, i32** %2, align 8
  br label %105

82:                                               ; preds = %71
  %83 = load %struct.cstate*, %struct.cstate** %3, align 8
  %84 = call i64 @accept(%struct.cstate* %83, i8 signext 43)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load %struct.cstate*, %struct.cstate** %3, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.cstate*, %struct.cstate** %3, align 8
  %90 = call i64 @accept(%struct.cstate* %89, i8 signext 63)
  %91 = load i32, i32* @REPINF, align 4
  %92 = call i32* @newrep(%struct.cstate* %87, i32* %88, i64 %90, i32 1, i32 %91)
  store i32* %92, i32** %2, align 8
  br label %105

93:                                               ; preds = %82
  %94 = load %struct.cstate*, %struct.cstate** %3, align 8
  %95 = call i64 @accept(%struct.cstate* %94, i8 signext 63)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.cstate*, %struct.cstate** %3, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = load %struct.cstate*, %struct.cstate** %3, align 8
  %101 = call i64 @accept(%struct.cstate* %100, i8 signext 63)
  %102 = call i32* @newrep(%struct.cstate* %98, i32* %99, i64 %101, i32 0, i32 1)
  store i32* %102, i32** %2, align 8
  br label %105

103:                                              ; preds = %93
  %104 = load i32*, i32** %4, align 8
  store i32* %104, i32** %2, align 8
  br label %105

105:                                              ; preds = %103, %97, %86, %75, %63, %36, %27, %18, %10
  %106 = load i32*, i32** %2, align 8
  ret i32* %106
}

declare dso_local i64 @accept(%struct.cstate*, i8 signext) #1

declare dso_local i32* @newnode(%struct.cstate*, i32) #1

declare dso_local i32* @parseatom(%struct.cstate*) #1

declare dso_local i32 @next(%struct.cstate*) #1

declare dso_local i32 @die(%struct.cstate*, i8*) #1

declare dso_local i32* @newrep(%struct.cstate*, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
