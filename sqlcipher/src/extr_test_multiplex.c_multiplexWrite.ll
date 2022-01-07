; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_multiplex.c_multiplexWrite.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_multiplex.c_multiplexWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { {}* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_IOERR_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32, i32)* @multiplexWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiplexWrite(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %32 = load i32, i32* @SQLITE_IOERR_WRITE, align 4
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
  br label %111

46:                                               ; preds = %4
  br label %47

47:                                               ; preds = %109, %46
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @SQLITE_OK, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = icmp sgt i32 %52, 0
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi i1 [ false, %47 ], [ %53, %51 ]
  br i1 %55, label %56, label %110

56:                                               ; preds = %54
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %57, %60
  store i32 %61, i32* %13, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call %struct.TYPE_11__* @multiplexSubOpen(%struct.TYPE_12__* %62, i32 %63, i32* %11, i32* null, i32 1)
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %14, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %66 = icmp ne %struct.TYPE_11__* %65, null
  br i1 %66, label %67, label %109

67:                                               ; preds = %56
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = srem i32 %68, %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %72, %73
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %74, %77
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  store i32 0, i32* %15, align 4
  br label %82

82:                                               ; preds = %81, %67
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = bitcast {}** %89 to i32 (%struct.TYPE_11__*, i8*, i32, i32)**
  %91 = load i32 (%struct.TYPE_11__*, i8*, i32, i32)*, i32 (%struct.TYPE_11__*, i8*, i32, i32)** %90, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = srem i32 %95, %98
  %100 = call i32 %91(%struct.TYPE_11__* %92, i8* %93, i32 %94, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  store i8* %104, i8** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %82, %56
  br label %47

110:                                              ; preds = %54
  br label %111

111:                                              ; preds = %110, %45
  %112 = load i32, i32* %11, align 4
  ret i32 %112
}

declare dso_local %struct.TYPE_11__* @multiplexSubOpen(%struct.TYPE_12__*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
