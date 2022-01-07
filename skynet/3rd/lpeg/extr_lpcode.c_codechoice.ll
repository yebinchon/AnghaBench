; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_codechoice.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_codechoice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@TTrue = common dso_local global i64 0, align 8
@fullset = common dso_local global i32* null, align 8
@NOINST = common dso_local global i32 0, align 4
@IJmp = common dso_local global i32 0, align 4
@IPartialCommit = common dso_local global i32 0, align 4
@IChoice = common dso_local global i32 0, align 4
@ICommit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32*)* @codechoice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codechoice(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TTrue, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = load i32*, i32** @fullset, align 8
  %28 = call i32 @getfirst(%struct.TYPE_7__* %26, i32* %27, i32* %12)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = call i64 @headfail(%struct.TYPE_7__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %69, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @getfirst(%struct.TYPE_7__* %36, i32* %37, i32* %13)
  %39 = call i32 @cs_disjoint(i32* %12, i32* %13)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %35, %5
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @codetestset(i32* %42, i32* %12, i32 0)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* @NOINST, align 4
  store i32 %44, i32* %16, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @codegen(i32* %45, %struct.TYPE_7__* %46, i32 0, i32 %47, i32* %48)
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %41
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @IJmp, align 4
  %55 = call i32 @addoffsetinst(i32* %53, i32 %54)
  store i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %52, %41
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @jumptohere(i32* %57, i32 %58)
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @NOINST, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @codegen(i32* %60, %struct.TYPE_7__* %61, i32 %62, i32 %63, i32* %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @jumptohere(i32* %66, i32 %67)
  br label %118

69:                                               ; preds = %35, %32
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* @IPartialCommit, align 4
  %79 = call i32 @addoffsetinst(i32* %77, i32 %78)
  %80 = call i32 @jumptohere(i32* %76, i32 %79)
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = load i32, i32* @NOINST, align 4
  %84 = load i32*, i32** @fullset, align 8
  %85 = call i32 @codegen(i32* %81, %struct.TYPE_7__* %82, i32 1, i32 %83, i32* %84)
  br label %117

86:                                               ; preds = %72, %69
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @codetestset(i32* %87, i32* %12, i32 %88)
  store i32 %89, i32* %18, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* @IChoice, align 4
  %92 = call i32 @addoffsetinst(i32* %90, i32 %91)
  store i32 %92, i32* %19, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %18, align 4
  %97 = load i32*, i32** @fullset, align 8
  %98 = call i32 @codegen(i32* %93, %struct.TYPE_7__* %94, i32 %95, i32 %96, i32* %97)
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* @ICommit, align 4
  %101 = call i32 @addoffsetinst(i32* %99, i32 %100)
  store i32 %101, i32* %17, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %19, align 4
  %104 = call i32 @jumptohere(i32* %102, i32 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %18, align 4
  %107 = call i32 @jumptohere(i32* %105, i32 %106)
  %108 = load i32*, i32** %6, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @NOINST, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @codegen(i32* %108, %struct.TYPE_7__* %109, i32 %110, i32 %111, i32* %112)
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %17, align 4
  %116 = call i32 @jumptohere(i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %86, %75
  br label %118

118:                                              ; preds = %117, %56
  ret void
}

declare dso_local i32 @getfirst(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i64 @headfail(%struct.TYPE_7__*) #1

declare dso_local i32 @cs_disjoint(i32*, i32*) #1

declare dso_local i32 @codetestset(i32*, i32*, i32) #1

declare dso_local i32 @codegen(i32*, %struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i32 @addoffsetinst(i32*, i32) #1

declare dso_local i32 @jumptohere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
