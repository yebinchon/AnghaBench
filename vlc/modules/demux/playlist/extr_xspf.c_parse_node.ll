; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_xspf.c_parse_node.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_xspf.c_parse_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 (i32*, i8*, i8*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32*, i8*, i32)* }

@XML_READER_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid XML stream\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"skipping unexpected element <%s>\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"there's no open element left for <%s>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32*, i32*, i8*, %struct.TYPE_12__*, i64)* @parse_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_node(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32* %3, i8* %4, %struct.TYPE_12__* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %20, align 8
  br label %22

22:                                               ; preds = %143, %7
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @xml_ReaderNextNode(i32* %23, i8** %18)
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* @XML_READER_NONE, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %144

27:                                               ; preds = %22
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @xml_ReaderIsEmptyElement(i32* %28)
  store i32 %29, i32* %21, align 4
  %30 = load i32, i32* %19, align 4
  switch i32 %30, label %143 [
    i32 129, label %31
    i32 128, label %81
    i32 130, label %99
  ]

31:                                               ; preds = %27
  %32 = load i8*, i8** %17, align 8
  %33 = call i32 @FREENULL(i8* %32)
  %34 = load i8*, i8** %18, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Err(%struct.TYPE_13__* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %145

40:                                               ; preds = %31
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %42 = load i64, i64* %15, align 8
  %43 = load i8*, i8** %18, align 8
  %44 = call %struct.TYPE_12__* @get_handler(%struct.TYPE_12__* %41, i64 %42, i8* %43)
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %20, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %46 = icmp ne %struct.TYPE_12__* %45, null
  br i1 %46, label %58, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %49 = load i8*, i8** %18, align 8
  %50 = call i32 @msg_Warn(%struct.TYPE_13__* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load i32*, i32** %12, align 8
  %52 = load i8*, i8** %18, align 8
  %53 = load i32, i32* %21, align 4
  %54 = call i32 @skip_element(i32* null, i32* null, i32* %51, i8* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %149

57:                                               ; preds = %47
  br label %80

58:                                               ; preds = %40
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32 (%struct.TYPE_13__*, i32*, i32*, i8*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32*, i8*, i32)** %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %21, align 4
  %75 = call i32 %67(%struct.TYPE_13__* %68, i32* %69, i32* %70, i8* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %149

78:                                               ; preds = %63
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %20, align 8
  br label %79

79:                                               ; preds = %78, %58
  br label %80

80:                                               ; preds = %79, %57
  br label %143

81:                                               ; preds = %27
  %82 = load i8*, i8** %17, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %85 = icmp ne %struct.TYPE_12__* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  store i8* null, i8** %17, align 8
  br label %98

87:                                               ; preds = %81
  %88 = load i8*, i8** %18, align 8
  %89 = call i8* @strdup(i8* %88)
  store i8* %89, i8** %17, align 8
  %90 = load i8*, i8** %17, align 8
  %91 = icmp ne i8* %90, null
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @unlikely(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %145

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %86
  br label %143

99:                                               ; preds = %27
  %100 = load i8*, i8** %18, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 @strcmp(i8* %100, i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  store i32 1, i32* %16, align 4
  br label %145

105:                                              ; preds = %99
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %107 = icmp ne %struct.TYPE_12__* %106, null
  br i1 %107, label %108, label %142

108:                                              ; preds = %105
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** %18, align 8
  %113 = call i32 @strcmp(i8* %111, i8* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %117 = load i8*, i8** %18, align 8
  %118 = call i32 (%struct.TYPE_13__*, i8*, ...) @msg_Err(%struct.TYPE_13__* %116, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %117)
  br label %145

119:                                              ; preds = %108
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32 (i32*, i8*, i8*, i32)*, i32 (i32*, i8*, i8*, i32)** %122, align 8
  %124 = icmp ne i32 (i32*, i8*, i8*, i32)* %123, null
  br i1 %124, label %125, label %139

125:                                              ; preds = %119
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32 (i32*, i8*, i8*, i32)*, i32 (i32*, i8*, i8*, i32)** %128, align 8
  %130 = load i32*, i32** %11, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i8*, i8** %17, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 %129(i32* %130, i8* %133, i8* %134, i32 %137)
  br label %139

139:                                              ; preds = %125, %119
  %140 = load i8*, i8** %17, align 8
  %141 = call i32 @free(i8* %140)
  store i8* null, i8** %17, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %20, align 8
  br label %142

142:                                              ; preds = %139, %105
  br label %143

143:                                              ; preds = %27, %142, %98, %80
  br label %22

144:                                              ; preds = %22
  br label %145

145:                                              ; preds = %144, %115, %104, %96, %37
  %146 = load i8*, i8** %17, align 8
  %147 = call i32 @free(i8* %146)
  %148 = load i32, i32* %16, align 4
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %145, %77, %56
  %150 = load i32, i32* %8, align 4
  ret i32 %150
}

declare dso_local i32 @xml_ReaderNextNode(i32*, i8**) #1

declare dso_local i32 @xml_ReaderIsEmptyElement(i32*) #1

declare dso_local i32 @FREENULL(i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local %struct.TYPE_12__* @get_handler(%struct.TYPE_12__*, i64, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_13__*, i8*, i8*) #1

declare dso_local i32 @skip_element(i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
