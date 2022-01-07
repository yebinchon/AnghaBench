; ModuleID = '/home/carl/AnghaBench/redis/src/extr_tracking.c_trackingRememberKeys.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_tracking.c_trackingRememberKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__**, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@TRACKING_TABLE_SIZE = common dso_local global i32 0, align 4
@TrackingTable = common dso_local global i32** null, align 8
@TrackingTableUsedSlots = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trackingRememberKeys(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32* @getKeysFromCommand(i32 %11, %struct.TYPE_5__** %14, i32 %17, i32* %3)
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %78

22:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %72, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %35, i64 %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @sdslen(i64 %44)
  %46 = call i32 @crc64(i32 0, i8* %43, i32 %45)
  %47 = load i32, i32* @TRACKING_TABLE_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %8, align 8
  %51 = load i32**, i32*** @TrackingTable, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %27
  %57 = call i32* (...) @raxNew()
  %58 = load i32**, i32*** @TrackingTable, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i32*, i32** %58, i64 %59
  store i32* %57, i32** %60, align 8
  %61 = load i32, i32* @TrackingTableUsedSlots, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @TrackingTableUsedSlots, align 4
  br label %63

63:                                               ; preds = %56, %27
  %64 = load i32**, i32*** @TrackingTable, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds i32*, i32** %64, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = bitcast i32* %69 to i8*
  %71 = call i32 @raxTryInsert(i32* %67, i8* %70, i32 4, i32* null, i32* null)
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %23

75:                                               ; preds = %23
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @getKeysFreeResult(i32* %76)
  br label %78

78:                                               ; preds = %75, %21
  ret void
}

declare dso_local i32* @getKeysFromCommand(i32, %struct.TYPE_5__**, i32, i32*) #1

declare dso_local i32 @crc64(i32, i8*, i32) #1

declare dso_local i32 @sdslen(i64) #1

declare dso_local i32* @raxNew(...) #1

declare dso_local i32 @raxTryInsert(i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @getKeysFreeResult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
