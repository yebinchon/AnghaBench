; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_multiplex.c_multiplexTruncate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_multiplex.c_multiplexTruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { {}* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_IOERR_TRUNCATE = common dso_local global i32 0, align 4
@gMultiplex = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @multiplexTruncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiplexTruncate(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = bitcast %struct.TYPE_15__* %13 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %5, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %6, align 8
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = call %struct.TYPE_15__* @multiplexSubOpen(%struct.TYPE_16__* %24, i32 0, i32* %7, i32* null, i32 0)
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %8, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %27 = icmp eq %struct.TYPE_15__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @SQLITE_IOERR_TRUNCATE, align 4
  store i32 %29, i32* %7, align 4
  br label %40

30:                                               ; preds = %23
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.TYPE_15__*, i32)**
  %36 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %35, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 %36(%struct.TYPE_15__* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %30, %28
  br label %123

41:                                               ; preds = %2
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sdiv i32 %42, %45
  store i32 %46, i32* %10, align 4
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gMultiplex, i32 0, i32 0), align 8
  store i32* %47, i32** %12, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %89, %41
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SQLITE_OK, align 4
  %59 = icmp eq i32 %57, %58
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ false, %52 ], [ %59, %56 ]
  br i1 %61, label %62, label %92

62:                                               ; preds = %60
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @multiplexSubClose(%struct.TYPE_16__* %68, i32 %69, i32* %70)
  br label %88

72:                                               ; preds = %62
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call %struct.TYPE_15__* @multiplexSubOpen(%struct.TYPE_16__* %73, i32 %74, i32* %7, i32* null, i32 0)
  store %struct.TYPE_15__* %75, %struct.TYPE_15__** %11, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %77 = icmp ne %struct.TYPE_15__* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = bitcast {}** %82 to i32 (%struct.TYPE_15__*, i32)**
  %84 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %83, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %86 = call i32 %84(%struct.TYPE_15__* %85, i32 0)
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %78, %72
  br label %88

88:                                               ; preds = %87, %67
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %9, align 4
  br label %52

92:                                               ; preds = %60
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @SQLITE_OK, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call %struct.TYPE_15__* @multiplexSubOpen(%struct.TYPE_16__* %97, i32 %98, i32* %7, i32* null, i32 0)
  store %struct.TYPE_15__* %99, %struct.TYPE_15__** %11, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %101 = icmp ne %struct.TYPE_15__* %100, null
  br i1 %101, label %102, label %116

102:                                              ; preds = %96
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = bitcast {}** %106 to i32 (%struct.TYPE_15__*, i32)**
  %108 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %107, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = srem i32 %110, %113
  %115 = call i32 %108(%struct.TYPE_15__* %109, i32 %114)
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %102, %96
  br label %117

117:                                              ; preds = %116, %92
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, i32* @SQLITE_IOERR_TRUNCATE, align 4
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %120, %117
  br label %123

123:                                              ; preds = %122, %40
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local %struct.TYPE_15__* @multiplexSubOpen(%struct.TYPE_16__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @multiplexSubClose(%struct.TYPE_16__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
