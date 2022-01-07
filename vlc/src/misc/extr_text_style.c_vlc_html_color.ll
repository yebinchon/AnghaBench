; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_text_style.c_vlc_html_color.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_text_style.c_vlc_html_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"rgba(%3u,%3u,%3u,%3u)\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"rgb(%3u,%3u,%3u)\00", align 1
@p_html_colors = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_html_color(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 35
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  br label %24

22:                                               ; preds = %2
  %23 = load i8*, i8** %3, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i8* [ %21, %19 ], [ %23, %22 ]
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = icmp ne i8* %26, %27
  br i1 %28, label %49, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sge i32 %32, 48
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sle i32 %37, 57
  br i1 %38, label %49, label %39

39:                                               ; preds = %34, %29
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sge i32 %42, 65
  br i1 %43, label %44, label %79

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sle i32 %47, 70
  br i1 %48, label %49, label %79

49:                                               ; preds = %44, %34, %24
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @strtoul(i8* %50, i8** %6, i32 16)
  store i32 %51, i32* %9, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i64 @isspace(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %56, %49
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  switch i64 %66, label %76 [
    i64 8, label %67
    i64 6, label %73
  ]

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 %68, 24
  %70 = load i32, i32* %9, align 4
  %71 = ashr i32 %70, 8
  %72 = or i32 %69, %71
  store i32 %72, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %77

73:                                               ; preds = %61
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, -16777216
  store i32 %75, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %77

76:                                               ; preds = %61
  br label %77

77:                                               ; preds = %76, %73, %67
  br label %78

78:                                               ; preds = %77, %56
  br label %79

79:                                               ; preds = %78, %44, %39
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %117, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = icmp eq i8* %83, %84
  br i1 %85, label %86, label %117

86:                                               ; preds = %82
  %87 = load i8*, i8** %3, align 8
  %88 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %87, i32 3)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %117, label %90

90:                                               ; preds = %86
  store i32 255, i32* %13, align 4
  %91 = load i8*, i8** %3, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 97
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load i8*, i8** %3, align 8
  %98 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %10, i32* %11, i32* %12, i32* %13)
  %99 = icmp eq i32 %98, 4
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %7, align 4
  br label %106

101:                                              ; preds = %90
  %102 = load i8*, i8** %3, align 8
  %103 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %10, i32* %11, i32* %12)
  %104 = icmp eq i32 %103, 3
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %101, %96
  %107 = load i32, i32* %13, align 4
  %108 = shl i32 %107, 24
  %109 = load i32, i32* %10, align 4
  %110 = shl i32 %109, 16
  %111 = or i32 %108, %110
  %112 = load i32, i32* %11, align 4
  %113 = shl i32 %112, 8
  %114 = or i32 %111, %113
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %114, %115
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %106, %86, %82, %79
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %156, label %120

120:                                              ; preds = %117
  %121 = load i8*, i8** %8, align 8
  %122 = load i8*, i8** %3, align 8
  %123 = icmp eq i8* %121, %122
  br i1 %123, label %124, label %156

124:                                              ; preds = %120
  store i32 0, i32* %14, align 4
  br label %125

125:                                              ; preds = %152, %124
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_html_colors, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %155

133:                                              ; preds = %125
  %134 = load i8*, i8** %3, align 8
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_html_colors, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @strcasecmp(i8* %134, i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %133
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_html_colors, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, -16777216
  store i32 %150, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %155

151:                                              ; preds = %133
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %14, align 4
  br label %125

155:                                              ; preds = %143, %125
  br label %156

156:                                              ; preds = %155, %120, %117
  %157 = load i32*, i32** %4, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* %7, align 4
  %161 = load i32*, i32** %4, align 8
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, ...) #1

declare dso_local i32 @strcasecmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
