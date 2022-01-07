; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_DataCache_CreateEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_DataCache_CreateEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@CACHE_S_FORMATETC_NOTSUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"creating unsupported format %d\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, %struct.TYPE_12__*, i32, i64, %struct.TYPE_13__**)* @DataCache_CreateEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DataCache_CreateEntry(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1, i32 %2, i64 %3, %struct.TYPE_13__** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_13__** %4, %struct.TYPE_13__*** %11, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %22

18:                                               ; preds = %5
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  br label %22

22:                                               ; preds = %18, %17
  %23 = phi i32 [ 1, %17 ], [ %21, %18 ]
  store i32 %23, i32* %13, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = call i64 @check_valid_formatetc(%struct.TYPE_12__* %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = call i64 @FAILED(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i64, i64* %12, align 8
  store i64 %30, i64* %6, align 8
  br label %87

31:                                               ; preds = %22
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @CACHE_S_FORMATETC_NOTSUPPORTED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %31
  %41 = call i32 (...) @GetProcessHeap()
  %42 = call %struct.TYPE_13__* @HeapAlloc(i32 %41, i32 0, i32 4)
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %14, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %44 = icmp ne %struct.TYPE_13__* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %46, i64* %6, align 8
  br label %87

47:                                               ; preds = %40
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @init_cache_entry(%struct.TYPE_13__* %48, %struct.TYPE_12__* %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %82

55:                                               ; preds = %47
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = call i32 @list_add_head(i32* %60, i32* %62)
  br label %74

64:                                               ; preds = %55
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = call i32 @list_add_tail(i32* %66, i32* %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %64, %58
  %75 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %76 = icmp ne %struct.TYPE_13__** %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %79 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %79, align 8
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i64, i64* %12, align 8
  store i64 %81, i64* %6, align 8
  br label %87

82:                                               ; preds = %54
  %83 = call i32 (...) @GetProcessHeap()
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %85 = call i32 @HeapFree(i32 %83, i32 0, %struct.TYPE_13__* %84)
  %86 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %86, i64* %6, align 8
  br label %87

87:                                               ; preds = %82, %80, %45, %29
  %88 = load i64, i64* %6, align 8
  ret i64 %88
}

declare dso_local i64 @check_valid_formatetc(%struct.TYPE_12__*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local %struct.TYPE_13__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @init_cache_entry(%struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
