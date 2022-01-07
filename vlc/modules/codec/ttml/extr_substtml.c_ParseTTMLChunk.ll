; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_ParseTTMLChunk.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_ParseTTMLChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@XML_READER_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__**)* @ParseTTMLChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseTTMLChunk(i32* %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  br label %8

8:                                                ; preds = %62, %2
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @xml_ReaderNextNode(i32* %9, i8** %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @XML_READER_NONE, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %63

15:                                               ; preds = %8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %17 [
    i32 128, label %18
    i32 129, label %46
  ]

17:                                               ; preds = %15
  br label %61

18:                                               ; preds = %15
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @tt_node_NameCompare(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %18
  %27 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %27, i32* %3, align 4
  br label %71

28:                                               ; preds = %22
  %29 = load i32*, i32** %4, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call %struct.TYPE_5__* @tt_node_New(i32* %29, i32* null, i8* %30)
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %32, align 8
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = call i32 @tt_nodes_Read(i32* %37, %struct.TYPE_5__* %39)
  %41 = load i32, i32* @VLC_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36, %28
  %44 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %44, i32* %3, align 4
  br label %71

45:                                               ; preds = %36
  br label %61

46:                                               ; preds = %15
  %47 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = icmp ne %struct.TYPE_5__* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @tt_node_NameCompare(i8* %51, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50, %46
  %59 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %59, i32* %3, align 4
  br label %71

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %45, %17
  br label %62

62:                                               ; preds = %61
  br i1 true, label %8, label %63

63:                                               ; preds = %62, %14
  %64 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = icmp eq %struct.TYPE_5__* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %68, i32* %3, align 4
  br label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %67, %58, %43, %26
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @xml_ReaderNextNode(i32*, i8**) #1

declare dso_local i32 @tt_node_NameCompare(i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @tt_node_New(i32*, i32*, i8*) #1

declare dso_local i32 @tt_nodes_Read(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
