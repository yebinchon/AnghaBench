; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_ParsePositionAttributeList.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_ParsePositionAttributeList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"alignment\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"horizontal-margin\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"vertical-margin\00", align 1
@SUBPICTURE_ALIGN_BOTTOM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"TopLeft\00", align 1
@SUBPICTURE_ALIGN_TOP = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_LEFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"TopCenter\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"TopRight\00", align 1
@SUBPICTURE_ALIGN_RIGHT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"MiddleLeft\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"MiddleCenter\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"MiddleRight\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"BottomLeft\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"BottomCenter\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"BottomRight\00", align 1
@ATTRIBUTE_ALIGNMENT = common dso_local global i32 0, align 4
@ATTRIBUTE_X_PERCENT = common dso_local global i32 0, align 4
@ATTRIBUTE_X = common dso_local global i32 0, align 4
@ATTRIBUTE_Y_PERCENT = common dso_local global i32 0, align 4
@ATTRIBUTE_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*)* @ParsePositionAttributeList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParsePositionAttributeList(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @GrabAttributeValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @GrabAttributeValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @GrabAttributeValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  store i8* %18, i8** %12, align 8
  %19 = load i32, i32* @SUBPICTURE_ALIGN_BOTTOM, align 4
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %8, align 8
  store i32 0, i32* %22, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %109

25:                                               ; preds = %4
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @strcasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %31 = load i32, i32* @SUBPICTURE_ALIGN_LEFT, align 4
  %32 = or i32 %30, %31
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  br label %103

34:                                               ; preds = %25
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @strcasecmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  br label %102

41:                                               ; preds = %34
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @strcasecmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %47 = load i32, i32* @SUBPICTURE_ALIGN_RIGHT, align 4
  %48 = or i32 %46, %47
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %101

50:                                               ; preds = %41
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @strcasecmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @SUBPICTURE_ALIGN_LEFT, align 4
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  br label %100

57:                                               ; preds = %50
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @strcasecmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i32*, i32** %6, align 8
  store i32 0, i32* %62, align 4
  br label %99

63:                                               ; preds = %57
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @strcasecmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @SUBPICTURE_ALIGN_RIGHT, align 4
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  br label %98

70:                                               ; preds = %63
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @strcasecmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @SUBPICTURE_ALIGN_BOTTOM, align 4
  %76 = load i32, i32* @SUBPICTURE_ALIGN_LEFT, align 4
  %77 = or i32 %75, %76
  %78 = load i32*, i32** %6, align 8
  store i32 %77, i32* %78, align 4
  br label %97

79:                                               ; preds = %70
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @strcasecmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @SUBPICTURE_ALIGN_BOTTOM, align 4
  %85 = load i32*, i32** %6, align 8
  store i32 %84, i32* %85, align 4
  br label %96

86:                                               ; preds = %79
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @strcasecmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @SUBPICTURE_ALIGN_BOTTOM, align 4
  %92 = load i32, i32* @SUBPICTURE_ALIGN_RIGHT, align 4
  %93 = or i32 %91, %92
  %94 = load i32*, i32** %6, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %90, %86
  br label %96

96:                                               ; preds = %95, %83
  br label %97

97:                                               ; preds = %96, %74
  br label %98

98:                                               ; preds = %97, %67
  br label %99

99:                                               ; preds = %98, %61
  br label %100

100:                                              ; preds = %99, %54
  br label %101

101:                                              ; preds = %100, %45
  br label %102

102:                                              ; preds = %101, %38
  br label %103

103:                                              ; preds = %102, %29
  %104 = load i32, i32* @ATTRIBUTE_ALIGNMENT, align 4
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @free(i8* %107)
  br label %109

109:                                              ; preds = %103, %4
  %110 = load i8*, i8** %11, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %130

112:                                              ; preds = %109
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @atoi(i8* %113)
  %115 = load i32*, i32** %7, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i8*, i8** %11, align 8
  %117 = call i64 @strchr(i8* %116, i8 signext 37)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i32, i32* @ATTRIBUTE_X_PERCENT, align 4
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  br label %127

123:                                              ; preds = %112
  %124 = load i32, i32* @ATTRIBUTE_X, align 4
  %125 = load i32, i32* %9, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %123, %119
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 @free(i8* %128)
  br label %130

130:                                              ; preds = %127, %109
  %131 = load i8*, i8** %12, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %151

133:                                              ; preds = %130
  %134 = load i8*, i8** %12, align 8
  %135 = call i32 @atoi(i8* %134)
  %136 = load i32*, i32** %8, align 8
  store i32 %135, i32* %136, align 4
  %137 = load i8*, i8** %12, align 8
  %138 = call i64 @strchr(i8* %137, i8 signext 37)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load i32, i32* @ATTRIBUTE_Y_PERCENT, align 4
  %142 = load i32, i32* %9, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %9, align 4
  br label %148

144:                                              ; preds = %133
  %145 = load i32, i32* @ATTRIBUTE_Y, align 4
  %146 = load i32, i32* %9, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %144, %140
  %149 = load i8*, i8** %12, align 8
  %150 = call i32 @free(i8* %149)
  br label %151

151:                                              ; preds = %148, %130
  %152 = load i32, i32* %9, align 4
  ret i32 %152
}

declare dso_local i8* @GrabAttributeValue(i8*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
