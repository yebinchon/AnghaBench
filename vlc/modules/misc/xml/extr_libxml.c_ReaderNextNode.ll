; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/xml/extr_libxml.c_ReaderNextNode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/xml/extr_libxml.c_ReaderNextNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32 }

@XML_READER_NONE = common dso_local global i32 0, align 4
@XML_READER_ERROR = common dso_local global i32 0, align 4
@XML_READER_STARTELEM = common dso_local global i32 0, align 4
@XML_READER_ENDELEM = common dso_local global i32 0, align 4
@XML_READER_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8**)* @ReaderNextNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReaderNextNode(%struct.TYPE_4__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @free(i8* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i8* null, i8** %17, align 8
  br label %18

18:                                               ; preds = %52, %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @xmlTextReaderRead(i32 %21)
  switch i32 %22, label %27 [
    i32 0, label %23
    i32 -1, label %25
  ]

23:                                               ; preds = %18
  %24 = load i32, i32* @XML_READER_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %88

25:                                               ; preds = %18
  %26 = load i32, i32* @XML_READER_ERROR, align 4
  store i32 %26, i32* %3, align 4
  br label %88

27:                                               ; preds = %18
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @xmlTextReaderNodeType(i32 %30)
  switch i32 %31, label %52 [
    i32 130, label %32
    i32 129, label %38
    i32 131, label %44
    i32 128, label %44
    i32 -1, label %50
  ]

32:                                               ; preds = %27
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32* @xmlTextReaderConstName(i32 %35)
  store i32* %36, i32** %7, align 8
  %37 = load i32, i32* @XML_READER_STARTELEM, align 4
  store i32 %37, i32* %8, align 4
  br label %53

38:                                               ; preds = %27
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32* @xmlTextReaderConstName(i32 %41)
  store i32* %42, i32** %7, align 8
  %43 = load i32, i32* @XML_READER_ENDELEM, align 4
  store i32 %43, i32* %8, align 4
  br label %53

44:                                               ; preds = %27, %27
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32* @xmlTextReaderConstValue(i32 %47)
  store i32* %48, i32** %7, align 8
  %49 = load i32, i32* @XML_READER_TEXT, align 4
  store i32 %49, i32* %8, align 4
  br label %53

50:                                               ; preds = %27
  %51 = load i32, i32* @XML_READER_ERROR, align 4
  store i32 %51, i32* %3, align 4
  br label %88

52:                                               ; preds = %27
  br label %18

53:                                               ; preds = %44, %38, %32
  %54 = load i32*, i32** %7, align 8
  %55 = icmp eq i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @XML_READER_ERROR, align 4
  store i32 %60, i32* %3, align 4
  br label %88

61:                                               ; preds = %53
  %62 = load i32*, i32** %7, align 8
  %63 = bitcast i32* %62 to i8*
  %64 = call i8* @strdup(i8* %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load i8**, i8*** %5, align 8
  %68 = icmp ne i8** %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i8**, i8*** %5, align 8
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %69, %61
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i64 @likely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %8, align 4
  br label %86

84:                                               ; preds = %74
  %85 = load i32, i32* @XML_READER_ERROR, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %59, %50, %25, %23
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @xmlTextReaderRead(i32) #1

declare dso_local i32 @xmlTextReaderNodeType(i32) #1

declare dso_local i32* @xmlTextReaderConstName(i32) #1

declare dso_local i32* @xmlTextReaderConstValue(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
