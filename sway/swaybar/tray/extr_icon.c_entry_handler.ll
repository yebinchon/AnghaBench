; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_entry_handler.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_entry_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icon_theme = type { %struct.TYPE_2__*, i32, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, %struct.icon_theme_subdir** }
%struct.icon_theme_subdir = type { i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Icon Theme\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Comment\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Inherits\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Directories\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Fixed\00", align 1
@FIXED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"Scalable\00", align 1
@SCALABLE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@THRESHOLD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"MaxSize\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"MinSize\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, %struct.icon_theme*)* @entry_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @entry_handler(i8* %0, i8* %1, i8* %2, %struct.icon_theme* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.icon_theme*, align 8
  %10 = alloca %struct.icon_theme_subdir*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.icon_theme* %3, %struct.icon_theme** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i8*, i8** %8, align 8
  %22 = call i8* @strdup(i8* %21)
  %23 = load %struct.icon_theme*, %struct.icon_theme** %9, align 8
  %24 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  br label %55

25:                                               ; preds = %16
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @strdup(i8* %30)
  %32 = load %struct.icon_theme*, %struct.icon_theme** %9, align 8
  %33 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  br label %54

34:                                               ; preds = %25
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @strdup(i8* %39)
  %41 = load %struct.icon_theme*, %struct.icon_theme** %9, align 8
  %42 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  br label %53

43:                                               ; preds = %34
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @split_string(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %50 = load %struct.icon_theme*, %struct.icon_theme** %9, align 8
  %51 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %47, %43
  br label %53

53:                                               ; preds = %52, %38
  br label %54

54:                                               ; preds = %53, %29
  br label %55

55:                                               ; preds = %54, %20
  br label %177

56:                                               ; preds = %4
  %57 = load %struct.icon_theme*, %struct.icon_theme** %9, align 8
  %58 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %178

64:                                               ; preds = %56
  %65 = load %struct.icon_theme*, %struct.icon_theme** %9, align 8
  %66 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load %struct.icon_theme_subdir**, %struct.icon_theme_subdir*** %68, align 8
  %70 = load %struct.icon_theme*, %struct.icon_theme** %9, align 8
  %71 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %69, i64 %76
  %78 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %77, align 8
  store %struct.icon_theme_subdir* %78, %struct.icon_theme_subdir** %10, align 8
  %79 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %10, align 8
  %80 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i64 @strcmp(i8* %81, i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %178

86:                                               ; preds = %64
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @strtol(i8* %87, i8** %11, i32 10)
  store i32 %88, i32* %12, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %10, align 8
  %95 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %5, align 4
  br label %178

101:                                              ; preds = %86
  %102 = load i8*, i8** %7, align 8
  %103 = call i64 @strcmp(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %133

105:                                              ; preds = %101
  %106 = load i8*, i8** %8, align 8
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* @FIXED, align 4
  %111 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %10, align 8
  %112 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 8
  br label %132

113:                                              ; preds = %105
  %114 = load i8*, i8** %8, align 8
  %115 = call i64 @strcmp(i8* %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* @SCALABLE, align 4
  %119 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %10, align 8
  %120 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 8
  br label %131

121:                                              ; preds = %113
  %122 = load i8*, i8** %8, align 8
  %123 = call i64 @strcmp(i8* %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32, i32* @THRESHOLD, align 4
  %127 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %10, align 8
  %128 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 8
  br label %130

129:                                              ; preds = %121
  store i32 1, i32* %5, align 4
  br label %178

130:                                              ; preds = %125
  br label %131

131:                                              ; preds = %130, %117
  br label %132

132:                                              ; preds = %131, %109
  br label %175

133:                                              ; preds = %101
  %134 = load i8*, i8** %7, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %10, align 8
  %140 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  %141 = load i8*, i8** %11, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i32
  store i32 %145, i32* %5, align 4
  br label %178

146:                                              ; preds = %133
  %147 = load i8*, i8** %7, align 8
  %148 = call i64 @strcmp(i8* %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %10, align 8
  %153 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %5, align 4
  br label %178

159:                                              ; preds = %146
  %160 = load i8*, i8** %7, align 8
  %161 = call i64 @strcmp(i8* %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %159
  %164 = load i32, i32* %12, align 4
  %165 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %10, align 8
  %166 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 4
  %167 = load i8*, i8** %11, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %5, align 4
  br label %178

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174, %132
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176, %55
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %177, %163, %150, %137, %129, %92, %85, %63
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @split_string(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
