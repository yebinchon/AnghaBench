; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_fetch_int.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_fetch_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64 }

@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Stuffed up %d >= %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%p %p\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@LONG_STR_BYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"oops! what is %d bytes per column?\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, i64, i64, i64*)* @TABLE_fetch_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @TABLE_fetch_int(%struct.tagMSIVIEW* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.tagMSIVIEW*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %6, align 8
  %14 = bitcast %struct.tagMSIVIEW* %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %10, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %20, i64* %5, align 8
  br label %119

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %21
  %31 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %31, i64* %5, align 8
  br label %119

32:                                               ; preds = %24
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %33, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  store i64 %41, i64* %5, align 8
  br label %119

42:                                               ; preds = %32
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = sub nsw i64 %46, 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %42
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = sub nsw i64 %59, 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %63, i64 %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %69 = ptrtoint %struct.TYPE_5__* %68 to i64
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %69, %struct.TYPE_6__* %72)
  %74 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %74, i64* %5, align 8
  br label %119

75:                                               ; preds = %42
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = sub nsw i64 %82, 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = load i32, i32* @LONG_STR_BYTES, align 4
  %86 = call i64 @bytes_per_column(i32 %78, %struct.TYPE_6__* %84, i32 %85)
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = icmp ne i64 %87, 2
  br i1 %88, label %89, label %99

89:                                               ; preds = %75
  %90 = load i64, i64* %12, align 8
  %91 = icmp ne i64 %90, 3
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i64, i64* %12, align 8
  %94 = icmp ne i64 %93, 4
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i64, i64* %12, align 8
  %97 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %96)
  %98 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %98, i64* %5, align 8
  br label %119

99:                                               ; preds = %92, %89, %75
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = sub nsw i64 %103, 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %11, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i64 @read_table_int(i32 %112, i64 %113, i64 %114, i64 %115)
  %117 = load i64*, i64** %9, align 8
  store i64 %116, i64* %117, align 8
  %118 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %99, %95, %55, %40, %30, %19
  %120 = load i64, i64* %5, align 8
  ret i64 %120
}

declare dso_local i32 @ERR(i8*, i64, ...) #1

declare dso_local i64 @bytes_per_column(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @read_table_int(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
