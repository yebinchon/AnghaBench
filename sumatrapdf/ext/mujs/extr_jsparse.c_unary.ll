; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_unary.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_unary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@TK_DELETE = common dso_local global i8 0, align 1
@DELETE = common dso_local global i32 0, align 4
@TK_VOID = common dso_local global i8 0, align 1
@VOID = common dso_local global i32 0, align 4
@TK_TYPEOF = common dso_local global i8 0, align 1
@TYPEOF = common dso_local global i32 0, align 4
@TK_INC = common dso_local global i8 0, align 1
@PREINC = common dso_local global i32 0, align 4
@TK_DEC = common dso_local global i8 0, align 1
@PREDEC = common dso_local global i32 0, align 4
@POS = common dso_local global i32 0, align 4
@NEG = common dso_local global i32 0, align 4
@BITNOT = common dso_local global i32 0, align 4
@LOGNOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @unary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @unary(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = call i32 (...) @INCREC()
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = load i8, i8* @TK_DELETE, align 1
  %11 = call i64 @jsP_accept(%struct.TYPE_5__* %9, i8 signext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @DELETE, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = call i32* @unary(%struct.TYPE_5__* %15)
  %17 = call i32* @EXP1(i32 %14, i32* %16)
  store i32* %17, i32** %3, align 8
  br label %105

18:                                               ; preds = %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = load i8, i8* @TK_VOID, align 1
  %21 = call i64 @jsP_accept(%struct.TYPE_5__* %19, i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32, i32* @VOID, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = call i32* @unary(%struct.TYPE_5__* %25)
  %27 = call i32* @EXP1(i32 %24, i32* %26)
  store i32* %27, i32** %3, align 8
  br label %104

28:                                               ; preds = %18
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = load i8, i8* @TK_TYPEOF, align 1
  %31 = call i64 @jsP_accept(%struct.TYPE_5__* %29, i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* @TYPEOF, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = call i32* @unary(%struct.TYPE_5__* %35)
  %37 = call i32* @EXP1(i32 %34, i32* %36)
  store i32* %37, i32** %3, align 8
  br label %103

38:                                               ; preds = %28
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = load i8, i8* @TK_INC, align 1
  %41 = call i64 @jsP_accept(%struct.TYPE_5__* %39, i8 signext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* @PREINC, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = call i32* @unary(%struct.TYPE_5__* %45)
  %47 = call i32* @EXP1(i32 %44, i32* %46)
  store i32* %47, i32** %3, align 8
  br label %102

48:                                               ; preds = %38
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = load i8, i8* @TK_DEC, align 1
  %51 = call i64 @jsP_accept(%struct.TYPE_5__* %49, i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* @PREDEC, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = call i32* @unary(%struct.TYPE_5__* %55)
  %57 = call i32* @EXP1(i32 %54, i32* %56)
  store i32* %57, i32** %3, align 8
  br label %101

58:                                               ; preds = %48
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = call i64 @jsP_accept(%struct.TYPE_5__* %59, i8 signext 43)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* @POS, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = call i32* @unary(%struct.TYPE_5__* %64)
  %66 = call i32* @EXP1(i32 %63, i32* %65)
  store i32* %66, i32** %3, align 8
  br label %100

67:                                               ; preds = %58
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = call i64 @jsP_accept(%struct.TYPE_5__* %68, i8 signext 45)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* @NEG, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %74 = call i32* @unary(%struct.TYPE_5__* %73)
  %75 = call i32* @EXP1(i32 %72, i32* %74)
  store i32* %75, i32** %3, align 8
  br label %99

76:                                               ; preds = %67
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %78 = call i64 @jsP_accept(%struct.TYPE_5__* %77, i8 signext 126)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, i32* @BITNOT, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %83 = call i32* @unary(%struct.TYPE_5__* %82)
  %84 = call i32* @EXP1(i32 %81, i32* %83)
  store i32* %84, i32** %3, align 8
  br label %98

85:                                               ; preds = %76
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = call i64 @jsP_accept(%struct.TYPE_5__* %86, i8 signext 33)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32, i32* @LOGNOT, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %92 = call i32* @unary(%struct.TYPE_5__* %91)
  %93 = call i32* @EXP1(i32 %90, i32* %92)
  store i32* %93, i32** %3, align 8
  br label %97

94:                                               ; preds = %85
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %96 = call i32* @postfix(%struct.TYPE_5__* %95)
  store i32* %96, i32** %3, align 8
  br label %97

97:                                               ; preds = %94, %89
  br label %98

98:                                               ; preds = %97, %80
  br label %99

99:                                               ; preds = %98, %71
  br label %100

100:                                              ; preds = %99, %62
  br label %101

101:                                              ; preds = %100, %53
  br label %102

102:                                              ; preds = %101, %43
  br label %103

103:                                              ; preds = %102, %33
  br label %104

104:                                              ; preds = %103, %23
  br label %105

105:                                              ; preds = %104, %13
  %106 = call i32 (...) @DECREC()
  %107 = load i32*, i32** %3, align 8
  ret i32* %107
}

declare dso_local i32 @INCREC(...) #1

declare dso_local i64 @jsP_accept(%struct.TYPE_5__*, i8 signext) #1

declare dso_local i32* @EXP1(i32, i32*) #1

declare dso_local i32* @postfix(%struct.TYPE_5__*) #1

declare dso_local i32 @DECREC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
