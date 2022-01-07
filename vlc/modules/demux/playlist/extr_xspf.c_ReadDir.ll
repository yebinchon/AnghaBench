; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_xspf.c_ReadDir.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_xspf.c_ReadDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32**, i32 }

@XML_READER_STARTELEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"can't read xml stream\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"playlist\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid root node name <%s>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*)* @ReadDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadDir(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i32** null, i32*** %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  store i32 -1, i32* %19, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strdup(i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32* @xml_ReaderCreate(%struct.TYPE_8__* %26, i32 %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  br label %88

34:                                               ; preds = %2
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @xml_ReaderNextNode(i32* %35, i8** %8)
  %37 = load i64, i64* @XML_READER_STARTELEM, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Err(%struct.TYPE_8__* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %88

42:                                               ; preds = %34
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Err(%struct.TYPE_8__* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  br label %88

50:                                               ; preds = %42
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @xml_ReaderIsEmptyElement(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %88

55:                                               ; preds = %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i64 @parse_playlist_node(%struct.TYPE_8__* %56, i32* %57, i32* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 0, i32 -1
  store i32 %62, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %84, %55
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %63
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %10, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load i32*, i32** %4, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @input_item_node_AppendItem(i32* %80, i32* %81)
  br label %83

83:                                               ; preds = %79, %69
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %63

87:                                               ; preds = %63
  br label %88

88:                                               ; preds = %87, %54, %46, %39, %33
  %89 = load i32*, i32** %7, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @xml_ReaderDelete(i32* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @strdup(i32) #1

declare dso_local i32* @xml_ReaderCreate(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @xml_ReaderNextNode(i32*, i8**) #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @xml_ReaderIsEmptyElement(i32*) #1

declare dso_local i64 @parse_playlist_node(%struct.TYPE_8__*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @input_item_node_AppendItem(i32*, i32*) #1

declare dso_local i32 @xml_ReaderDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
