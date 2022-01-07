; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_PropagateCharOffset.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_PropagateCharOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_11__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64 }

@diRun = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"PropagateCharOffset(%s, %d)\0A\00", align 1
@diRunOrParagraphOrEnd = common dso_local global i32 0, align 4
@diParagraph = common dso_local global i64 0, align 8
@diTextEnd = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_PropagateCharOffset(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @diRun, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %44

10:                                               ; preds = %2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = call i32 @debugstr_run(%struct.TYPE_11__* %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %37, %10
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, %19
  store i64 %25, i64* %23, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = load i32, i32* @diRunOrParagraphOrEnd, align 4
  %36 = call %struct.TYPE_10__* @ME_FindItemFwd(%struct.TYPE_10__* %34, i32 %35)
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %3, align 8
  br label %37

37:                                               ; preds = %17
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @diRun, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %17, label %43

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @diParagraph, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %73, %50
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, %53
  store i64 %59, i64* %57, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %3, align 8
  br label %73

73:                                               ; preds = %51
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @diParagraph, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %51, label %79

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %44
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @diTextEnd, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %80
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %88
  store i64 %94, i64* %92, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sge i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  br label %103

103:                                              ; preds = %86, %80
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_run(%struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @ME_FindItemFwd(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
