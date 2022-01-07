; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_JoinRuns.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_JoinRuns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_15__, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64 }

@diRun = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_JoinRuns(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %9, %struct.TYPE_17__** %5, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @diRun, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @diRun, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ false, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, -1
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = call i32 @ME_GetParagraph(%struct.TYPE_17__* %34)
  %36 = call i32 @mark_para_rewrap(%struct.TYPE_16__* %33, i32 %35)
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %80, %21
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %83

43:                                               ; preds = %37
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %53 = icmp eq %struct.TYPE_17__* %51, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %43
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %62, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %67
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 8
  br label %79

79:                                               ; preds = %54, %43
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %37

83:                                               ; preds = %37
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %88
  store i64 %94, i64* %92, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = call i32 @ME_Remove(%struct.TYPE_17__* %95)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %98 = call i32 @ME_DestroyDisplayItem(%struct.TYPE_17__* %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = call i32 @ME_UpdateRunFlags(%struct.TYPE_16__* %99, %struct.TYPE_18__* %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = call i32 @ME_CheckCharOffsets(%struct.TYPE_16__* %104)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mark_para_rewrap(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ME_GetParagraph(%struct.TYPE_17__*) #1

declare dso_local i32 @ME_Remove(%struct.TYPE_17__*) #1

declare dso_local i32 @ME_DestroyDisplayItem(%struct.TYPE_17__*) #1

declare dso_local i32 @ME_UpdateRunFlags(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ME_CheckCharOffsets(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
