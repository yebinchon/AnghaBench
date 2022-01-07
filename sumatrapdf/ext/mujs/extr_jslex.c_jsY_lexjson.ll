; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_jsY_lexjson.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_jsY_lexjson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8, i32, i32 }

@TK_FALSE = common dso_local global i32 0, align 4
@TK_NULL = common dso_local global i32 0, align 4
@TK_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unexpected character: '%c'\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unexpected character: \\u%04X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsY_lexjson(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  br label %4

4:                                                ; preds = %1, %128
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  br label %10

10:                                               ; preds = %24, %4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 4
  %14 = call i64 @jsY_iswhite(i8 signext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 4
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 10
  br label %22

22:                                               ; preds = %16, %10
  %23 = phi i1 [ true, %10 ], [ %21, %16 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = call i32 @jsY_next(%struct.TYPE_8__* %25)
  br label %10

27:                                               ; preds = %22
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 4
  %31 = sext i8 %30 to i32
  %32 = icmp sge i32 %31, 48
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 4
  %37 = sext i8 %36 to i32
  %38 = icmp sle i32 %37, 57
  br i1 %38, label %45, label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 4
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 45
  br i1 %44, label %45, label %48

45:                                               ; preds = %39, %33
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = call i32 @lexjsonnumber(%struct.TYPE_8__* %46)
  store i32 %47, i32* %2, align 4
  br label %135

48:                                               ; preds = %39
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 4
  %52 = sext i8 %51 to i32
  switch i32 %52, label %109 [
    i32 44, label %53
    i32 58, label %56
    i32 91, label %59
    i32 93, label %62
    i32 123, label %65
    i32 125, label %68
    i32 34, label %71
    i32 102, label %76
    i32 110, label %88
    i32 116, label %98
    i32 0, label %108
  ]

53:                                               ; preds = %48
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = call i32 @jsY_next(%struct.TYPE_8__* %54)
  store i32 44, i32* %2, align 4
  br label %135

56:                                               ; preds = %48
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = call i32 @jsY_next(%struct.TYPE_8__* %57)
  store i32 58, i32* %2, align 4
  br label %135

59:                                               ; preds = %48
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = call i32 @jsY_next(%struct.TYPE_8__* %60)
  store i32 91, i32* %2, align 4
  br label %135

62:                                               ; preds = %48
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = call i32 @jsY_next(%struct.TYPE_8__* %63)
  store i32 93, i32* %2, align 4
  br label %135

65:                                               ; preds = %48
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = call i32 @jsY_next(%struct.TYPE_8__* %66)
  store i32 123, i32* %2, align 4
  br label %135

68:                                               ; preds = %48
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = call i32 @jsY_next(%struct.TYPE_8__* %69)
  store i32 125, i32* %2, align 4
  br label %135

71:                                               ; preds = %48
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = call i32 @jsY_next(%struct.TYPE_8__* %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = call i32 @lexjsonstring(%struct.TYPE_8__* %74)
  store i32 %75, i32* %2, align 4
  br label %135

76:                                               ; preds = %48
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = call i32 @jsY_next(%struct.TYPE_8__* %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = call i32 @jsY_expect(%struct.TYPE_8__* %79, i8 signext 97)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = call i32 @jsY_expect(%struct.TYPE_8__* %81, i8 signext 108)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = call i32 @jsY_expect(%struct.TYPE_8__* %83, i8 signext 115)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = call i32 @jsY_expect(%struct.TYPE_8__* %85, i8 signext 101)
  %87 = load i32, i32* @TK_FALSE, align 4
  store i32 %87, i32* %2, align 4
  br label %135

88:                                               ; preds = %48
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = call i32 @jsY_next(%struct.TYPE_8__* %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = call i32 @jsY_expect(%struct.TYPE_8__* %91, i8 signext 117)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = call i32 @jsY_expect(%struct.TYPE_8__* %93, i8 signext 108)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = call i32 @jsY_expect(%struct.TYPE_8__* %95, i8 signext 108)
  %97 = load i32, i32* @TK_NULL, align 4
  store i32 %97, i32* %2, align 4
  br label %135

98:                                               ; preds = %48
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = call i32 @jsY_next(%struct.TYPE_8__* %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = call i32 @jsY_expect(%struct.TYPE_8__* %101, i8 signext 114)
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = call i32 @jsY_expect(%struct.TYPE_8__* %103, i8 signext 117)
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = call i32 @jsY_expect(%struct.TYPE_8__* %105, i8 signext 101)
  %107 = load i32, i32* @TK_TRUE, align 4
  store i32 %107, i32* %2, align 4
  br label %135

108:                                              ; preds = %48
  store i32 0, i32* %2, align 4
  br label %135

109:                                              ; preds = %48
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i8, i8* %111, align 4
  %113 = sext i8 %112 to i32
  %114 = icmp sge i32 %113, 32
  br i1 %114, label %115, label %128

115:                                              ; preds = %109
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i8, i8* %117, align 4
  %119 = sext i8 %118 to i32
  %120 = icmp sle i32 %119, 126
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i8, i8* %124, align 4
  %126 = sext i8 %125 to i32
  %127 = call i32 @jsY_error(%struct.TYPE_8__* %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %121, %115, %109
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i8, i8* %131, align 4
  %133 = sext i8 %132 to i32
  %134 = call i32 @jsY_error(%struct.TYPE_8__* %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  br label %4

135:                                              ; preds = %108, %98, %88, %76, %71, %68, %65, %62, %59, %56, %53, %45
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i64 @jsY_iswhite(i8 signext) #1

declare dso_local i32 @jsY_next(%struct.TYPE_8__*) #1

declare dso_local i32 @lexjsonnumber(%struct.TYPE_8__*) #1

declare dso_local i32 @lexjsonstring(%struct.TYPE_8__*) #1

declare dso_local i32 @jsY_expect(%struct.TYPE_8__*, i8 signext) #1

declare dso_local i32 @jsY_error(%struct.TYPE_8__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
