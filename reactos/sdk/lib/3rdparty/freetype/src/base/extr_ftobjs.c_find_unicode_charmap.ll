; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/base/extr_ftobjs.c_find_unicode_charmap.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/base/extr_ftobjs.c_find_unicode_charmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64, i64, i64 }

@Invalid_CharMap_Handle = common dso_local global i32 0, align 4
@FT_ENCODING_UNICODE = common dso_local global i64 0, align 8
@TT_PLATFORM_MICROSOFT = common dso_local global i64 0, align 8
@TT_MS_ID_UCS_4 = common dso_local global i64 0, align 8
@TT_PLATFORM_APPLE_UNICODE = common dso_local global i64 0, align 8
@TT_APPLE_ID_UNICODE_32 = common dso_local global i64 0, align 8
@FT_Err_Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @find_unicode_charmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_unicode_charmap(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = call i32 @FT_ASSERT(%struct.TYPE_5__* %6)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  store %struct.TYPE_6__** %10, %struct.TYPE_6__*** %4, align 8
  %11 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %12 = icmp ne %struct.TYPE_6__** %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @Invalid_CharMap_Handle, align 4
  %15 = call i32 @FT_THROW(i32 %14)
  store i32 %15, i32* %2, align 4
  br label %108

16:                                               ; preds = %1
  %17 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %17, i64 %21
  store %struct.TYPE_6__** %22, %struct.TYPE_6__*** %5, align 8
  br label %23

23:                                               ; preds = %76, %16
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i32 -1
  store %struct.TYPE_6__** %25, %struct.TYPE_6__*** %5, align 8
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %27 = icmp uge %struct.TYPE_6__** %25, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %23
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FT_ENCODING_UNICODE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %76

36:                                               ; preds = %28
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TT_PLATFORM_MICROSOFT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %45, i64 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TT_MS_ID_UCS_4, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %68, label %52

52:                                               ; preds = %44, %36
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %53, i64 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TT_PLATFORM_APPLE_UNICODE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %52
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %61, i64 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TT_APPLE_ID_UNICODE_32, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %60, %44
  %69 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %69, i64 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %73, align 8
  %74 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %74, i32* %2, align 4
  br label %108

75:                                               ; preds = %60, %52
  br label %76

76:                                               ; preds = %75, %28
  br label %23

77:                                               ; preds = %23
  %78 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %78, i64 %82
  store %struct.TYPE_6__** %83, %struct.TYPE_6__*** %5, align 8
  br label %84

84:                                               ; preds = %104, %77
  %85 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %85, i32 -1
  store %struct.TYPE_6__** %86, %struct.TYPE_6__*** %5, align 8
  %87 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %88 = icmp uge %struct.TYPE_6__** %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %84
  %90 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %90, i64 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @FT_ENCODING_UNICODE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %89
  %98 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %98, i64 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %102, align 8
  %103 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %103, i32* %2, align 4
  br label %108

104:                                              ; preds = %89
  br label %84

105:                                              ; preds = %84
  %106 = load i32, i32* @Invalid_CharMap_Handle, align 4
  %107 = call i32 @FT_THROW(i32 %106)
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %105, %97, %68, %13
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @FT_ASSERT(%struct.TYPE_5__*) #1

declare dso_local i32 @FT_THROW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
