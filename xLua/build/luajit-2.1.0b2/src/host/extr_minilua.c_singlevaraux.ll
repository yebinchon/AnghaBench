; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_singlevaraux.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_singlevaraux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@VGLOBAL = common dso_local global i32 0, align 4
@VLOCAL = common dso_local global i32 0, align 4
@VUPVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*, %struct.TYPE_14__*, i32)* @singlevaraux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @singlevaraux(%struct.TYPE_15__* %0, i32* %1, %struct.TYPE_14__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %12 = icmp eq %struct.TYPE_15__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %15 = load i32, i32* @VGLOBAL, align 4
  %16 = call i32 @init_exp(%struct.TYPE_14__* %14, i32 %15, i32 255)
  %17 = load i32, i32* @VGLOBAL, align 4
  store i32 %17, i32* %5, align 4
  br label %61

18:                                               ; preds = %4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @searchvar(%struct.TYPE_15__* %19, i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %26 = load i32, i32* @VLOCAL, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @init_exp(%struct.TYPE_14__* %25, i32 %26, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @markupval(%struct.TYPE_15__* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %24
  %36 = load i32, i32* @VLOCAL, align 4
  store i32 %36, i32* %5, align 4
  br label %61

37:                                               ; preds = %18
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %43 = call i32 @singlevaraux(%struct.TYPE_15__* %40, i32* %41, %struct.TYPE_14__* %42, i32 0)
  %44 = load i32, i32* @VGLOBAL, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @VGLOBAL, align 4
  store i32 %47, i32* %5, align 4
  br label %61

48:                                               ; preds = %37
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = call i32 @indexupvalue(%struct.TYPE_15__* %49, i32* %50, %struct.TYPE_14__* %51)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* @VUPVAL, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @VUPVAL, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %48, %46, %35, %13
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @init_exp(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @searchvar(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @markupval(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @indexupvalue(%struct.TYPE_15__*, i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
