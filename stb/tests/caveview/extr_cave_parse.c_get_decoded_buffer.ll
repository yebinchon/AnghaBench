; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_parse.c_get_decoded_buffer.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_parse.c_get_decoded_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@decoded_buffers = common dso_local global %struct.TYPE_6__** null, align 8
@MAX_DECODED_CHUNK_Z = common dso_local global i32 0, align 4
@MAX_DECODED_CHUNK_X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @get_decoded_buffer(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @decoded_buffers, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MAX_DECODED_CHUNK_Z, align 4
  %10 = sub nsw i32 %9, 1
  %11 = and i32 %8, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %7, i64 %12
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MAX_DECODED_CHUNK_X, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %15, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %19
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %6, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %3, align 8
  br label %73

39:                                               ; preds = %31, %25
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = call i32 @free(%struct.TYPE_7__* %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = call i32 @free(%struct.TYPE_7__* %53)
  br label %55

55:                                               ; preds = %44, %39
  br label %56

56:                                               ; preds = %55, %2
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %66, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call %struct.TYPE_7__* @get_decoded_fastchunk_uncached(i32 %67, i32 %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %3, align 8
  br label %73

73:                                               ; preds = %56, %37
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %74
}

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @get_decoded_fastchunk_uncached(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
