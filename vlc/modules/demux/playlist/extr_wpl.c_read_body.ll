; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_wpl.c_read_body.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_wpl.c_read_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@XML_READER_STARTELEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Expected opening <seq> tag. Got <%s> with type %d\00", align 1
@XML_READER_ENDELEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"media\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"skipping unknown tag <%s> in <seq>\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Expected closing <body> tag. Got: <%s> with type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*)* @read_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_body(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @xml_ReaderNextNode(i32* %16, i8** %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @XML_READER_STARTELEM, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strcasecmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @msg_Err(%struct.TYPE_6__* %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 %28)
  br label %136

30:                                               ; preds = %21
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @xml_ReaderIsEmptyElement(i32* %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %136

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %120, %112, %35
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @xml_ReaderNextNode(i32* %37, i8** %6)
  store i32 %38, i32* %7, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %121

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @XML_READER_ENDELEM, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strcasecmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %121

49:                                               ; preds = %44, %40
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @XML_READER_STARTELEM, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %120

53:                                               ; preds = %49
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strcasecmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %113, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @xml_ReaderIsEmptyElement(i32* %58)
  store i32 %59, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  br label %60

60:                                               ; preds = %105, %72, %57
  %61 = load i32*, i32** %5, align 8
  %62 = call i8* @xml_ReaderNextAttr(i32* %61, i8** %10)
  store i8* %62, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %106

64:                                               ; preds = %60
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67, %64
  br label %60

73:                                               ; preds = %67
  %74 = load i8*, i8** %9, align 8
  %75 = call i64 @strcasecmp(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %105, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %10, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @ProcessMRL(i8* %78, i32 %81)
  store i8* %82, i8** %11, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = icmp ne i8* %83, null
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  br label %136

90:                                               ; preds = %77
  %91 = load i8*, i8** %11, align 8
  %92 = call i32* @input_item_New(i8* %91, i32* null)
  store i32* %92, i32** %12, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = call i64 @likely(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i32*, i32** %4, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @input_item_node_AppendItem(i32* %97, i32* %98)
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @input_item_Release(i32* %100)
  br label %102

102:                                              ; preds = %96, %90
  %103 = load i8*, i8** %11, align 8
  %104 = call i32 @free(i8* %103)
  br label %105

105:                                              ; preds = %102, %73
  br label %60

106:                                              ; preds = %60
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @consume_tag(i32* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %106
  br label %36

113:                                              ; preds = %53
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @msg_Warn(%struct.TYPE_6__* %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %115)
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @consume_volatile_tag(%struct.TYPE_6__* %117, i8* %118)
  br label %120

120:                                              ; preds = %113, %49
  br label %36

121:                                              ; preds = %48, %36
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @xml_ReaderNextNode(i32* %122, i8** %6)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @XML_READER_ENDELEM, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  %128 = load i8*, i8** %6, align 8
  %129 = call i64 @strcasecmp(i8* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127, %121
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @msg_Err(%struct.TYPE_6__* %132, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* %133, i32 %134)
  br label %136

136:                                              ; preds = %25, %34, %89, %131, %127
  ret void
}

declare dso_local i32 @xml_ReaderNextNode(i32*, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_6__*, i8*, i8*, i32) #1

declare dso_local i32 @xml_ReaderIsEmptyElement(i32*) #1

declare dso_local i8* @xml_ReaderNextAttr(i32*, i8**) #1

declare dso_local i8* @ProcessMRL(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @input_item_New(i8*, i32*) #1

declare dso_local i64 @likely(i32*) #1

declare dso_local i32 @input_item_node_AppendItem(i32*, i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @consume_tag(i32*, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @consume_volatile_tag(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
