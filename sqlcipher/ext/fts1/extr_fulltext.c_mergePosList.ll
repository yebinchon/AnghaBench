; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_mergePosList.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_mergePosList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64 }

@DL_POSITIONS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32*)* @mergePosList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mergePosList(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @readPosition(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = call i32 @readPosition(i32* %13)
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %82, %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, -1
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ true, %15 ], [ %20, %18 ]
  br i1 %22, label %23, label %83

23:                                               ; preds = %21
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %24, %27
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @docListAddDocid(%struct.TYPE_7__* %37, i32 %38)
  store i32 1, i32* %9, align 4
  br label %40

40:                                               ; preds = %34, %31
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DL_POSITIONS, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @docListAddPos(%struct.TYPE_7__* %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %40
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @readPosition(i32* %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = call i32 @readPosition(i32* %58)
  store i32 %59, i32* %8, align 4
  br label %82

60:                                               ; preds = %23
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %74, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %67, %70
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66, %60
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @readPosition(i32* %75)
  store i32 %76, i32* %7, align 4
  br label %81

77:                                               ; preds = %66, %63
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = call i32 @readPosition(i32* %79)
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %77, %74
  br label %82

82:                                               ; preds = %81, %54
  br label %15

83:                                               ; preds = %21
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @DL_POSITIONS, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = call i32 @docListAddEndPos(%struct.TYPE_7__* %97)
  br label %99

99:                                               ; preds = %94, %91, %83
  ret void
}

declare dso_local i32 @readPosition(i32*) #1

declare dso_local i32 @docListAddDocid(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @docListAddPos(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @docListAddEndPos(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
