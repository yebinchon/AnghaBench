; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_sd-journal.c_next_beyond_location.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_sd-journal.c_next_beyond_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, %struct.TYPE_14__, i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@LOCATION_TAIL = common dso_local global i64 0, align 8
@LOCATION_SEEK = common dso_local global i64 0, align 8
@LOCATION_DISCRETE = common dso_local global i64 0, align 8
@DIRECTION_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_16__*, i32)* @next_beyond_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_beyond_location(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = call i32 @assert(%struct.TYPE_16__* %14)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = call i32 @assert(%struct.TYPE_16__* %16)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le64toh(i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %3
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LOCATION_TAIL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %139

42:                                               ; preds = %35, %29, %3
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %42
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %51
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @LOCATION_SEEK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @next_with_matches(%struct.TYPE_16__* %63, %struct.TYPE_16__* %64, i32 %65, i32** %8, i64* %9)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %139

71:                                               ; preds = %62
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @journal_file_save_location(%struct.TYPE_16__* %72, i32* %73, i64 %74)
  br label %76

76:                                               ; preds = %71, %56
  br label %94

77:                                               ; preds = %51, %42
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @find_location_with_matches(%struct.TYPE_16__* %81, %struct.TYPE_16__* %82, i32 %83, i32** %8, i64* %9)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %4, align 4
  br label %139

89:                                               ; preds = %77
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @journal_file_save_location(%struct.TYPE_16__* %90, i32* %91, i64 %92)
  br label %94

94:                                               ; preds = %89, %76
  br label %95

95:                                               ; preds = %134, %94
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @LOCATION_DISCRETE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %95
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 3
  %106 = call i32 @compare_with_location(%struct.TYPE_16__* %103, %struct.TYPE_14__* %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @DIRECTION_DOWN, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = load i32, i32* %13, align 4
  %112 = icmp sgt i32 %111, 0
  %113 = zext i1 %112 to i32
  br label %118

114:                                              ; preds = %102
  %115 = load i32, i32* %13, align 4
  %116 = icmp slt i32 %115, 0
  %117 = zext i1 %116 to i32
  br label %118

118:                                              ; preds = %114, %110
  %119 = phi i32 [ %113, %110 ], [ %117, %114 ]
  store i32 %119, i32* %12, align 4
  br label %121

120:                                              ; preds = %95
  store i32 1, i32* %12, align 4
  br label %121

121:                                              ; preds = %120, %118
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 1, i32* %4, align 4
  br label %139

125:                                              ; preds = %121
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @next_with_matches(%struct.TYPE_16__* %126, %struct.TYPE_16__* %127, i32 %128, i32** %8, i64* %9)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp sle i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %4, align 4
  br label %139

134:                                              ; preds = %125
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = load i64, i64* %9, align 8
  %138 = call i32 @journal_file_save_location(%struct.TYPE_16__* %135, i32* %136, i64 %137)
  br label %95

139:                                              ; preds = %132, %124, %87, %69, %41
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local i64 @le64toh(i32) #1

declare dso_local i32 @next_with_matches(%struct.TYPE_16__*, %struct.TYPE_16__*, i32, i32**, i64*) #1

declare dso_local i32 @journal_file_save_location(%struct.TYPE_16__*, i32*, i64) #1

declare dso_local i32 @find_location_with_matches(%struct.TYPE_16__*, %struct.TYPE_16__*, i32, i32**, i64*) #1

declare dso_local i32 @compare_with_location(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
