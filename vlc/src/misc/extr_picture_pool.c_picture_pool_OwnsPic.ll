; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_picture_pool.c_picture_pool_OwnsPic.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_picture_pool.c_picture_pool_OwnsPic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32** }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32* }

@picture_pool_ReleasePicture = common dso_local global i64 0, align 8
@POOL_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @picture_pool_OwnsPic(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  br label %11

11:                                               ; preds = %25, %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @picture_pool_ReleasePicture, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %11
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %72

25:                                               ; preds = %18
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = bitcast i32* %30 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %6, align 8
  br label %11

32:                                               ; preds = %11
  br label %33

33:                                               ; preds = %64, %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = ptrtoint i32* %37 to i64
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* @POOL_MAX, align 4
  %41 = sub nsw i32 %40, 1
  %42 = xor i32 %41, -1
  %43 = sext i32 %42 to i64
  %44 = and i64 %39, %43
  %45 = inttoptr i64 %44 to i8*
  %46 = bitcast i8* %45 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %8, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = icmp eq %struct.TYPE_7__* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %72

51:                                               ; preds = %33
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32**, i32*** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* @POOL_MAX, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = and i64 %55, %58
  %60 = getelementptr inbounds i32*, i32** %54, i64 %59
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %5, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = bitcast i32* %62 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %6, align 8
  br label %64

64:                                               ; preds = %51
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @picture_pool_ReleasePicture, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %33, label %71

71:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %50, %24
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
