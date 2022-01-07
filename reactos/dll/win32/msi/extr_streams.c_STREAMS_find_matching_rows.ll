; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_streams.c_STREAMS_find_matching_rows.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_streams.c_STREAMS_find_matching_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"(%p, %d, %d, %p, %p)\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, i64, i64, i64*, i32*)* @STREAMS_find_matching_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @STREAMS_find_matching_rows(%struct.tagMSIVIEW* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.tagMSIVIEW*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i64, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %7, align 8
  %15 = bitcast %struct.tagMSIVIEW* %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %12, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @PtrToUlong(i32 %17)
  store i64 %18, i64* %13, align 8
  %19 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64*, i64** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.tagMSIVIEW* %19, i64 %20, i64 %21, i64* %22, i32* %23)
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %5
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %5
  %34 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %34, i64* %6, align 8
  br label %78

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %59, %35
  %37 = load i64, i64* %13, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %37, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %36
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i64, i64* %13, align 8
  %58 = load i64*, i64** %10, align 8
  store i64 %57, i64* %58, align 8
  br label %62

59:                                               ; preds = %44
  %60 = load i64, i64* %13, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %13, align 8
  br label %36

62:                                               ; preds = %56, %36
  %63 = load i64, i64* %13, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %13, align 8
  %65 = call i32 @UlongToPtr(i64 %64)
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i64, i64* %13, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %67, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  store i64 %75, i64* %6, align 8
  br label %78

76:                                               ; preds = %62
  %77 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %76, %74, %33
  %79 = load i64, i64* %6, align 8
  ret i64 %79
}

declare dso_local i64 @PtrToUlong(i32) #1

declare dso_local i32 @TRACE(i8*, %struct.tagMSIVIEW*, i64, i64, i64*, i32*) #1

declare dso_local i32 @UlongToPtr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
