; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_coderep.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_coderep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@ISpan = common dso_local global i32 0, align 4
@fullset = common dso_local global i32 0, align 4
@IJmp = common dso_local global i32 0, align 4
@NOINST = common dso_local global i32 0, align 4
@IPartialCommit = common dso_local global i32 0, align 4
@IChoice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, %struct.TYPE_8__*)* @coderep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coderep(i32* %0, i32* %1, i32 %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @tocharset(i32* %17, %struct.TYPE_8__* %9)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @ISpan, align 4
  %23 = call i32 @addinstruction(i32* %21, i32 %22, i32 0)
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @addcharset(i32* %24, i32 %26)
  br label %99

28:                                               ; preds = %4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @fullset, align 4
  %31 = call i32 @getfirst(i32* %29, i32 %30, %struct.TYPE_8__* %9)
  store i32 %31, i32* %10, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @headfail(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = call i64 @cs_disjoint(%struct.TYPE_8__* %9, %struct.TYPE_8__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %38, %28
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @codetestset(i32* %43, %struct.TYPE_8__* %9, i32 0)
  store i32 %44, i32* %12, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @fullset, align 4
  %49 = call i32 @codegen(i32* %45, i32* %46, i32 0, i32 %47, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @IJmp, align 4
  %52 = call i32 @addoffsetinst(i32* %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @jumptohere(i32* %53, i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @jumptothere(i32* %56, i32 %57, i32 %58)
  br label %98

60:                                               ; preds = %38, %35
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @codetestset(i32* %61, %struct.TYPE_8__* %9, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* @NOINST, align 4
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* @IPartialCommit, align 4
  %71 = call i32 @addoffsetinst(i32* %69, i32 %70)
  %72 = call i32 @jumptohere(i32* %68, i32 %71)
  br label %77

73:                                               ; preds = %60
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* @IChoice, align 4
  %76 = call i32 @addoffsetinst(i32* %74, i32 %75)
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @gethere(i32* %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* @NOINST, align 4
  %83 = load i32, i32* @fullset, align 4
  %84 = call i32 @codegen(i32* %80, i32* %81, i32 0, i32 %82, i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @IPartialCommit, align 4
  %87 = call i32 @addoffsetinst(i32* %85, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @jumptothere(i32* %88, i32 %89, i32 %90)
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @jumptohere(i32* %92, i32 %93)
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @jumptohere(i32* %95, i32 %96)
  br label %98

98:                                               ; preds = %77, %42
  br label %99

99:                                               ; preds = %98, %20
  ret void
}

declare dso_local i64 @tocharset(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @addinstruction(i32*, i32, i32) #1

declare dso_local i32 @addcharset(i32*, i32) #1

declare dso_local i32 @getfirst(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @headfail(i32*) #1

declare dso_local i64 @cs_disjoint(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @codetestset(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @codegen(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @addoffsetinst(i32*, i32) #1

declare dso_local i32 @jumptohere(i32*, i32) #1

declare dso_local i32 @jumptothere(i32*, i32, i32) #1

declare dso_local i32 @gethere(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
