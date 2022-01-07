; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsvirt.c_SetSeqDescTag.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsvirt.c_SetSeqDescTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i64, i64*, i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@cmsNoLanguage = common dso_local global i32 0, align 4
@cmsNoCountry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Little CMS\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @SetSeqDescTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetSeqDescTag(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_7__* @cmsAllocProfileSequenceDescription(i32 %11, i32 1)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %9, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %14 = icmp eq %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %4, align 4
  br label %76

17:                                               ; preds = %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 5
  store i8* null, i8** %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  store i8* null, i8** %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  store i64* null, i64** %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @cmsNoLanguage, align 4
  %46 = load i32, i32* @cmsNoCountry, align 4
  %47 = call i32 @cmsMLUsetASCII(i32 %38, i32 %44, i32 %45, i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @cmsNoLanguage, align 4
  %56 = load i32, i32* @cmsNoCountry, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @cmsMLUsetASCII(i32 %48, i32 %54, i32 %55, i32 %56, i8* %57)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = call i32 @_cmsWriteProfileSequence(i32 %59, i32 %60, %struct.TYPE_7__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %17
  br label %67

65:                                               ; preds = %17
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = icmp ne %struct.TYPE_7__* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = call i32 @cmsFreeProfileSequenceDescription(i32 %71, %struct.TYPE_7__* %72)
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %15
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_7__* @cmsAllocProfileSequenceDescription(i32, i32) #1

declare dso_local i32 @cmsMLUsetASCII(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @_cmsWriteProfileSequence(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @cmsFreeProfileSequenceDescription(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
