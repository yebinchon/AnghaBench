; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/xml/extr_libxml.c_ReaderOpen.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/xml/extr_libxml.c_ReaderOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32*, i64 }

@XML_WITH_THREAD = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@StreamRead = common dso_local global i32 0, align 4
@ReaderErrorHandler = common dso_local global i32 0, align 4
@ReaderNextNode = common dso_local global i32 0, align 4
@ReaderNextAttr = common dso_local global i32 0, align 4
@ReaderIsEmptyElement = common dso_local global i32 0, align 4
@ReaderUseDTD = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ReaderOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReaderOpen(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @XML_WITH_THREAD, align 4
  %8 = call i32 @xmlHasFeature(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %11, i32* %2, align 4
  br label %65

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %4, align 8
  %15 = call %struct.TYPE_7__* @malloc(i32 16)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %5, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %23, i32* %2, align 4
  br label %65

24:                                               ; preds = %12
  %25 = call i32 @vlc_mutex_lock(i32* @lock)
  %26 = call i32 (...) @xmlInitParser()
  %27 = call i32 @vlc_mutex_unlock(i32* @lock)
  %28 = load i32, i32* @StreamRead, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @xmlReaderForIO(i32 %28, i32* null, i32 %31, i32* null, i32* null, i32 0)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %24
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = call i32 @free(%struct.TYPE_7__* %36)
  %38 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %38, i32* %2, align 4
  br label %65

39:                                               ; preds = %24
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* @ReaderErrorHandler, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = call i32 @xmlTextReaderSetErrorHandler(i64 %40, i32 %41, %struct.TYPE_6__* %42)
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %51, align 8
  %52 = load i32, i32* @ReaderNextNode, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @ReaderNextAttr, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @ReaderIsEmptyElement, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @ReaderUseDTD, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %39, %35, %22, %10
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @xmlHasFeature(i32) #1

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @xmlInitParser(...) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i64 @xmlReaderForIO(i32, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @xmlTextReaderSetErrorHandler(i64, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
