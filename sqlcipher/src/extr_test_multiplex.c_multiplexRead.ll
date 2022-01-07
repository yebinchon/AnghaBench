; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_multiplex.c_multiplexRead.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_multiplex.c_multiplexRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { {}* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_IOERR_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32, i32)* @multiplexRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiplexRead(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = bitcast %struct.TYPE_11__* %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %9, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %10, align 8
  %21 = load i32, i32* @SQLITE_OK, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %28 = call %struct.TYPE_11__* @multiplexSubOpen(%struct.TYPE_12__* %27, i32 0, i32* %11, i32* null, i32 0)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %12, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %30 = icmp eq %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @SQLITE_IOERR_READ, align 4
  store i32 %32, i32* %11, align 4
  br label %45

33:                                               ; preds = %26
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i32 (%struct.TYPE_11__*, i8*, i32, i32)**
  %39 = load i32 (%struct.TYPE_11__*, i8*, i32, i32)*, i32 (%struct.TYPE_11__*, i8*, i32, i32)** %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 %39(%struct.TYPE_11__* %40, i8* %41, i32 %42, i32 %43)
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %33, %31
  br label %112

46:                                               ; preds = %4
  br label %47

47:                                               ; preds = %110, %46
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %111

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %51, %54
  store i32 %55, i32* %13, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call %struct.TYPE_11__* @multiplexSubOpen(%struct.TYPE_12__* %56, i32 %57, i32* %11, i32* null, i32 1)
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %14, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %60 = icmp ne %struct.TYPE_11__* %59, null
  br i1 %60, label %61, label %108

61:                                               ; preds = %50
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = srem i32 %62, %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %66, %67
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %61
  store i32 0, i32* %15, align 4
  br label %76

76:                                               ; preds = %75, %61
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = bitcast {}** %83 to i32 (%struct.TYPE_11__*, i8*, i32, i32)**
  %85 = load i32 (%struct.TYPE_11__*, i8*, i32, i32)*, i32 (%struct.TYPE_11__*, i8*, i32, i32)** %84, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = srem i32 %89, %92
  %94 = call i32 %85(%struct.TYPE_11__* %86, i8* %87, i32 %88, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @SQLITE_OK, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %76
  br label %111

99:                                               ; preds = %76
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8* %103, i8** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %7, align 4
  br label %110

108:                                              ; preds = %50
  %109 = load i32, i32* @SQLITE_IOERR_READ, align 4
  store i32 %109, i32* %11, align 4
  br label %111

110:                                              ; preds = %99
  br label %47

111:                                              ; preds = %108, %98, %47
  br label %112

112:                                              ; preds = %111, %45
  %113 = load i32, i32* %11, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_11__* @multiplexSubOpen(%struct.TYPE_12__*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
