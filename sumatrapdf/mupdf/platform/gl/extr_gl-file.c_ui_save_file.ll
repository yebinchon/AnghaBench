; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-file.c_ui_save_file.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-file.c_ui_save_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i8*, i64 }
%struct.TYPE_7__ = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@L = common dso_local global i32 0, align 4
@Y = common dso_local global i32 0, align 4
@NW = common dso_local global i32 0, align 4
@T = common dso_local global i32 0, align 4
@X = common dso_local global i32 0, align 4
@B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@ui = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@KEY_ESCAPE = common dso_local global i64 0, align 8
@fc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@UI_INPUT_ACCEPT = common dso_local global i64 0, align 8
@R = common dso_local global i32 0, align 4
@NONE = common dso_local global i32 0, align 4
@CENTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Save\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\E2\9E\95\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\E2\9E\96\00", align 1
@ALL = common dso_local global i32 0, align 4
@BOTH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%C %s\00", align 1
@ICON_FOLDER = common dso_local global i32 0, align 4
@ICON_DOCUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_save_file(i8* %0, void ()* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca void ()*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store void ()* %1, void ()** %4, align 8
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  store i32 0, i32* %6, align 4
  %12 = call i32 @ui_panel_begin(i32 0, i32 0, i32 4, i32 4, i32 1)
  %13 = load i32, i32* @L, align 4
  %14 = load i32, i32* @Y, align 4
  %15 = load i32, i32* @NW, align 4
  %16 = call i32 @ui_layout(i32 %13, i32 %14, i32 %15, i32 0, i32 0)
  %17 = call i32 @ui_panel_begin(i32 150, i32 0, i32 0, i32 0, i32 0)
  %18 = load i32, i32* @T, align 4
  %19 = load i32, i32* @X, align 4
  %20 = load i32, i32* @NW, align 4
  %21 = call i32 @ui_layout(i32 %18, i32 %19, i32 %20, i32 2, i32 2)
  %22 = call i32 (...) @list_drives()
  %23 = load void ()*, void ()** %4, align 8
  %24 = icmp ne void ()* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = call i32 (...) @ui_spacer()
  %27 = load void ()*, void ()** %4, align 8
  call void %27()
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i32, i32* @B, align 4
  %30 = load i32, i32* @X, align 4
  %31 = load i32, i32* @NW, align 4
  %32 = call i32 @ui_layout(i32 %29, i32 %30, i32 %31, i32 2, i32 2)
  %33 = call i64 @ui_button(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui, i32 0, i32 3), align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui, i32 0, i32 0), align 8
  %40 = load i64, i64* @KEY_ESCAPE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %28
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 0, i8* %44, align 1
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %38, %35
  %46 = call i32 (...) @ui_panel_end()
  %47 = load i32, i32* @T, align 4
  %48 = load i32, i32* @X, align 4
  %49 = load i32, i32* @NW, align 4
  %50 = call i32 @ui_layout(i32 %47, i32 %48, i32 %49, i32 2, i32 2)
  %51 = call i64 @ui_input(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 6), i32 0, i32 1)
  %52 = load i64, i64* @UI_INPUT_ACCEPT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 6, i32 0), align 8
  %56 = call i32 @load_dir(i8* %55)
  br label %57

57:                                               ; preds = %54, %45
  %58 = load i32, i32* @T, align 4
  %59 = load i32, i32* @X, align 4
  %60 = load i32, i32* @NW, align 4
  %61 = call i32 @ui_layout(i32 %58, i32 %59, i32 %60, i32 2, i32 2)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui, i32 0, i32 2), align 8
  %63 = call i32 @ui_panel_begin(i32 0, i32 %62, i32 0, i32 0, i32 0)
  %64 = load i32, i32* @R, align 4
  %65 = load i32, i32* @NONE, align 4
  %66 = load i32, i32* @CENTER, align 4
  %67 = call i32 @ui_layout(i32 %64, i32 %65, i32 %66, i32 0, i32 0)
  %68 = call i64 @ui_button(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %57
  %71 = load i8*, i8** %3, align 8
  %72 = load i32, i32* @PATH_MAX, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 4), align 8
  %74 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 3, i32 0), align 8
  %75 = call i32 @fz_snprintf(i8* %71, i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %73, i8* %74)
  store i32 1, i32* %6, align 4
  br label %76

76:                                               ; preds = %70, %57
  %77 = call i32 (...) @ui_spacer()
  %78 = call i64 @ui_button(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 @bump_file_version(i32 1)
  br label %82

82:                                               ; preds = %80, %76
  %83 = call i64 @ui_button(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i32 @bump_file_version(i32 -1)
  br label %87

87:                                               ; preds = %85, %82
  %88 = call i32 (...) @ui_spacer()
  %89 = load i32, i32* @ALL, align 4
  %90 = load i32, i32* @X, align 4
  %91 = load i32, i32* @CENTER, align 4
  %92 = call i32 @ui_layout(i32 %89, i32 %90, i32 %91, i32 0, i32 0)
  %93 = call i64 @ui_input(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 3), i32 0, i32 1)
  %94 = call i32 (...) @ui_panel_end()
  %95 = load i32, i32* @ALL, align 4
  %96 = load i32, i32* @BOTH, align 4
  %97 = load i32, i32* @NW, align 4
  %98 = call i32 @ui_layout(i32 %95, i32 %96, i32 %97, i32 2, i32 2)
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 0), align 8
  %100 = call i32 @ui_list_begin(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 2), i32 %99, i32 0, i32 0)
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %165, %87
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 0), align 8
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %168

105:                                              ; preds = %101
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 5), align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %7, align 8
  %112 = load i32, i32* @PATH_MAX, align 4
  %113 = zext i32 %112 to i64
  %114 = call i8* @llvm.stacksave()
  store i8* %114, i8** %8, align 8
  %115 = alloca i8, i64 %113, align 16
  store i64 %113, i64* %9, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 5), align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %105
  %124 = trunc i64 %113 to i32
  %125 = load i32, i32* @ICON_FOLDER, align 4
  %126 = load i8*, i8** %7, align 8
  %127 = call i32 @fz_snprintf(i8* %115, i32 %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %125, i8* %126)
  br label %133

128:                                              ; preds = %105
  %129 = trunc i64 %113 to i32
  %130 = load i32, i32* @ICON_DOCUMENT, align 4
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 @fz_snprintf(i8* %115, i32 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %130, i8* %131)
  br label %133

133:                                              ; preds = %128, %123
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 5), align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 1), align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i64 @ui_list_item(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 2), %struct.TYPE_6__* %137, i8* %115, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %163

144:                                              ; preds = %133
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 1), align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 5), align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %144
  %154 = trunc i64 %113 to i32
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 4), align 8
  %156 = load i8*, i8** %7, align 8
  %157 = call i32 @fz_snprintf(i8* %115, i32 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %155, i8* %156)
  %158 = call i32 @load_dir(i8* %115)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ui, i32 0, i32 1), align 8
  br label %162

159:                                              ; preds = %144
  %160 = load i8*, i8** %7, align 8
  %161 = call i32 @ui_input_init(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 3), i8* %160)
  br label %162

162:                                              ; preds = %159, %153
  br label %163

163:                                              ; preds = %162, %133
  %164 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %164)
  br label %165

165:                                              ; preds = %163
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %101

168:                                              ; preds = %101
  %169 = call i32 @ui_list_end(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fc, i32 0, i32 2))
  %170 = call i32 (...) @ui_panel_end()
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i32 @ui_panel_begin(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ui_layout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @list_drives(...) #1

declare dso_local i32 @ui_spacer(...) #1

declare dso_local i64 @ui_button(i8*) #1

declare dso_local i32 @ui_panel_end(...) #1

declare dso_local i64 @ui_input(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @load_dir(i8*) #1

declare dso_local i32 @fz_snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @bump_file_version(i32) #1

declare dso_local i32 @ui_list_begin(i32*, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @ui_list_item(i32*, %struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @ui_input_init(%struct.TYPE_7__*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ui_list_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
