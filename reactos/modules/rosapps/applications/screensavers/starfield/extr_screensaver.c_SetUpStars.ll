; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/starfield/extr_screensaver.c_SetUpStars.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/starfield/extr_screensaver.c_SetUpStars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }

@MAX_STARS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Too many stars! Aborting!\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONWARNING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@stars = common dso_local global %struct.TYPE_4__* null, align 8
@m_nTotStars = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to allocate memory! Aborting!\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetUpStars(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAX_STARS, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = call i32 @_T(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @MB_OK, align 4
  %12 = load i32, i32* @MB_ICONWARNING, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @MessageBox(i32 0, i32 %9, i32 %10, i32 %13)
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %2, align 4
  br label %102

16:                                               ; preds = %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stars, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stars, align 8
  %21 = call i32 @free(%struct.TYPE_4__* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %3, align 4
  store i32 %23, i32* @m_nTotStars, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = call i64 @malloc(i32 %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** @stars, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stars, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %22
  %33 = call i32 @_T(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @MB_OK, align 4
  %36 = load i32, i32* @MB_ICONWARNING, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @MessageBox(i32 0, i32 %33, i32 %34, i32 %37)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %2, align 4
  br label %102

40:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %97, %40
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @m_nTotStars, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %100

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %94, %45
  %47 = call i8* @RANDOM(i32 -320, i32 320)
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stars, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i64 %48, i64* %53, align 8
  %54 = call i8* @RANDOM(i32 -200, i32 200)
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stars, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i64 %55, i64* %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stars, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i32 %62, i32* %67, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stars, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  store i32 -1, i32* %72, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stars, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  store i32 -1, i32* %77, align 8
  br label %78

78:                                               ; preds = %46
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stars, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %78
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stars, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br label %94

94:                                               ; preds = %86, %78
  %95 = phi i1 [ true, %78 ], [ %93, %86 ]
  br i1 %95, label %46, label %96

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %41

100:                                              ; preds = %41
  %101 = load i32, i32* @TRUE, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %32, %8
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @MessageBox(i32, i32, i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @RANDOM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
