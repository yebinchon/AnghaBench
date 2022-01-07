; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_codegen.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_codegen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@IAny = common dso_local global i32 0, align 4
@IFail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_16__*, i32, i32, i32*)* @codegen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codegen(i32* %0, %struct.TYPE_16__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  br label %11

11:                                               ; preds = %88, %5
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %99 [
    i32 137, label %15
    i32 141, label %23
    i32 129, label %27
    i32 128, label %33
    i32 135, label %34
    i32 136, label %38
    i32 132, label %47
    i32 140, label %54
    i32 133, label %58
    i32 142, label %63
    i32 138, label %69
    i32 131, label %75
    i32 134, label %80
    i32 139, label %84
    i32 130, label %88
  ]

15:                                               ; preds = %11
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @codechar(i32* %16, i32 %20, i32 %21)
  br label %101

23:                                               ; preds = %11
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @IAny, align 4
  %26 = call i32 @addinstruction(i32* %24, i32 %25, i32 0)
  br label %101

27:                                               ; preds = %11
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %30 = call i32 @treebuffer(%struct.TYPE_16__* %29)
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @codecharset(i32* %28, i32 %30, i32 %31)
  br label %101

33:                                               ; preds = %11
  br label %101

34:                                               ; preds = %11
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @IFail, align 4
  %37 = call i32 @addinstruction(i32* %35, i32 %36, i32 0)
  br label %101

38:                                               ; preds = %11
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %41 = call i32 @sib1(%struct.TYPE_16__* %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %43 = call %struct.TYPE_16__* @sib2(%struct.TYPE_16__* %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @codechoice(i32* %39, i32 %41, %struct.TYPE_16__* %43, i32 %44, i32* %45)
  br label %101

47:                                               ; preds = %11
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %50 = call i32 @sib1(%struct.TYPE_16__* %49)
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @coderep(i32* %48, i32 %50, i32 %51, i32* %52)
  br label %101

54:                                               ; preds = %11
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %57 = call i32 @codebehind(i32* %55, %struct.TYPE_16__* %56)
  br label %101

58:                                               ; preds = %11
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = call i32 @sib1(%struct.TYPE_16__* %60)
  %62 = call i32 @codenot(i32* %59, i32 %61)
  br label %101

63:                                               ; preds = %11
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %66 = call i32 @sib1(%struct.TYPE_16__* %65)
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @codeand(i32* %64, i32 %66, i32 %67)
  br label %101

69:                                               ; preds = %11
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @codecapture(i32* %70, %struct.TYPE_16__* %71, i32 %72, i32* %73)
  br label %101

75:                                               ; preds = %11
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @coderuntime(i32* %76, %struct.TYPE_16__* %77, i32 %78)
  br label %101

80:                                               ; preds = %11
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %83 = call i32 @codegrammar(i32* %81, %struct.TYPE_16__* %82)
  br label %101

84:                                               ; preds = %11
  %85 = load i32*, i32** %6, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %87 = call i32 @codecall(i32* %85, %struct.TYPE_16__* %86)
  br label %101

88:                                               ; preds = %11
  %89 = load i32*, i32** %6, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %91 = call i32 @sib1(%struct.TYPE_16__* %90)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %93 = call %struct.TYPE_16__* @sib2(%struct.TYPE_16__* %92)
  %94 = load i32, i32* %9, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @codeseq1(i32* %89, i32 %91, %struct.TYPE_16__* %93, i32 %94, i32* %95)
  store i32 %96, i32* %9, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %98 = call %struct.TYPE_16__* @sib2(%struct.TYPE_16__* %97)
  store %struct.TYPE_16__* %98, %struct.TYPE_16__** %7, align 8
  br label %11

99:                                               ; preds = %11
  %100 = call i32 @assert(i32 0)
  br label %101

101:                                              ; preds = %99, %84, %80, %75, %69, %63, %58, %54, %47, %38, %34, %33, %27, %23, %15
  ret void
}

declare dso_local i32 @codechar(i32*, i32, i32) #1

declare dso_local i32 @addinstruction(i32*, i32, i32) #1

declare dso_local i32 @codecharset(i32*, i32, i32) #1

declare dso_local i32 @treebuffer(%struct.TYPE_16__*) #1

declare dso_local i32 @codechoice(i32*, i32, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @sib1(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @sib2(%struct.TYPE_16__*) #1

declare dso_local i32 @coderep(i32*, i32, i32, i32*) #1

declare dso_local i32 @codebehind(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @codenot(i32*, i32) #1

declare dso_local i32 @codeand(i32*, i32, i32) #1

declare dso_local i32 @codecapture(i32*, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @coderuntime(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @codegrammar(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @codecall(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @codeseq1(i32*, i32, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
