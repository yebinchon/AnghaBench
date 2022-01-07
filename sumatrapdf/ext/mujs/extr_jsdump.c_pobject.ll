; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdump.c_pobject.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdump.c_pobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__*, i32, %struct.TYPE_5__* }

@AST_LIST = common dso_local global i64 0, align 8
@COMMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"get \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"set \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*)* @pobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pobject(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = call i32 @pc(i8 signext 123)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = call i32 (...) @nl()
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i32 @in(i32 %12)
  br label %14

14:                                               ; preds = %9, %2
  br label %15

15:                                               ; preds = %119, %14
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %120

18:                                               ; preds = %15
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AST_LIST, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  switch i64 %31, label %32 [
    i64 128, label %33
    i64 130, label %50
    i64 129, label %73
  ]

32:                                               ; preds = %18
  br label %103

33:                                               ; preds = %18
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* @COMMA, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = call i32 @pexpi(i32 %35, i32 %36, %struct.TYPE_5__* %39)
  %41 = call i32 @pc(i8 signext 58)
  %42 = call i32 (...) @sp()
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* @COMMA, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i32 @pexpi(i32 %44, i32 %45, %struct.TYPE_5__* %48)
  br label %103

50:                                               ; preds = %18
  %51 = call i32 @ps(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* @COMMA, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = call i32 @pexpi(i32 %53, i32 %54, %struct.TYPE_5__* %57)
  %59 = call i32 @ps(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 (...) @sp()
  %61 = call i32 @pc(i8 signext 123)
  %62 = call i32 (...) @nl()
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @pstmlist(i32 %64, i32 %67)
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @in(i32 %70)
  %72 = call i32 @pc(i8 signext 125)
  br label %103

73:                                               ; preds = %18
  %74 = call i32 @ps(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* @COMMA, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = call i32 @pexpi(i32 %76, i32 %77, %struct.TYPE_5__* %80)
  %82 = call i32 @pc(i8 signext 40)
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = call i32 @pargs(i32 %84, %struct.TYPE_5__* %87)
  %89 = call i32 @pc(i8 signext 41)
  %90 = call i32 (...) @sp()
  %91 = call i32 @pc(i8 signext 123)
  %92 = call i32 (...) @nl()
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @pstmlist(i32 %94, i32 %97)
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  %101 = call i32 @in(i32 %100)
  %102 = call i32 @pc(i8 signext 125)
  br label %103

103:                                              ; preds = %73, %50, %33, %32
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  store %struct.TYPE_5__* %106, %struct.TYPE_5__** %4, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = icmp ne %struct.TYPE_5__* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = call i32 @pc(i8 signext 44)
  %111 = call i32 (...) @nl()
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  %114 = call i32 @in(i32 %113)
  br label %119

115:                                              ; preds = %103
  %116 = call i32 (...) @nl()
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @in(i32 %117)
  br label %119

119:                                              ; preds = %115, %109
  br label %15

120:                                              ; preds = %15
  %121 = call i32 @pc(i8 signext 125)
  ret void
}

declare dso_local i32 @pc(i8 signext) #1

declare dso_local i32 @nl(...) #1

declare dso_local i32 @in(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pexpi(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @sp(...) #1

declare dso_local i32 @ps(i8*) #1

declare dso_local i32 @pstmlist(i32, i32) #1

declare dso_local i32 @pargs(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
