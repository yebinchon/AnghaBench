; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/base/extr_ftobjs.c_destroy_face.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/base/extr_ftobjs.c_destroy_face.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_15__*, i32*, %struct.TYPE_14__, i32*, i32, i64, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_15__*)* }
%struct.TYPE_13__ = type { i32, i32 (i32)* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_15__*)* }

@destroy_size = common dso_local global i64 0, align 8
@FT_FACE_FLAG_EXTERNAL_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_15__*, %struct.TYPE_17__*)* @destroy_face to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_face(i32 %0, %struct.TYPE_15__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 7
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load i32 (i32)*, i32 (i32)** %13, align 8
  %15 = icmp ne i32 (i32)* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %20(i32 %24)
  br label %26

26:                                               ; preds = %16, %3
  br label %27

27:                                               ; preds = %32, %26
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @FT_Done_GlyphSlot(i64 %35)
  br label %27

37:                                               ; preds = %27
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 5
  %40 = load i64, i64* @destroy_size, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = call i32 @FT_List_Finalize(i32* %39, i32 %41, i32 %42, %struct.TYPE_17__* %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 4
  store i32* null, i32** %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %49, align 8
  %51 = icmp ne i32 (%struct.TYPE_15__*)* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %37
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %55, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = call i32 %56(%struct.TYPE_15__* %57)
  br label %59

59:                                               ; preds = %52, %37
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @destroy_charmaps(%struct.TYPE_15__* %60, i32 %61)
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %64, align 8
  %66 = icmp ne i32 (%struct.TYPE_15__*)* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %69, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = call i32 %70(%struct.TYPE_15__* %71)
  br label %73

73:                                               ; preds = %67, %59
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @FT_FACE_FLAG_EXTERNAL_STREAM, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @FT_Stream_Free(i32* %76, i32 %83)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  store i32* null, i32** %86, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = icmp ne %struct.TYPE_15__* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %73
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = call i32 @FT_FREE(%struct.TYPE_15__* %94)
  br label %96

96:                                               ; preds = %91, %73
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %98 = call i32 @FT_FREE(%struct.TYPE_15__* %97)
  ret void
}

declare dso_local i32 @FT_Done_GlyphSlot(i64) #1

declare dso_local i32 @FT_List_Finalize(i32*, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @destroy_charmaps(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @FT_Stream_Free(i32*, i32) #1

declare dso_local i32 @FT_FREE(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
