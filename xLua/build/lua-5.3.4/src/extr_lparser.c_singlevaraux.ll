; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lparser.c_singlevaraux.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lparser.c_singlevaraux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i64 }

@VVOID = common dso_local global i64 0, align 8
@VLOCAL = common dso_local global i64 0, align 8
@VUPVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*, %struct.TYPE_11__*, i32)* @singlevaraux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @singlevaraux(%struct.TYPE_12__* %0, i32* %1, %struct.TYPE_11__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = icmp eq %struct.TYPE_12__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = load i64, i64* @VVOID, align 8
  %16 = call i32 @init_exp(%struct.TYPE_11__* %14, i64 %15, i32 0)
  br label %64

17:                                               ; preds = %4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @searchvar(%struct.TYPE_12__* %18, i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = load i64, i64* @VLOCAL, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @init_exp(%struct.TYPE_11__* %24, i64 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @markupval(%struct.TYPE_12__* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %23
  br label %63

35:                                               ; preds = %17
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @searchupvalue(%struct.TYPE_12__* %36, i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  call void @singlevaraux(%struct.TYPE_12__* %44, i32* %45, %struct.TYPE_11__* %46, i32 0)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VVOID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %64

53:                                               ; preds = %41
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = call i32 @newupvalue(%struct.TYPE_12__* %54, i32* %55, %struct.TYPE_11__* %56)
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %53, %35
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = load i64, i64* @VUPVAL, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @init_exp(%struct.TYPE_11__* %59, i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %34
  br label %64

64:                                               ; preds = %52, %63, %13
  ret void
}

declare dso_local i32 @init_exp(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @searchvar(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @markupval(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @searchupvalue(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @newupvalue(%struct.TYPE_12__*, i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
