; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_posListPhraseMerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_posListPhraseMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@DL_POSITIONS_OFFSETS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_4__*)* @posListPhraseMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @posListPhraseMerge(i32* %0, i32* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @dlrDocid(i32* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @dlrDocid(i32* %13)
  %15 = icmp eq i64 %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DL_POSITIONS_OFFSETS, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @plrInit(i32* %7, i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @plrInit(i32* %8, i32* %27)
  br label %29

29:                                               ; preds = %81, %3
  %30 = call i32 @plrAtEnd(i32* %7)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = call i32 @plrAtEnd(i32* %8)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ false, %29 ], [ %35, %32 ]
  br i1 %37, label %38, label %82

38:                                               ; preds = %36
  %39 = call i64 @plrColumn(i32* %7)
  %40 = call i64 @plrColumn(i32* %8)
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @plrStep(i32* %7)
  br label %81

44:                                               ; preds = %38
  %45 = call i64 @plrColumn(i32* %7)
  %46 = call i64 @plrColumn(i32* %8)
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @plrStep(i32* %8)
  br label %80

50:                                               ; preds = %44
  %51 = call i64 @plrPosition(i32* %7)
  %52 = add nsw i64 %51, 1
  %53 = call i64 @plrPosition(i32* %8)
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @plrStep(i32* %7)
  br label %79

57:                                               ; preds = %50
  %58 = call i64 @plrPosition(i32* %7)
  %59 = add nsw i64 %58, 1
  %60 = call i64 @plrPosition(i32* %8)
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @plrStep(i32* %8)
  br label %78

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i64 @dlrDocid(i32* %69)
  %71 = call i32 @plwInit(i32* %9, %struct.TYPE_4__* %68, i64 %70)
  store i32 1, i32* %10, align 4
  br label %72

72:                                               ; preds = %67, %64
  %73 = call i64 @plrColumn(i32* %8)
  %74 = call i64 @plrPosition(i32* %8)
  %75 = call i32 @plwAdd(i32* %9, i64 %73, i64 %74, i32 0, i32 0)
  %76 = call i32 @plrStep(i32* %7)
  %77 = call i32 @plrStep(i32* %8)
  br label %78

78:                                               ; preds = %72, %62
  br label %79

79:                                               ; preds = %78, %55
  br label %80

80:                                               ; preds = %79, %48
  br label %81

81:                                               ; preds = %80, %42
  br label %29

82:                                               ; preds = %36
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = call i32 @plwTerminate(i32* %9)
  %87 = call i32 @plwDestroy(i32* %9)
  br label %88

88:                                               ; preds = %85, %82
  %89 = call i32 @plrDestroy(i32* %7)
  %90 = call i32 @plrDestroy(i32* %8)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @dlrDocid(i32*) #1

declare dso_local i32 @plrInit(i32*, i32*) #1

declare dso_local i32 @plrAtEnd(i32*) #1

declare dso_local i64 @plrColumn(i32*) #1

declare dso_local i32 @plrStep(i32*) #1

declare dso_local i64 @plrPosition(i32*) #1

declare dso_local i32 @plwInit(i32*, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @plwAdd(i32*, i64, i64, i32, i32) #1

declare dso_local i32 @plwTerminate(i32*) #1

declare dso_local i32 @plwDestroy(i32*) #1

declare dso_local i32 @plrDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
