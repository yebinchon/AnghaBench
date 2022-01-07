; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzFindMt.c_MatchFinderMt_CreateVTable.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzFindMt.c_MatchFinderMt_CreateVTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i64, i64, i64, i64 }

@MatchFinderMt_Init = common dso_local global i64 0, align 8
@MatchFinderMt_GetIndexByte = common dso_local global i64 0, align 8
@MatchFinderMt_GetNumAvailableBytes = common dso_local global i64 0, align 8
@MatchFinderMt_GetPointerToCurrentPos = common dso_local global i64 0, align 8
@MatchFinderMt_GetMatches = common dso_local global i64 0, align 8
@GetHeads2 = common dso_local global i32 0, align 4
@MatchFinderMt0_Skip = common dso_local global i32 0, align 4
@MatchFinderMt2_GetMatches = common dso_local global i64 0, align 8
@GetHeads3 = common dso_local global i32 0, align 4
@MixMatches2 = common dso_local global i32 0, align 4
@MatchFinderMt2_Skip = common dso_local global i32 0, align 4
@GetHeads4b = common dso_local global i32 0, align 4
@GetHeads4 = common dso_local global i32 0, align 4
@MixMatches3 = common dso_local global i32 0, align 4
@MatchFinderMt3_Skip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinderMt_CreateVTable(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %5 = load i64, i64* @MatchFinderMt_Init, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 5
  store i64 %5, i64* %7, align 8
  %8 = load i64, i64* @MatchFinderMt_GetIndexByte, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 4
  store i64 %8, i64* %10, align 8
  %11 = load i64, i64* @MatchFinderMt_GetNumAvailableBytes, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* @MatchFinderMt_GetPointerToCurrentPos, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* @MatchFinderMt_GetMatches, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %55 [
    i32 2, label %26
    i32 3, label %41
  ]

26:                                               ; preds = %2
  %27 = load i32, i32* @GetHeads2, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i8* null, i8** %31, align 8
  %32 = load i32, i32* @MatchFinderMt0_Skip, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* @MatchFinderMt2_GetMatches, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  br label %80

41:                                               ; preds = %2
  %42 = load i32, i32* @GetHeads3, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @MixMatches2, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @MatchFinderMt2_Skip, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %80

55:                                               ; preds = %2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @GetHeads4b, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @GetHeads4, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @MixMatches3, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @MatchFinderMt3_Skip, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %66, %41, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
