; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_posListCmp.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_posListCmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@DL_DOCIDS = common dso_local global i64 0, align 8
@DL_POSITIONS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_9__*)* @posListCmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @posListCmp(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DL_DOCIDS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %100

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = call i64 @plrAtEnd(%struct.TYPE_9__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = call i64 @plrAtEnd(%struct.TYPE_9__* %26)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 0, i32 1
  store i32 %30, i32* %3, align 4
  br label %100

31:                                               ; preds = %21
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = call i64 @plrAtEnd(%struct.TYPE_9__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %100

36:                                               ; preds = %31
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = call i64 @plrColumn(%struct.TYPE_9__* %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = call i64 @plrColumn(%struct.TYPE_9__* %39)
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %100

43:                                               ; preds = %36
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = call i64 @plrColumn(%struct.TYPE_9__* %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = call i64 @plrColumn(%struct.TYPE_9__* %46)
  %48 = icmp sgt i64 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %100

50:                                               ; preds = %43
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = call i64 @plrPosition(%struct.TYPE_9__* %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = call i64 @plrPosition(%struct.TYPE_9__* %53)
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 -1, i32* %3, align 4
  br label %100

57:                                               ; preds = %50
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = call i64 @plrPosition(%struct.TYPE_9__* %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = call i64 @plrPosition(%struct.TYPE_9__* %60)
  %62 = icmp sgt i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %100

64:                                               ; preds = %57
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DL_POSITIONS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %100

71:                                               ; preds = %64
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = call i64 @plrStartOffset(%struct.TYPE_9__* %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = call i64 @plrStartOffset(%struct.TYPE_9__* %74)
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 -1, i32* %3, align 4
  br label %100

78:                                               ; preds = %71
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = call i64 @plrStartOffset(%struct.TYPE_9__* %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = call i64 @plrStartOffset(%struct.TYPE_9__* %81)
  %83 = icmp sgt i64 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %100

85:                                               ; preds = %78
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = call i64 @plrEndOffset(%struct.TYPE_9__* %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = call i64 @plrEndOffset(%struct.TYPE_9__* %88)
  %90 = icmp slt i64 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 -1, i32* %3, align 4
  br label %100

92:                                               ; preds = %85
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = call i64 @plrEndOffset(%struct.TYPE_9__* %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = call i64 @plrEndOffset(%struct.TYPE_9__* %95)
  %97 = icmp sgt i64 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 1, i32* %3, align 4
  br label %100

99:                                               ; preds = %92
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %98, %91, %84, %77, %70, %63, %56, %49, %42, %35, %25, %20
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @plrAtEnd(%struct.TYPE_9__*) #1

declare dso_local i64 @plrColumn(%struct.TYPE_9__*) #1

declare dso_local i64 @plrPosition(%struct.TYPE_9__*) #1

declare dso_local i64 @plrStartOffset(%struct.TYPE_9__*) #1

declare dso_local i64 @plrEndOffset(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
