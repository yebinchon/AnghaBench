; ModuleID = '/home/carl/AnghaBench/tig/src/extr_stage.c_stage_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_stage.c_stage_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.view = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.line = type { i32 }

@REQ_NONE = common dso_local global i32 0, align 4
@stage_line_type = common dso_local global i64 0, align 8
@LINE_STAT_UNTRACKED = common dso_local global i64 0, align 8
@stage_status = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [52 x i8] c"Staging single lines is not supported for new files\00", align 1
@LINE_DIFF_DEL = common dso_local global i32 0, align 4
@LINE_DIFF_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Please select a change to stage\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Staging is not supported for wrapped lines\00", align 1
@LINE_DIFF_CHUNK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"No chunks to split in sight\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"File has been deleted.\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Nothing to blame here\00", align 1
@REQ_VIEW_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32, %struct.line*)* @stage_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stage_request(%struct.view* %0, i32 %1, %struct.line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  %8 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.line* %2, %struct.line** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %199 [
    i32 129, label %10
    i32 130, label %18
    i32 131, label %26
    i32 132, label %68
    i32 135, label %86
    i32 133, label %126
    i32 128, label %128
    i32 134, label %194
  ]

10:                                               ; preds = %3
  %11 = load %struct.view*, %struct.view** %5, align 8
  %12 = load %struct.line*, %struct.line** %7, align 8
  %13 = call i32 @stage_update(%struct.view* %11, %struct.line* %12, i32 0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @REQ_NONE, align 4
  store i32 %16, i32* %4, align 4
  br label %217

17:                                               ; preds = %10
  br label %201

18:                                               ; preds = %3
  %19 = load %struct.view*, %struct.view** %5, align 8
  %20 = load %struct.line*, %struct.line** %7, align 8
  %21 = call i32 @stage_revert(%struct.view* %19, %struct.line* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @REQ_NONE, align 4
  store i32 %24, i32* %4, align 4
  br label %217

25:                                               ; preds = %18
  br label %201

26:                                               ; preds = %3
  %27 = load i64, i64* @stage_line_type, align 8
  %28 = load i64, i64* @LINE_STAT_UNTRACKED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i8, i8* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stage_status, i32 0, i32 0), align 8
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 65
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %26
  %35 = call i32 @report(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @REQ_NONE, align 4
  store i32 %36, i32* %4, align 4
  br label %217

37:                                               ; preds = %30
  %38 = load %struct.line*, %struct.line** %7, align 8
  %39 = getelementptr inbounds %struct.line, %struct.line* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @LINE_DIFF_DEL, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.line*, %struct.line** %7, align 8
  %45 = getelementptr inbounds %struct.line, %struct.line* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @LINE_DIFF_ADD, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = call i32 @report(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @REQ_NONE, align 4
  store i32 %51, i32* %4, align 4
  br label %217

52:                                               ; preds = %43, %37
  %53 = load %struct.view*, %struct.view** %5, align 8
  %54 = load %struct.line*, %struct.line** %7, align 8
  %55 = call i32 @stage_chunk_is_wrapped(%struct.view* %53, %struct.line* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = call i32 @report(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @REQ_NONE, align 4
  store i32 %59, i32* %4, align 4
  br label %217

60:                                               ; preds = %52
  %61 = load %struct.view*, %struct.view** %5, align 8
  %62 = load %struct.line*, %struct.line** %7, align 8
  %63 = call i32 @stage_update(%struct.view* %61, %struct.line* %62, i32 1)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @REQ_NONE, align 4
  store i32 %66, i32* %4, align 4
  br label %217

67:                                               ; preds = %60
  br label %201

68:                                               ; preds = %3
  %69 = load i64, i64* @stage_line_type, align 8
  %70 = load i64, i64* @LINE_STAT_UNTRACKED, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = load %struct.view*, %struct.view** %5, align 8
  %74 = load %struct.line*, %struct.line** %7, align 8
  %75 = load i32, i32* @LINE_DIFF_CHUNK, align 4
  %76 = call %struct.line* @find_prev_line_by_type(%struct.view* %73, %struct.line* %74, i32 %75)
  store %struct.line* %76, %struct.line** %7, align 8
  %77 = icmp ne %struct.line* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %72, %68
  %79 = call i32 @report(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @REQ_NONE, align 4
  store i32 %80, i32* %4, align 4
  br label %217

81:                                               ; preds = %72
  %82 = load %struct.view*, %struct.view** %5, align 8
  %83 = load %struct.line*, %struct.line** %7, align 8
  %84 = call i32 @stage_split_chunk(%struct.view* %82, %struct.line* %83)
  %85 = load i32, i32* @REQ_NONE, align 4
  store i32 %85, i32* %4, align 4
  br label %217

86:                                               ; preds = %3
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stage_status, i32 0, i32 1, i32 0), align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load %struct.view*, %struct.view** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.line*, %struct.line** %7, align 8
  %95 = call i32 @diff_common_edit(%struct.view* %92, i32 %93, %struct.line* %94)
  store i32 %95, i32* %4, align 4
  br label %217

96:                                               ; preds = %86
  %97 = load i8, i8* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stage_status, i32 0, i32 0), align 8
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 68
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = call i32 @report(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %102 = load i32, i32* @REQ_NONE, align 4
  store i32 %102, i32* %4, align 4
  br label %217

103:                                              ; preds = %96
  %104 = load i64, i64* @stage_line_type, align 8
  %105 = load i64, i64* @LINE_STAT_UNTRACKED, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stage_status, i32 0, i32 1, i32 0), align 8
  %109 = load %struct.line*, %struct.line** %7, align 8
  %110 = load %struct.view*, %struct.view** %5, align 8
  %111 = getelementptr inbounds %struct.view, %struct.view* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = sub i64 0, %113
  %115 = getelementptr inbounds %struct.line, %struct.line* %109, i64 %114
  %116 = getelementptr inbounds %struct.line, %struct.line* %115, i64 1
  %117 = ptrtoint %struct.line* %116 to i32
  %118 = call i32 @open_editor(i32* %108, i32 %117)
  br label %125

119:                                              ; preds = %103
  %120 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stage_status, i32 0, i32 1, i32 0), align 8
  %121 = load %struct.view*, %struct.view** %5, align 8
  %122 = load %struct.line*, %struct.line** %7, align 8
  %123 = call i32 @diff_get_lineno(%struct.view* %121, %struct.line* %122)
  %124 = call i32 @open_editor(i32* %120, i32 %123)
  br label %125

125:                                              ; preds = %119, %107
  br label %201

126:                                              ; preds = %3
  %127 = call i32 @load_refs(i32 1)
  br label %201

128:                                              ; preds = %3
  %129 = load i64, i64* @stage_line_type, align 8
  %130 = load i64, i64* @LINE_STAT_UNTRACKED, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = call i32 @report(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* @REQ_NONE, align 4
  store i32 %134, i32* %4, align 4
  br label %217

135:                                              ; preds = %128
  %136 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stage_status, i32 0, i32 1, i32 0), align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load %struct.view*, %struct.view** %5, align 8
  %142 = getelementptr inbounds %struct.view, %struct.view* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stage_status, i32 0, i32 1, i32 0), align 8
  %147 = call i32 @string_copy(i32 %145, i32* %146)
  br label %165

148:                                              ; preds = %135
  %149 = load %struct.view*, %struct.view** %5, align 8
  %150 = load %struct.line*, %struct.line** %7, align 8
  %151 = call i8* @diff_get_pathname(%struct.view* %149, %struct.line* %150)
  store i8* %151, i8** %8, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %164

154:                                              ; preds = %148
  %155 = load %struct.view*, %struct.view** %5, align 8
  %156 = getelementptr inbounds %struct.view, %struct.view* %155, i32 0, i32 1
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i8*, i8** %8, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = call i32 @strlen(i8* %161)
  %163 = call i32 @string_ncopy(i32 %159, i8* %160, i32 %162)
  br label %164

164:                                              ; preds = %154, %148
  br label %165

165:                                              ; preds = %164, %140
  %166 = load %struct.view*, %struct.view** %5, align 8
  %167 = getelementptr inbounds %struct.view, %struct.view* %166, i32 0, i32 1
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  store i32 0, i32* %171, align 4
  %172 = load %struct.view*, %struct.view** %5, align 8
  %173 = load %struct.line*, %struct.line** %7, align 8
  %174 = call i32 @diff_get_lineno(%struct.view* %172, %struct.line* %173)
  %175 = load %struct.view*, %struct.view** %5, align 8
  %176 = getelementptr inbounds %struct.view, %struct.view* %175, i32 0, i32 1
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  store i32 %174, i32* %178, align 8
  %179 = load %struct.view*, %struct.view** %5, align 8
  %180 = getelementptr inbounds %struct.view, %struct.view* %179, i32 0, i32 1
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %165
  %186 = load %struct.view*, %struct.view** %5, align 8
  %187 = getelementptr inbounds %struct.view, %struct.view* %186, i32 0, i32 1
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %185, %165
  %193 = load i32, i32* %6, align 4
  store i32 %193, i32* %4, align 4
  br label %217

194:                                              ; preds = %3
  %195 = load %struct.view*, %struct.view** %5, align 8
  %196 = load i32, i32* %6, align 4
  %197 = load %struct.line*, %struct.line** %7, align 8
  %198 = call i32 @diff_common_enter(%struct.view* %195, i32 %196, %struct.line* %197)
  store i32 %198, i32* %4, align 4
  br label %217

199:                                              ; preds = %3
  %200 = load i32, i32* %6, align 4
  store i32 %200, i32* %4, align 4
  br label %217

201:                                              ; preds = %126, %125, %67, %25, %17
  %202 = load %struct.view*, %struct.view** %5, align 8
  %203 = getelementptr inbounds %struct.view, %struct.view* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %201
  %207 = load %struct.view*, %struct.view** %5, align 8
  %208 = load i64, i64* @stage_line_type, align 8
  %209 = call i32 @stage_exists(%struct.view* %207, %struct.TYPE_7__* @stage_status, i64 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %206
  store i64 0, i64* @stage_line_type, align 8
  %212 = load i32, i32* @REQ_VIEW_CLOSE, align 4
  store i32 %212, i32* %4, align 4
  br label %217

213:                                              ; preds = %206, %201
  %214 = load %struct.view*, %struct.view** %5, align 8
  %215 = call i32 @refresh_view(%struct.view* %214)
  %216 = load i32, i32* @REQ_NONE, align 4
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %213, %211, %199, %194, %192, %132, %100, %91, %81, %78, %65, %57, %49, %34, %23, %15
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local i32 @stage_update(%struct.view*, %struct.line*, i32) #1

declare dso_local i32 @stage_revert(%struct.view*, %struct.line*) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @stage_chunk_is_wrapped(%struct.view*, %struct.line*) #1

declare dso_local %struct.line* @find_prev_line_by_type(%struct.view*, %struct.line*, i32) #1

declare dso_local i32 @stage_split_chunk(%struct.view*, %struct.line*) #1

declare dso_local i32 @diff_common_edit(%struct.view*, i32, %struct.line*) #1

declare dso_local i32 @open_editor(i32*, i32) #1

declare dso_local i32 @diff_get_lineno(%struct.view*, %struct.line*) #1

declare dso_local i32 @load_refs(i32) #1

declare dso_local i32 @string_copy(i32, i32*) #1

declare dso_local i8* @diff_get_pathname(%struct.view*, %struct.line*) #1

declare dso_local i32 @string_ncopy(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @diff_common_enter(%struct.view*, i32, %struct.line*) #1

declare dso_local i32 @stage_exists(%struct.view*, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @refresh_view(%struct.view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
