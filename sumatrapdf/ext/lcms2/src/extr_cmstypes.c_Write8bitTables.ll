; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Write8bitTables.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Write8bitTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@cmsERROR_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"LUT8 needs 256 entries on prelinearization\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, %struct.TYPE_5__*)* @Write8bitTables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Write8bitTables(i32 %0, i32* %1, i64 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  store i64 0, i64* %11, align 8
  br label %13

13:                                               ; preds = %120, %4
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %123

17:                                               ; preds = %13
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %119

20:                                               ; preds = %17
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %23, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %72

30:                                               ; preds = %20
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %32, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %33, i64 %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %30
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %45, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 65535
  br i1 %53, label %54, label %72

54:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %68, %54
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 256
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = call i32 @_cmsWriteUInt8Number(i32 %59, i32* %60, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %5, align 4
  br label %125

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %55

71:                                               ; preds = %55
  br label %118

72:                                               ; preds = %42, %30, %20
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %74, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %75, i64 %76
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 256
  br i1 %81, label %82, label %87

82:                                               ; preds = %72
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @cmsERROR_RANGE, align 4
  %85 = call i32 @cmsSignalError(i32 %83, i32 %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %5, align 4
  br label %125

87:                                               ; preds = %72
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %113, %87
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 256
  br i1 %90, label %91, label %116

91:                                               ; preds = %88
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %93, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %94, i64 %95
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @FROM_16_TO_8(i32 %103)
  store i64 %104, i64* %12, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = load i64, i64* %12, align 8
  %108 = call i32 @_cmsWriteUInt8Number(i32 %105, i32* %106, i64 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %91
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %5, align 4
  br label %125

112:                                              ; preds = %91
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %88

116:                                              ; preds = %88
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117, %71
  br label %119

119:                                              ; preds = %118, %17
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %11, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %11, align 8
  br label %13

123:                                              ; preds = %13
  %124 = load i32, i32* @TRUE, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %110, %82, %65
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @_cmsWriteUInt8Number(i32, i32*, i64) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*) #1

declare dso_local i64 @FROM_16_TO_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
