; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lgc.c_clearvalues.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lgc.c_clearvalues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @clearvalues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clearvalues(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  br label %12

12:                                               ; preds = %74, %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %13, %14
  br i1 %15, label %16, label %79

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = call %struct.TYPE_5__* @gco2t(i32* %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %7, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = call i32* @gnodelast(%struct.TYPE_5__* %19)
  store i32* %20, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %42, %16
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i64 @iscleared(i32* %34, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @setnilvalue(i32* %39)
  br label %41

41:                                               ; preds = %38, %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %21

45:                                               ; preds = %21
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = call i32* @gnode(%struct.TYPE_5__* %46, i32 0)
  store i32* %47, i32** %8, align 8
  br label %48

48:                                               ; preds = %70, %45
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = icmp ult i32* %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load i32*, i32** %8, align 8
  %54 = call i32* @gval(i32* %53)
  %55 = call i32 @ttisnil(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %52
  %58 = load i32*, i32** %4, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32* @gval(i32* %59)
  %61 = call i64 @iscleared(i32* %58, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32*, i32** %8, align 8
  %65 = call i32* @gval(i32* %64)
  %66 = call i32 @setnilvalue(i32* %65)
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @removeentry(i32* %67)
  br label %69

69:                                               ; preds = %63, %57, %52
  br label %70

70:                                               ; preds = %69
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %8, align 8
  br label %48

73:                                               ; preds = %48
  br label %74

74:                                               ; preds = %73
  %75 = load i32*, i32** %5, align 8
  %76 = call %struct.TYPE_5__* @gco2t(i32* %75)
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %5, align 8
  br label %12

79:                                               ; preds = %12
  ret void
}

declare dso_local %struct.TYPE_5__* @gco2t(i32*) #1

declare dso_local i32* @gnodelast(%struct.TYPE_5__*) #1

declare dso_local i64 @iscleared(i32*, i32*) #1

declare dso_local i32 @setnilvalue(i32*) #1

declare dso_local i32* @gnode(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ttisnil(i32*) #1

declare dso_local i32* @gval(i32*) #1

declare dso_local i32 @removeentry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
