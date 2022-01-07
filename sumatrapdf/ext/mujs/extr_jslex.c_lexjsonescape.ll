; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_lexjsonescape.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_lexjsonescape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"invalid escape sequence\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @lexjsonescape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lexjsonescape(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %8 [
    i32 117, label %11
    i32 34, label %85
    i32 92, label %90
    i32 47, label %95
    i32 98, label %100
    i32 102, label %105
    i32 110, label %110
    i32 114, label %115
    i32 116, label %120
  ]

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = call i32 @jsY_error(%struct.TYPE_6__* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %1, %8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = call i32 @jsY_next(%struct.TYPE_6__* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @jsY_ishex(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %126

20:                                               ; preds = %11
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @jsY_tohex(i32 %23)
  %25 = shl i32 %24, 12
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = call i32 @jsY_next(%struct.TYPE_6__* %28)
  br label %30

30:                                               ; preds = %20
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @jsY_ishex(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %126

37:                                               ; preds = %30
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @jsY_tohex(i32 %40)
  %42 = shl i32 %41, 8
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = call i32 @jsY_next(%struct.TYPE_6__* %45)
  br label %47

47:                                               ; preds = %37
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @jsY_ishex(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %126

54:                                               ; preds = %47
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @jsY_tohex(i32 %57)
  %59 = shl i32 %58, 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = call i32 @jsY_next(%struct.TYPE_6__* %62)
  br label %64

64:                                               ; preds = %54
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @jsY_ishex(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  store i32 1, i32* %2, align 4
  br label %126

71:                                               ; preds = %64
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @jsY_tohex(i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = call i32 @jsY_next(%struct.TYPE_6__* %78)
  br label %80

80:                                               ; preds = %71
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = trunc i32 %82 to i8
  %84 = call i32 @textpush(%struct.TYPE_6__* %81, i8 signext %83)
  br label %125

85:                                               ; preds = %1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = call i32 @textpush(%struct.TYPE_6__* %86, i8 signext 34)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = call i32 @jsY_next(%struct.TYPE_6__* %88)
  br label %125

90:                                               ; preds = %1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = call i32 @textpush(%struct.TYPE_6__* %91, i8 signext 92)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = call i32 @jsY_next(%struct.TYPE_6__* %93)
  br label %125

95:                                               ; preds = %1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = call i32 @textpush(%struct.TYPE_6__* %96, i8 signext 47)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = call i32 @jsY_next(%struct.TYPE_6__* %98)
  br label %125

100:                                              ; preds = %1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = call i32 @textpush(%struct.TYPE_6__* %101, i8 signext 8)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = call i32 @jsY_next(%struct.TYPE_6__* %103)
  br label %125

105:                                              ; preds = %1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %107 = call i32 @textpush(%struct.TYPE_6__* %106, i8 signext 12)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = call i32 @jsY_next(%struct.TYPE_6__* %108)
  br label %125

110:                                              ; preds = %1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = call i32 @textpush(%struct.TYPE_6__* %111, i8 signext 10)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = call i32 @jsY_next(%struct.TYPE_6__* %113)
  br label %125

115:                                              ; preds = %1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %117 = call i32 @textpush(%struct.TYPE_6__* %116, i8 signext 13)
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = call i32 @jsY_next(%struct.TYPE_6__* %118)
  br label %125

120:                                              ; preds = %1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %122 = call i32 @textpush(%struct.TYPE_6__* %121, i8 signext 9)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = call i32 @jsY_next(%struct.TYPE_6__* %123)
  br label %125

125:                                              ; preds = %120, %115, %110, %105, %100, %95, %90, %85, %80
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %70, %53, %36, %19
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @jsY_error(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @jsY_next(%struct.TYPE_6__*) #1

declare dso_local i32 @jsY_ishex(i32) #1

declare dso_local i32 @jsY_tohex(i32) #1

declare dso_local i32 @textpush(%struct.TYPE_6__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
