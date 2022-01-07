; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fuzzer.c_fuzzerNext.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fuzzer.c_fuzzerNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_14__* }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fuzzerNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuzzerNext(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %6, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %72

22:                                               ; preds = %1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 4
  %28 = call i32 @fuzzerRender(%struct.TYPE_14__* %23, i32* %25, i32* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SQLITE_NOMEM, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %33, i32* %2, align 4
  br label %143

34:                                               ; preds = %22
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.TYPE_14__* @fuzzerNewStem(%struct.TYPE_15__* %35, i32 %38, i64 %41)
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %7, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = icmp ne %struct.TYPE_14__* %43, null
  br i1 %44, label %45, label %69

45:                                               ; preds = %34
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = call i32 @fuzzerAdvance(%struct.TYPE_15__* %46, %struct.TYPE_14__* %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %58, align 8
  br label %68

59:                                               ; preds = %45
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %62 = call %struct.TYPE_14__* @fuzzerInsert(%struct.TYPE_15__* %60, %struct.TYPE_14__* %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = icmp eq %struct.TYPE_14__* %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @SQLITE_OK, align 4
  store i32 %66, i32* %2, align 4
  br label %143

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %50
  br label %71

69:                                               ; preds = %34
  %70 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %70, i32* %2, align 4
  br label %143

71:                                               ; preds = %68
  br label %72

72:                                               ; preds = %71, %1
  br label %73

73:                                               ; preds = %138, %104, %72
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  store %struct.TYPE_14__* %76, %struct.TYPE_14__** %6, align 8
  %77 = icmp ne %struct.TYPE_14__* %76, null
  br i1 %77, label %78, label %139

78:                                               ; preds = %73
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = call i32 @fuzzerAdvance(%struct.TYPE_15__* %79, %struct.TYPE_14__* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %85, i32* %2, align 4
  br label %143

86:                                               ; preds = %78
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %86
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %91, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %94 = call %struct.TYPE_14__* @fuzzerInsert(%struct.TYPE_15__* %92, %struct.TYPE_14__* %93)
  store %struct.TYPE_14__* %94, %struct.TYPE_14__** %6, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = call i32 @fuzzerSeen(%struct.TYPE_15__* %95, %struct.TYPE_14__* %96)
  store i32 %97, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %89
  %100 = load i32, i32* %5, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %103, i32* %2, align 4
  br label %143

104:                                              ; preds = %99
  br label %73

105:                                              ; preds = %89
  %106 = load i32, i32* @SQLITE_OK, align 4
  store i32 %106, i32* %2, align 4
  br label %143

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %110, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %115, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  store %struct.TYPE_14__* %116, %struct.TYPE_14__** %118, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %120 = call i64 @fuzzerLowestCostStem(%struct.TYPE_15__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %108
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = call i32 @fuzzerSeen(%struct.TYPE_15__* %123, %struct.TYPE_14__* %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %131, i32* %2, align 4
  br label %143

132:                                              ; preds = %122
  %133 = load i32, i32* %5, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* @SQLITE_OK, align 4
  store i32 %136, i32* %2, align 4
  br label %143

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %137, %108
  br label %73

139:                                              ; preds = %73
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  store i64 0, i64* %141, align 8
  %142 = load i32, i32* @SQLITE_OK, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %139, %135, %130, %105, %102, %84, %69, %65, %32
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @fuzzerRender(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @fuzzerNewStem(%struct.TYPE_15__*, i32, i64) #1

declare dso_local i32 @fuzzerAdvance(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @fuzzerInsert(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @fuzzerSeen(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i64 @fuzzerLowestCostStem(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
