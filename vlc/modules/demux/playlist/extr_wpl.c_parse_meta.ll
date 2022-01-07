; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_wpl.c_parse_meta.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_wpl.c_parse_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"TotalDuration\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Playlist\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Total duration\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Author\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Rating\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Genre\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"ignoring unknown meta-attribute %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*)* @parse_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_meta(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @xml_ReaderIsEmptyElement(i32* %14)
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  br label %18

18:                                               ; preds = %54, %25, %2
  %19 = load i32*, i32** %5, align 8
  %20 = call i8* @xml_ReaderNextAttr(i32* %19, i8** %10)
  store i8* %20, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load i8*, i8** %10, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %18

26:                                               ; preds = %22
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @strcasecmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %10, align 8
  %35 = call i8* @strdup(i8* %34)
  store i8* %35, i8** %7, align 8
  br label %47

36:                                               ; preds = %30, %26
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @strcasecmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %10, align 8
  %45 = call i8* @strdup(i8* %44)
  store i8* %45, i8** %8, align 8
  br label %46

46:                                               ; preds = %43, %40, %36
  br label %47

47:                                               ; preds = %46, %33
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %55

54:                                               ; preds = %50, %47
  br label %18

55:                                               ; preds = %53, %18
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @consume_tag(i32* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i8*, i8** %7, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64, %61
  br label %111

68:                                               ; preds = %64
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @strcasecmp(i8* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %75 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @atoll(i8* %76)
  %78 = call i32 @input_item_AddInfo(i32* %73, i32 %74, i32 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  br label %110

79:                                               ; preds = %68
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @strcasecmp(i8* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32*, i32** %4, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @input_item_SetPublisher(i32* %84, i8* %85)
  br label %109

87:                                               ; preds = %79
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @strcasecmp(i8* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %4, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @input_item_SetRating(i32* %92, i8* %93)
  br label %108

95:                                               ; preds = %87
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @strcasecmp(i8* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i32*, i32** %4, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @input_item_SetGenre(i32* %100, i8* %101)
  br label %107

103:                                              ; preds = %95
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @msg_Warn(%struct.TYPE_4__* %104, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107, %91
  br label %109

109:                                              ; preds = %108, %83
  br label %110

110:                                              ; preds = %109, %72
  br label %111

111:                                              ; preds = %110, %67
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @free(i8* %112)
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @free(i8* %114)
  ret void
}

declare dso_local i32 @xml_ReaderIsEmptyElement(i32*) #1

declare dso_local i8* @xml_ReaderNextAttr(i32*, i8**) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @consume_tag(i32*, i8*) #1

declare dso_local i32 @input_item_AddInfo(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @atoll(i8*) #1

declare dso_local i32 @input_item_SetPublisher(i32*, i8*) #1

declare dso_local i32 @input_item_SetRating(i32*, i8*) #1

declare dso_local i32 @input_item_SetGenre(i32*, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
