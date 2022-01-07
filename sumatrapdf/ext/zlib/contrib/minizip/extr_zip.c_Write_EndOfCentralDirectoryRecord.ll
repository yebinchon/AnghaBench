; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/zlib/contrib/minizip/extr_zip.c_Write_EndOfCentralDirectoryRecord.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/zlib/contrib/minizip/extr_zip.c_Write_EndOfCentralDirectoryRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ZIP_OK = common dso_local global i32 0, align 4
@ENDHEADERMAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Write_EndOfCentralDirectoryRecord(%struct.TYPE_3__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @ZIP_OK, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* @ENDHEADERMAGIC, align 8
  %16 = call i32 @zip64local_putValue(i32* %11, i32 %14, i64 %15, i32 4)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @ZIP_OK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @zip64local_putValue(i32* %22, i32 %25, i64 0, i32 2)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %20, %3
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ZIP_OK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @zip64local_putValue(i32* %33, i32 %36, i64 0, i32 2)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %31, %27
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @ZIP_OK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 65535
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @zip64local_putValue(i32* %49, i32 %52, i64 65535, i32 2)
  store i32 %53, i32* %7, align 4
  br label %65

54:                                               ; preds = %42
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = call i32 @zip64local_putValue(i32* %56, i32 %59, i64 %63, i32 2)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %54, %47
  br label %66

66:                                               ; preds = %65, %38
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @ZIP_OK, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %66
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %73, 65535
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @zip64local_putValue(i32* %77, i32 %80, i64 65535, i32 2)
  store i32 %81, i32* %7, align 4
  br label %93

82:                                               ; preds = %70
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = call i32 @zip64local_putValue(i32* %84, i32 %87, i64 %91, i32 2)
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %82, %75
  br label %94

94:                                               ; preds = %93, %66
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @ZIP_OK, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @zip64local_putValue(i32* %100, i32 %103, i64 %104, i32 4)
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %98, %94
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @ZIP_OK, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %139

110:                                              ; preds = %106
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %111, %114
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp uge i32 %116, -1
  br i1 %117, label %118, label %125

118:                                              ; preds = %110
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @zip64local_putValue(i32* %120, i32 %123, i64 4294967295, i32 4)
  store i32 %124, i32* %7, align 4
  br label %138

125:                                              ; preds = %110
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %131, %134
  %136 = sext i32 %135 to i64
  %137 = call i32 @zip64local_putValue(i32* %127, i32 %130, i64 %136, i32 4)
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %125, %118
  br label %139

139:                                              ; preds = %138, %106
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local i32 @zip64local_putValue(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
