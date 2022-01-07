; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_mesh_worker_handler.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_mesh_worker_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32***, %struct.TYPE_4__, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i8*, i8* }

@FACE_BUFFER_SIZE = common dso_local global i32 0, align 4
@BUILD_BUFFER_SIZE = common dso_local global i32 0, align 4
@WSTATE_requested = common dso_local global i64 0, align 8
@WSTATE_running = common dso_local global i64 0, align 8
@WSTATE_mesh_ready = common dso_local global i64 0, align 8
@chunk_cache_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_worker_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %3, align 8
  %10 = load i32, i32* @FACE_BUFFER_SIZE, align 4
  %11 = call i8* @malloc(i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* @BUILD_BUFFER_SIZE, align 4
  %15 = call i8* @malloc(i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 6
  store i8* %15, i8** %17, align 8
  br label %18

18:                                               ; preds = %136, %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @SDL_SemWait(i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WSTATE_requested, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %6, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i64, i64* @WSTATE_running, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %70, %18
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %42, label %73

42:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %66, %42
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %69

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32* @get_converted_fastchunk(i32 %50, i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32***, i32**** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32**, i32*** %58, i64 %60
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  store i32* %55, i32** %65, align 8
  br label %66

66:                                               ; preds = %46
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %43

69:                                               ; preds = %43
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %39

73:                                               ; preds = %39
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 6
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i8* %76, i8** %79, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 5
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i32***, i32**** %89, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  %93 = call i32 @build_chunk(i32 %86, i32 %87, i32*** %90, %struct.TYPE_4__* %92)
  %94 = load i64, i64* @WSTATE_mesh_ready, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* @chunk_cache_mutex, align 4
  %98 = call i32 @SDL_LockMutex(i32 %97)
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %133, %73
  %100 = load i32, i32* %5, align 4
  %101 = icmp slt i32 %100, 4
  br i1 %101, label %102, label %136

102:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %129, %102
  %104 = load i32, i32* %4, align 4
  %105 = icmp slt i32 %104, 4
  br i1 %105, label %106, label %132

106:                                              ; preds = %103
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  %109 = load i32***, i32**** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32**, i32*** %109, i64 %111
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @deref_fastchunk(i32* %117)
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  %121 = load i32***, i32**** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32**, i32*** %121, i64 %123
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %106
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %103

132:                                              ; preds = %103
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %99

136:                                              ; preds = %99
  %137 = load i32, i32* @chunk_cache_mutex, align 4
  %138 = call i32 @SDL_UnlockMutex(i32 %137)
  br label %18
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @SDL_SemWait(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @get_converted_fastchunk(i32, i32) #1

declare dso_local i32 @build_chunk(i32, i32, i32***, %struct.TYPE_4__*) #1

declare dso_local i32 @SDL_LockMutex(i32) #1

declare dso_local i32 @deref_fastchunk(i32*) #1

declare dso_local i32 @SDL_UnlockMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
