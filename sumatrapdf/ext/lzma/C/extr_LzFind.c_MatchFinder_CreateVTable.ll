; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzFind.c_MatchFinder_CreateVTable.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzFind.c_MatchFinder_CreateVTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i64, i64, i64, i64 }

@MatchFinder_Init = common dso_local global i64 0, align 8
@MatchFinder_GetIndexByte = common dso_local global i64 0, align 8
@MatchFinder_GetNumAvailableBytes = common dso_local global i64 0, align 8
@MatchFinder_GetPointerToCurrentPos = common dso_local global i64 0, align 8
@Hc4_MatchFinder_GetMatches = common dso_local global i64 0, align 8
@Hc4_MatchFinder_Skip = common dso_local global i64 0, align 8
@Bt2_MatchFinder_GetMatches = common dso_local global i64 0, align 8
@Bt2_MatchFinder_Skip = common dso_local global i64 0, align 8
@Bt3_MatchFinder_GetMatches = common dso_local global i64 0, align 8
@Bt3_MatchFinder_Skip = common dso_local global i64 0, align 8
@Bt4_MatchFinder_GetMatches = common dso_local global i64 0, align 8
@Bt4_MatchFinder_Skip = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MatchFinder_CreateVTable(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load i64, i64* @MatchFinder_Init, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 5
  store i64 %5, i64* %7, align 8
  %8 = load i64, i64* @MatchFinder_GetIndexByte, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  store i64 %8, i64* %10, align 8
  %11 = load i64, i64* @MatchFinder_GetNumAvailableBytes, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* @MatchFinder_GetPointerToCurrentPos, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %2
  %22 = load i64, i64* @Hc4_MatchFinder_GetMatches, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i64, i64* @Hc4_MatchFinder_Skip, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %69

30:                                               ; preds = %2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i64, i64* @Bt2_MatchFinder_GetMatches, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i64, i64* @Bt2_MatchFinder_Skip, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %68

44:                                               ; preds = %30
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i64, i64* @Bt3_MatchFinder_GetMatches, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i64, i64* @Bt3_MatchFinder_Skip, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %67

58:                                               ; preds = %44
  %59 = load i64, i64* @Bt4_MatchFinder_GetMatches, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i64, i64* @Bt4_MatchFinder_Skip, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %58, %49
  br label %68

68:                                               ; preds = %67, %35
  br label %69

69:                                               ; preds = %68, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
