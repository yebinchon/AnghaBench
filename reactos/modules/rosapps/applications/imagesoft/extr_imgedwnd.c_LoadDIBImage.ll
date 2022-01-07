; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_imgedwnd.c_LoadDIBImage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_imgedwnd.c_LoadDIBImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_SEQUENTIAL_SCAN = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"BM\00", align 1
@ProcessHeap = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*)* @LoadDIBImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LoadDIBImage(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %9, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GENERIC_READ, align 4
  %19 = load i32, i32* @FILE_SHARE_READ, align 4
  %20 = load i32, i32* @OPEN_EXISTING, align 4
  %21 = load i32, i32* @FILE_FLAG_SEQUENTIAL_SCAN, align 4
  %22 = call i64 @CreateFile(i32 %17, i32 %18, i32 %19, i32* null, i32 %20, i32 %21, i32* null)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %2, align 8
  br label %122

28:                                               ; preds = %1
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @ReadFile(i64 %29, %struct.TYPE_14__* %4, i32 16, i32* %7, i32* null)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %112

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %35, 16
  br i1 %36, label %37, label %112

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* bitcast ([3 x i8]* @.str to i64*), align 1
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %112

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = sub i64 %45, 16
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* @ProcessHeap, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call %struct.TYPE_14__* @HeapAlloc(i32 %48, i32 0, i32 %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 4
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = icmp ne %struct.TYPE_14__* %55, null
  br i1 %56, label %57, label %111

57:                                               ; preds = %42
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @ReadFile(i64 %58, %struct.TYPE_14__* %61, i32 %62, i32* %7, i32* null)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %110

66:                                               ; preds = %57
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %110

70:                                               ; preds = %66
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = load i32, i32* @DIB_RGB_COLORS, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = bitcast %struct.TYPE_14__** %76 to i32*
  %78 = call i32* @CreateDIBSection(i32* null, %struct.TYPE_14__* %73, i32 %74, i32* %77, i32* null, i32 0)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  store i32* %78, i32** %80, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %109

85:                                               ; preds = %70
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %91, %93
  %95 = call i64 @ReadFile(i64 %86, %struct.TYPE_14__* %89, i32 %94, i32* %7, i32* null)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @GetObject(i32* %98, i32 8, %struct.TYPE_15__* %6)
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i64, i64* @TRUE, align 8
  store i64 %108, i64* %9, align 8
  br label %109

109:                                              ; preds = %85, %70
  br label %110

110:                                              ; preds = %109, %66, %57
  br label %111

111:                                              ; preds = %110, %42
  br label %118

112:                                              ; preds = %37, %33, %28
  %113 = load i64, i64* %8, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = call i32 @GetError(i32 0)
  br label %117

117:                                              ; preds = %115, %112
  br label %118

118:                                              ; preds = %117, %111
  %119 = load i64, i64* %5, align 8
  %120 = call i32 @CloseHandle(i64 %119)
  %121 = load i64, i64* %9, align 8
  store i64 %121, i64* %2, align 8
  br label %122

122:                                              ; preds = %118, %26
  %123 = load i64, i64* %2, align 8
  ret i64 %123
}

declare dso_local i64 @CreateFile(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @ReadFile(i64, %struct.TYPE_14__*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32* @CreateDIBSection(i32*, %struct.TYPE_14__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @GetObject(i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @GetError(i32) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
