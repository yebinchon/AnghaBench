; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdrop.c_QueryDataObject.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdrop.c_QueryDataObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (i32, %struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { i32, i16, i32, i32, i32*, i32 }

@CF_HDROP = common dso_local global i32 0, align 4
@DVASPECT_CONTENT = common dso_local global i32 0, align 4
@TYMED_HGLOBAL = common dso_local global i32 0, align 4
@CFSTR_FILEDESCRIPTOR = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @QueryDataObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @QueryDataObject(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %7 = load i32, i32* @CF_HDROP, align 4
  store i32 %7, i32* %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  store i16 0, i16* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %10 = load i32, i32* @DVASPECT_CONTENT, align 4
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 3
  store i32 -1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 4
  %13 = load i32, i32* @TYMED_HGLOBAL, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %12, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 5
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* @CFSTR_FILEDESCRIPTOR, align 4
  %18 = call zeroext i16 @RegisterClipboardFormat(i32 %17)
  store i16 %18, i16* %4, align 2
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  store i16 0, i16* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %22 = load i32, i32* @DVASPECT_CONTENT, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  store i32 -1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 4
  %25 = load i32, i32* @TYMED_HGLOBAL, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %24, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 5
  store i32 0, i32* %28, align 8
  %29 = load i16, i16* %4, align 2
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  store i16 %29, i16* %30, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64 (i32, %struct.TYPE_11__*)*, i64 (i32, %struct.TYPE_11__*)** %35, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = ptrtoint %struct.TYPE_10__* %37 to i32
  %39 = call i64 %36(i32 %38, %struct.TYPE_11__* %3)
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64 (i32, %struct.TYPE_11__*)*, i64 (i32, %struct.TYPE_11__*)** %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = ptrtoint %struct.TYPE_10__* %49 to i32
  %51 = call i64 %48(i32 %50, %struct.TYPE_11__* %5)
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %42, %1
  %55 = phi i1 [ true, %1 ], [ %53, %42 ]
  %56 = zext i1 %55 to i32
  ret i32 %56
}

declare dso_local zeroext i16 @RegisterClipboardFormat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
