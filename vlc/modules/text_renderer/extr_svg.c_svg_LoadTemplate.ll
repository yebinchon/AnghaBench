; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/extr_svg.c_svg_LoadTemplate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/extr_svg.c_svg_LoadTemplate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i64 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"svg-template-file\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"SVG template file %s does not exist.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"SVG template invalid\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"reading %ld bytes from template %s\00", align 1
@SVG_TEMPLATE_BODY_TOKEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"'%s' not found in SVG template\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @svg_LoadTemplate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_LoadTemplate(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %3, align 8
  store i8* null, i8** %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = call i8* @var_InheritString(%struct.TYPE_8__* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %79

16:                                               ; preds = %1
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %79

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = call i32* @vlc_fopen(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @msg_Warn(%struct.TYPE_8__* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %78

31:                                               ; preds = %22
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @fileno(i32* %32)
  %34 = call i64 @fstat(i32 %33, %struct.stat* %7)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %31
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Err(%struct.TYPE_8__* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %75

43:                                               ; preds = %36
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @msg_Dbg(%struct.TYPE_8__* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %47, i8* %48)
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i8* @malloc(i32 %52)
  store i8* %53, i8** %4, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %74

56:                                               ; preds = %43
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @fread(i8* %62, i64 %65, i32 1, i32* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %73

70:                                               ; preds = %56
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @free(i8* %71)
  store i8* null, i8** %4, align 8
  br label %73

73:                                               ; preds = %70, %56
  br label %74

74:                                               ; preds = %73, %43
  br label %75

75:                                               ; preds = %74, %40
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @fclose(i32* %76)
  br label %78

78:                                               ; preds = %75, %27
  br label %79

79:                                               ; preds = %78, %16, %1
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load i8*, i8** %4, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %106

84:                                               ; preds = %79
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* @SVG_TEMPLATE_BODY_TOKEN, align 4
  %87 = call i64 @strstr(i8* %85, i32 %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %84
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %96 = load i32, i32* @SVG_TEMPLATE_BODY_TOKEN, align 4
  %97 = call i32 (%struct.TYPE_8__*, i8*, ...) @msg_Err(%struct.TYPE_8__* %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @free(i8* %98)
  br label %105

100:                                              ; preds = %84
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i8*
  store i8 0, i8* %104, align 1
  br label %105

105:                                              ; preds = %100, %94
  br label %106

106:                                              ; preds = %105, %79
  %107 = load i8*, i8** %4, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  ret void
}

declare dso_local i8* @var_InheritString(%struct.TYPE_8__*, i8*) #1

declare dso_local i32* @vlc_fopen(i8*, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_8__*, i8*, i64, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @strstr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
