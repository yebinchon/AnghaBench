; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_fold.c_foldAdjustVisual.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_fold.c_foldAdjustVisual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }

@VIsual_active = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_8__* null, align 8
@VIsual = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@p_sel = common dso_local global i8* null, align 8
@has_mbyte = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foldAdjustVisual() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @VIsual_active, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curwin, align 8
  %8 = call i32 @hasAnyFolding(%struct.TYPE_8__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %0
  br label %72

11:                                               ; preds = %6
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curwin, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* getelementptr inbounds ({ i64, i32 }, { i64, i32 }* bitcast (%struct.TYPE_7__* @VIsual to { i64, i32 }*), i32 0, i32 0), align 8
  %15 = load i32, i32* getelementptr inbounds ({ i64, i32 }, { i64, i32 }* bitcast (%struct.TYPE_7__* @VIsual to { i64, i32 }*), i32 0, i32 1), align 8
  %16 = bitcast %struct.TYPE_7__* %13 to { i64, i32 }*
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @ltoreq(i64 %14, i32 %15, i64 %18, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  store %struct.TYPE_7__* @VIsual, %struct.TYPE_7__** %1, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curwin, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %2, align 8
  br label %29

26:                                               ; preds = %11
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curwin, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %1, align 8
  store %struct.TYPE_7__* @VIsual, %struct.TYPE_7__** %2, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = call i64 @hasFolding(i32 %32, i32* %34, i32* null)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %29
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = call i64 @hasFolding(i32 %43, i32* null, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %40
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32* @ml_get(i32 %51)
  store i32* %52, i32** %3, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = call i64 @STRLEN(i32* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %48
  %62 = load i8*, i8** @p_sel, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 111
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, -1
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %66, %61, %48
  br label %72

72:                                               ; preds = %10, %71, %40
  ret void
}

declare dso_local i32 @hasAnyFolding(%struct.TYPE_8__*) #1

declare dso_local i64 @ltoreq(i64, i32, i64, i32) #1

declare dso_local i64 @hasFolding(i32, i32*, i32*) #1

declare dso_local i32* @ml_get(i32) #1

declare dso_local i64 @STRLEN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
