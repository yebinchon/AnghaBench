; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_streams.c_STREAMS_insert_row.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_streams.c_STREAMS_insert_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32* }

@.str = private unnamed_addr constant [18 x i8] c"(%p, %p, %d, %d)\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, i32*, i64, i32)* @STREAMS_insert_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @STREAMS_insert_row(%struct.tagMSIVIEW* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.tagMSIVIEW*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %6, align 8
  %15 = bitcast %struct.tagMSIVIEW* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %10, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %13, align 8
  %22 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.tagMSIVIEW* %22, i32* %23, i64 %24, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @streams_find_row(%struct.TYPE_4__* %27, i32* %28, i32* null)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @ERROR_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %34, i64* %5, align 8
  br label %98

35:                                               ; preds = %4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call i32 @streams_resize_table(%struct.TYPE_5__* %38, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %43, i64* %5, align 8
  br label %98

44:                                               ; preds = %35
  %45 = load i64, i64* %8, align 8
  %46 = icmp eq i64 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64, i64* %13, align 8
  %49 = sub nsw i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i64, i64* %13, align 8
  %52 = sub nsw i64 %51, 1
  store i64 %52, i64* %11, align 8
  br label %53

53:                                               ; preds = %74, %50
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = sub nsw i64 %63, 1
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 %66, i32* %73, align 4
  br label %74

74:                                               ; preds = %57
  %75 = load i64, i64* %11, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %11, align 8
  br label %53

77:                                               ; preds = %53
  %78 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %6, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = shl i32 1, %83
  %85 = sub nsw i32 %84, 1
  %86 = call i64 @STREAMS_set_row(%struct.tagMSIVIEW* %78, i64 %79, i32* %80, i32 %85)
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* @ERROR_SUCCESS, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %77
  %91 = load i64, i64* %13, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i64 %91, i64* %95, align 8
  br label %96

96:                                               ; preds = %90, %77
  %97 = load i64, i64* %12, align 8
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %96, %42, %33
  %99 = load i64, i64* %5, align 8
  ret i64 %99
}

declare dso_local i32 @TRACE(i8*, %struct.tagMSIVIEW*, i32*, i64, i32) #1

declare dso_local i64 @streams_find_row(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @streams_resize_table(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @STREAMS_set_row(%struct.tagMSIVIEW*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
