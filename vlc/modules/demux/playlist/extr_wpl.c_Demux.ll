; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_wpl.c_Demux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_wpl.c_Demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }

@XML_READER_STARTELEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"smil\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@XML_READER_ENDELEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"skipping unknown tag <%s> in <smil>\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*)* @Demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Demux(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @xml_ReaderNextNode(i32* %13, i8** %7)
  %15 = load i32, i32* @XML_READER_STARTELEM, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @strcasecmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @xml_ReaderIsEmptyElement(i32* %22)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %17, %2
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %3, align 4
  br label %73

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = call i32* @GetCurrentItem(%struct.TYPE_8__* %28)
  store i32* %29, i32** %9, align 8
  br label %30

30:                                               ; preds = %70, %59, %51, %27
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @xml_ReaderNextNode(i32* %31, i8** %7)
  store i32 %32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @XML_READER_ENDELEM, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @strcasecmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %71

43:                                               ; preds = %38, %34
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @XML_READER_STARTELEM, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %43
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @strcasecmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @read_head(%struct.TYPE_8__* %52, i32* %53)
  br label %30

55:                                               ; preds = %47
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @strcasecmp(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @read_body(%struct.TYPE_8__* %60, i32* %61)
  br label %30

63:                                               ; preds = %55
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @msg_Warn(%struct.TYPE_8__* %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @consume_volatile_tag(%struct.TYPE_8__* %67, i8* %68)
  br label %70

70:                                               ; preds = %63, %43
  br label %30

71:                                               ; preds = %42, %30
  %72 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %25
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @xml_ReaderNextNode(i32*, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @xml_ReaderIsEmptyElement(i32*) #1

declare dso_local i32* @GetCurrentItem(%struct.TYPE_8__*) #1

declare dso_local i32 @read_head(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @read_body(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i32 @consume_volatile_tag(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
