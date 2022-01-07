; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_lexjsonnumber.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_lexjsonnumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8, i32 }

@.str = private unnamed_addr constant [21 x i8] c"unexpected non-digit\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"missing digits after decimal point\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"missing digits after exponent indicator\00", align 1
@TK_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @lexjsonnumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lexjsonnumber(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 -1
  store i8* %7, i8** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i8, i8* %9, align 8
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 45
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = call i32 @jsY_next(%struct.TYPE_6__* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i8, i8* %18, align 8
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 48
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = call i32 @jsY_next(%struct.TYPE_6__* %23)
  br label %52

25:                                               ; preds = %16
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i8, i8* %27, align 8
  %29 = sext i8 %28 to i32
  %30 = icmp sge i32 %29, 49
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i8, i8* %33, align 8
  %35 = sext i8 %34 to i32
  %36 = icmp sle i32 %35, 57
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %44, %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i8, i8* %40, align 8
  %42 = call i64 @isdigit(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = call i32 @jsY_next(%struct.TYPE_6__* %45)
  br label %38

47:                                               ; preds = %38
  br label %51

48:                                               ; preds = %31, %25
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = call i32 @jsY_error(%struct.TYPE_6__* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %47
  br label %52

52:                                               ; preds = %51, %22
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = call i64 @jsY_accept(%struct.TYPE_6__* %53, i8 signext 46)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i8, i8* %58, align 8
  %60 = call i64 @isdigit(i8 signext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %69, %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i8, i8* %65, align 8
  %67 = call i64 @isdigit(i8 signext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = call i32 @jsY_next(%struct.TYPE_6__* %70)
  br label %63

72:                                               ; preds = %63
  br label %76

73:                                               ; preds = %56
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %75 = call i32 @jsY_error(%struct.TYPE_6__* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %72
  br label %77

77:                                               ; preds = %76, %52
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %79 = call i64 @jsY_accept(%struct.TYPE_6__* %78, i8 signext 101)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %83 = call i64 @jsY_accept(%struct.TYPE_6__* %82, i8 signext 69)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %121

85:                                               ; preds = %81, %77
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i8, i8* %87, align 8
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 45
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i8, i8* %93, align 8
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 43
  br i1 %96, label %97, label %100

97:                                               ; preds = %91, %85
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %99 = call i32 @jsY_next(%struct.TYPE_6__* %98)
  br label %100

100:                                              ; preds = %97, %91
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i8, i8* %102, align 8
  %104 = call i64 @isdigit(i8 signext %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %113, %106
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i8, i8* %109, align 8
  %111 = call i64 @isdigit(i8 signext %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %115 = call i32 @jsY_next(%struct.TYPE_6__* %114)
  br label %107

116:                                              ; preds = %107
  br label %120

117:                                              ; preds = %100
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %119 = call i32 @jsY_error(%struct.TYPE_6__* %118, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %116
  br label %121

121:                                              ; preds = %120, %81
  %122 = load i8*, i8** %3, align 8
  %123 = call i32 @js_strtod(i8* %122, i32* null)
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @TK_NUMBER, align 4
  ret i32 %126
}

declare dso_local i32 @jsY_next(%struct.TYPE_6__*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @jsY_error(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @jsY_accept(%struct.TYPE_6__*, i8 signext) #1

declare dso_local i32 @js_strtod(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
