; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_load_CMAP_format12_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_load_CMAP_format12_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@CMAP_TAG = common dso_local global i32 0, align 4
@GDI_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Loaded cmap table of %i bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32, %struct.TYPE_12__*)* @load_CMAP_format12_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @load_CMAP_format12_table(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = icmp ne %struct.TYPE_13__* %12, null
  br i1 %13, label %37, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CMAP_TAG, align 4
  %17 = call i32 @GetFontData(i32 %15, i32 %16, i32 0, %struct.TYPE_13__* null, i32 0)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GDI_ERROR, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.TYPE_13__* @heap_alloc(i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @CMAP_TAG, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @GetFontData(i32 %26, i32 %27, i32 0, %struct.TYPE_13__* %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %36

35:                                               ; preds = %14
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %98

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %6, align 8
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %94, %37
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @GET_BE_WORD(i32 %45)
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %97

48:                                               ; preds = %41
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @GET_BE_WORD(i32 %56)
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %93

59:                                               ; preds = %48
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @GET_BE_WORD(i32 %67)
  %69 = icmp eq i32 %68, 10
  br i1 %69, label %70, label %93

70:                                               ; preds = %59
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = bitcast %struct.TYPE_13__* %71 to i32*
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @GET_BE_DWORD(i32 %80)
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %72, i64 %82
  %84 = bitcast i32* %83 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %9, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @GET_BE_WORD(i32 %87)
  %89 = icmp eq i32 %88, 12
  br i1 %89, label %90, label %92

90:                                               ; preds = %70
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %3, align 8
  br label %98

92:                                               ; preds = %70
  br label %93

93:                                               ; preds = %92, %59, %48
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %41

97:                                               ; preds = %41
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %98

98:                                               ; preds = %97, %90, %35
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %99
}

declare dso_local i32 @GetFontData(i32, i32, i32, %struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_13__* @heap_alloc(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @GET_BE_WORD(i32) #1

declare dso_local i32 @GET_BE_DWORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
