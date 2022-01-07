; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-file.c_ui_open_file.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-file.c_ui_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32*, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i8*, i64 }
%struct.TYPE_6__ = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@ui_open_file.last_click_time = internal global i32 0, align 4
@ui_open_file.last_click_sel = internal global i32 -1, align 4
@L = common dso_local global i32 0, align 4
@Y = common dso_local global i32 0, align 4
@NW = common dso_local global i32 0, align 4
@T = common dso_local global i32 0, align 4
@X = common dso_local global i32 0, align 4
@B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@ui = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@KEY_ESCAPE = common dso_local global i64 0, align 8
@fc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@R = common dso_local global i32 0, align 4
@NONE = common dso_local global i32 0, align 4
@CENTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Open\00", align 1
@KEY_ENTER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ALL = common dso_local global i32 0, align 4
@UI_INPUT_ACCEPT = common dso_local global i64 0, align 8
@BOTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%C %s\00", align 1
@ICON_FOLDER = common dso_local global i32 0, align 4
@ICON_DOCUMENT = common dso_local global i32 0, align 4
@GLUT_ELAPSED_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_open_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @PATH_MAX, align 4
  %10 = zext i32 %9 to i64
  store i32 0, i32* %4, align 4
  %11 = call i32 @ui_panel_begin(i32 0, i32 0, i32 4, i32 4, i32 1)
  %12 = load i32, i32* @L, align 4
  %13 = load i32, i32* @Y, align 4
  %14 = load i32, i32* @NW, align 4
  %15 = call i32 @ui_layout(i32 %12, i32 %13, i32 %14, i32 0, i32 0)
  %16 = call i32 @ui_panel_begin(i32 150, i32 0, i32 0, i32 0, i32 0)
  %17 = load i32, i32* @T, align 4
  %18 = load i32, i32* @X, align 4
  %19 = load i32, i32* @NW, align 4
  %20 = call i32 @ui_layout(i32 %17, i32 %18, i32 %19, i32 2, i32 2)
  %21 = call i32 (...) @list_drives()
  %22 = load i32, i32* @B, align 4
  %23 = load i32, i32* @X, align 4
  %24 = load i32, i32* @NW, align 4
  %25 = call i32 @ui_layout(i32 %22, i32 %23, i32 %24, i32 2, i32 2)
  %26 = call i64 @ui_button(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 2), align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %33 = load i64, i64* @KEY_ESCAPE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %1
  %36 = load i8*, i8** %2, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 0, i8* %37, align 1
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %31, %28
  %39 = call i32 (...) @ui_panel_end()
  %40 = load i32, i32* @T, align 4
  %41 = load i32, i32* @X, align 4
  %42 = load i32, i32* @NW, align 4
  %43 = call i32 @ui_layout(i32 %40, i32 %41, i32 %42, i32 2, i32 2)
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 3), align 4
  %45 = call i32 @ui_panel_begin(i32 0, i32 %44, i32 0, i32 0, i32 0)
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 0), align 8
  %47 = icmp uge i64 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %38
  %49 = load i32, i32* @R, align 4
  %50 = load i32, i32* @NONE, align 4
  %51 = load i32, i32* @CENTER, align 4
  %52 = call i32 @ui_layout(i32 %49, i32 %50, i32 %51, i32 0, i32 0)
  %53 = call i64 @ui_button(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 2), align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %60 = load i64, i64* @KEY_ENTER, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58, %48
  %63 = load i8*, i8** %2, align 8
  %64 = load i32, i32* @PATH_MAX, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 3), align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 4), align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 0), align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @fz_snprintf(i8* %63, i32 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %65, i8* %70)
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %62, %58, %55
  %73 = call i32 (...) @ui_spacer()
  br label %74

74:                                               ; preds = %72, %38
  %75 = load i32, i32* @ALL, align 4
  %76 = load i32, i32* @X, align 4
  %77 = load i32, i32* @CENTER, align 4
  %78 = call i32 @ui_layout(i32 %75, i32 %76, i32 %77, i32 0, i32 0)
  %79 = call i64 @ui_input(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 5), i32 0, i32 1)
  %80 = load i64, i64* @UI_INPUT_ACCEPT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 5, i32 0), align 8
  %84 = call i32 @load_dir(i8* %83)
  br label %85

85:                                               ; preds = %82, %74
  %86 = call i32 (...) @ui_panel_end()
  %87 = load i32, i32* @ALL, align 4
  %88 = load i32, i32* @BOTH, align 4
  %89 = load i32, i32* @NW, align 4
  %90 = call i32 @ui_layout(i32 %87, i32 %88, i32 %89, i32 2, i32 2)
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 1), align 8
  %92 = call i32 @ui_list_begin(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 2), i32 %91, i32 0, i32 0)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %176, %85
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 1), align 8
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %179

97:                                               ; preds = %93
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 4), align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %5, align 8
  %104 = load i32, i32* @PATH_MAX, align 4
  %105 = zext i32 %104 to i64
  %106 = call i8* @llvm.stacksave()
  store i8* %106, i8** %6, align 8
  %107 = alloca i8, i64 %105, align 16
  store i64 %105, i64* %7, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 4), align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %97
  %116 = trunc i64 %105 to i32
  %117 = load i32, i32* @ICON_FOLDER, align 4
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @fz_snprintf(i8* %107, i32 %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %117, i8* %118)
  br label %125

120:                                              ; preds = %97
  %121 = trunc i64 %105 to i32
  %122 = load i32, i32* @ICON_DOCUMENT, align 4
  %123 = load i8*, i8** %5, align 8
  %124 = call i32 @fz_snprintf(i8* %107, i32 %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %122, i8* %123)
  br label %125

125:                                              ; preds = %120, %115
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 4), align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 %128
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 0), align 8
  %133 = icmp eq i64 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i64 @ui_list_item(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 2), %struct.TYPE_5__* %129, i8* %107, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %174

137:                                              ; preds = %125
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  store i64 %139, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 0), align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 4), align 8
  %141 = load i32, i32* %3, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %137
  %148 = trunc i64 %105 to i32
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 3), align 8
  %150 = load i8*, i8** %5, align 8
  %151 = call i32 @fz_snprintf(i8* %107, i32 %148, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %149, i8* %150)
  %152 = call i32 @load_dir(i8* %107)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 1), align 8
  store i32 -1, i32* @ui_open_file.last_click_sel, align 4
  br label %173

153:                                              ; preds = %137
  %154 = load i32, i32* @GLUT_ELAPSED_TIME, align 4
  %155 = call i32 @glutGet(i32 %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @ui_open_file.last_click_sel, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %153
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @ui_open_file.last_click_time, align 4
  %162 = add nsw i32 %161, 250
  %163 = icmp slt i32 %160, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i8*, i8** %2, align 8
  %166 = load i32, i32* @PATH_MAX, align 4
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 3), align 8
  %168 = load i8*, i8** %5, align 8
  %169 = call i32 @fz_snprintf(i8* %165, i32 %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %167, i8* %168)
  store i32 1, i32* %4, align 4
  br label %170

170:                                              ; preds = %164, %159, %153
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* @ui_open_file.last_click_time, align 4
  %172 = load i32, i32* %3, align 4
  store i32 %172, i32* @ui_open_file.last_click_sel, align 4
  br label %173

173:                                              ; preds = %170, %147
  br label %174

174:                                              ; preds = %173, %125
  %175 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %175)
  br label %176

176:                                              ; preds = %174
  %177 = load i32, i32* %3, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %3, align 4
  br label %93

179:                                              ; preds = %93
  %180 = call i32 @ui_list_end(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fc, i32 0, i32 2))
  %181 = call i32 (...) @ui_panel_end()
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @ui_panel_begin(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ui_layout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @list_drives(...) #1

declare dso_local i64 @ui_button(i8*) #1

declare dso_local i32 @ui_panel_end(...) #1

declare dso_local i32 @fz_snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @ui_spacer(...) #1

declare dso_local i64 @ui_input(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @load_dir(i8*) #1

declare dso_local i32 @ui_list_begin(i32*, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @ui_list_item(i32*, %struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @glutGet(i32) #1

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
