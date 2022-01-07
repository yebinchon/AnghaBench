; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_metafile.c_test_SetEnhMetaFileBits.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_metafile.c_test_SetEnhMetaFileBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"SetEnhMetaFileBits should fail\0A\00", align 1
@ERROR_INVALID_DATA = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"expected ERROR_INVALID_DATA or ERROR_INVALID_PARAMETER, got %u\0A\00", align 1
@EMR_HEADER = common dso_local global i32 0, align 4
@ENHMETA_SIGNATURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"SetEnhMetaFileBits error %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Expected deadbeef, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetEnhMetaFileBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetEnhMetaFileBits() #0 {
  %1 = alloca [256 x %struct.TYPE_5__], align 16
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %5 = call i32 @memset(%struct.TYPE_5__* %4, i32 170, i32 8192)
  %6 = call i32 @SetLastError(i32 -559038737)
  %7 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %8 = call i32* @SetEnhMetaFileBits(i32 8192, %struct.TYPE_5__* %7)
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp ne i32* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (...) @GetLastError()
  %15 = load i32, i32* @ERROR_INVALID_DATA, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %0
  %18 = call i32 (...) @GetLastError()
  %19 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %20 = icmp eq i32 %18, %19
  br label %21

21:                                               ; preds = %17, %0
  %22 = phi i1 [ true, %0 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 (...) @GetLastError()
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %1, i64 0, i64 0
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %3, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = call i32 @memset(%struct.TYPE_5__* %27, i32 0, i32 32)
  %29 = load i32, i32* @EMR_HEADER, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 32, i32* %33, align 8
  %34 = load i64, i64* @ENHMETA_SIGNATURE, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 32, i32* %38, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = call i32 @SetLastError(i32 -559038737)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %46 = call i32* @SetEnhMetaFileBits(i32 %44, %struct.TYPE_5__* %45)
  store i32* %46, i32** %2, align 8
  %47 = load i32*, i32** %2, align 8
  %48 = icmp ne i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 (...) @GetLastError()
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @DeleteEnhMetaFile(i32* %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = call i32 @SetLastError(i32 -559038737)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %63 = call i32* @SetEnhMetaFileBits(i32 %61, %struct.TYPE_5__* %62)
  store i32* %63, i32** %2, align 8
  %64 = load i32*, i32** %2, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %21
  %67 = load i32*, i32** %2, align 8
  %68 = icmp ne i32* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i64 @broken(i32 %69)
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %66, %21
  %73 = phi i1 [ true, %21 ], [ %71, %66 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %76 = call i32 (...) @GetLastError()
  %77 = icmp eq i32 %76, -559038737
  %78 = zext i1 %77 to i32
  %79 = call i32 (...) @GetLastError()
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @DeleteEnhMetaFile(i32* %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 4
  %89 = call i32 @SetLastError(i32 -559038737)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %1, i64 0, i64 0
  %94 = call i32* @SetEnhMetaFileBits(i32 %92, %struct.TYPE_5__* %93)
  store i32* %94, i32** %2, align 8
  %95 = load i32*, i32** %2, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %72
  %98 = load i32*, i32** %2, align 8
  %99 = icmp ne i32* %98, null
  %100 = zext i1 %99 to i32
  %101 = call i64 @broken(i32 %100)
  %102 = icmp ne i64 %101, 0
  br label %103

103:                                              ; preds = %97, %72
  %104 = phi i1 [ true, %72 ], [ %102, %97 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %107 = call i32 (...) @GetLastError()
  %108 = icmp eq i32 %107, -559038737
  %109 = zext i1 %108 to i32
  %110 = call i32 (...) @GetLastError()
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = load i32*, i32** %2, align 8
  %113 = call i32 @DeleteEnhMetaFile(i32* %112)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @SetEnhMetaFileBits(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @DeleteEnhMetaFile(i32*) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
