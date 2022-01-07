; ModuleID = '/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-verify.c_verify_executables.c'
source_filename = "/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-verify.c_verify_executables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i32**, i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_17__ = type { i32** }

@UNIT_SOCKET = common dso_local global i64 0, align 8
@UNIT_MOUNT = common dso_local global i64 0, align 8
@UNIT_SWAP = common dso_local global i64 0, align 8
@UNIT_SERVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @verify_executables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_executables(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = call i32 @assert(%struct.TYPE_14__* %7)
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @UNIT_SOCKET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = call %struct.TYPE_16__* @SOCKET(%struct.TYPE_14__* %15)
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  br label %46

19:                                               ; preds = %1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UNIT_MOUNT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = call %struct.TYPE_13__* @MOUNT(%struct.TYPE_14__* %26)
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  br label %44

30:                                               ; preds = %19
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @UNIT_SWAP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = call %struct.TYPE_15__* @SWAP(%struct.TYPE_14__* %37)
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  br label %42

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %36
  %43 = phi i32* [ %40, %36 ], [ null, %41 ]
  br label %44

44:                                               ; preds = %42, %25
  %45 = phi i32* [ %29, %25 ], [ %43, %42 ]
  br label %46

46:                                               ; preds = %44, %14
  %47 = phi i32* [ %18, %14 ], [ %45, %44 ]
  store i32* %47, i32** %3, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @verify_executable(%struct.TYPE_14__* %48, i32* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %53, %46
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @UNIT_SERVICE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %92, %64
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %68 = call %struct.TYPE_17__* @SERVICE(%struct.TYPE_14__* %67)
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32**, i32*** %69, align 8
  %71 = call i32 @ELEMENTSOF(i32** %70)
  %72 = icmp ult i32 %66, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %65
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %76 = call %struct.TYPE_17__* @SERVICE(%struct.TYPE_14__* %75)
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @verify_executable(%struct.TYPE_14__* %74, i32* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %73
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %86, %73
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %65

95:                                               ; preds = %65
  br label %96

96:                                               ; preds = %95, %58
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @UNIT_SOCKET, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %134

102:                                              ; preds = %96
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %130, %102
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %106 = call %struct.TYPE_16__* @SOCKET(%struct.TYPE_14__* %105)
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32**, i32*** %107, align 8
  %109 = call i32 @ELEMENTSOF(i32** %108)
  %110 = icmp ult i32 %104, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %103
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %114 = call %struct.TYPE_16__* @SOCKET(%struct.TYPE_14__* %113)
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @verify_executable(%struct.TYPE_14__* %112, i32* %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %111
  %125 = load i32, i32* %4, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32, i32* %5, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %127, %124, %111
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %6, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %103

133:                                              ; preds = %103
  br label %134

134:                                              ; preds = %133, %96
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_16__* @SOCKET(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @MOUNT(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @SWAP(%struct.TYPE_14__*) #1

declare dso_local i32 @verify_executable(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @ELEMENTSOF(i32**) #1

declare dso_local %struct.TYPE_17__* @SERVICE(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
