; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_read.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.diff_state = type { i32, i32, i32, i32, i32, i64 }
%struct.line = type { i32, %struct.box* }
%struct.box = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@LINE_DIFF_ADD2 = common dso_local global i32 0, align 4
@LINE_DIFF_DEL2 = common dso_local global i32 0, align 4
@LINE_DEFAULT = common dso_local global i32 0, align 4
@LINE_DIFF_DEL_FILE = common dso_local global i32 0, align 4
@LINE_DIFF_START = common dso_local global i32 0, align 4
@LINE_DIFF_DEL = common dso_local global i32 0, align 4
@LINE_DIFF_ADD_FILE = common dso_local global i32 0, align 4
@LINE_DIFF_ADD = common dso_local global i32 0, align 4
@LINE_COMMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"    \00", align 1
@LINE_DIFF_HEADER = common dso_local global i32 0, align 4
@LINE_DIFF_CHUNK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"@@\00", align 1
@LINE_DIFF_STAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_common_read(%struct.view* %0, i8* %1, %struct.diff_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.diff_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.line*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.line*, align 8
  %13 = alloca %struct.box*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.diff_state* %2, %struct.diff_state** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @get_line_type(i8* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.diff_state*, %struct.diff_state** %7, align 8
  %17 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @LINE_DIFF_ADD2, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @LINE_DIFF_DEL2, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @LINE_DEFAULT, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %28, %24, %3
  %31 = load %struct.diff_state*, %struct.diff_state** %7, align 8
  %32 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @LINE_DIFF_DEL_FILE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @LINE_DIFF_START, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @LINE_DIFF_DEL, align 4
  store i32 %44, i32* %8, align 4
  br label %52

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @LINE_DIFF_ADD_FILE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @LINE_DIFF_ADD, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %45
  br label %52

52:                                               ; preds = %51, %43
  br label %53

53:                                               ; preds = %52, %30
  %54 = load %struct.view*, %struct.view** %5, align 8
  %55 = getelementptr inbounds %struct.view, %struct.view* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @LINE_COMMIT, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.diff_state*, %struct.diff_state** %7, align 8
  %64 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %63, i32 0, i32 2
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %58, %53
  %66 = load %struct.diff_state*, %struct.diff_state** %7, align 8
  %67 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 32
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.diff_state*, %struct.diff_state** %7, align 8
  %84 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %83, i32 0, i32 2
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %76, %70, %65
  %86 = load %struct.diff_state*, %struct.diff_state** %7, align 8
  %87 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load %struct.view*, %struct.view** %5, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = call i64 @diff_common_add_diff_stat(%struct.view* %91, i8* %92, i32 0)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 1, i32* %4, align 4
  br label %245

96:                                               ; preds = %90
  %97 = load %struct.diff_state*, %struct.diff_state** %7, align 8
  %98 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %97, i32 0, i32 2
  store i32 0, i32* %98, align 8
  br label %107

99:                                               ; preds = %85
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @LINE_DIFF_START, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.diff_state*, %struct.diff_state** %7, align 8
  %105 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %104, i32 0, i32 2
  store i32 1, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %99
  br label %107

107:                                              ; preds = %106, %96
  %108 = load %struct.diff_state*, %struct.diff_state** %7, align 8
  %109 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %132, label %112

112:                                              ; preds = %107
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @prefixcmp(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %132, label %116

116:                                              ; preds = %112
  %117 = load %struct.view*, %struct.view** %5, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* @LINE_DEFAULT, align 4
  %120 = call %struct.line* @add_line_text(%struct.view* %117, i8* %118, i32 %119)
  store %struct.line* %120, %struct.line** %9, align 8
  %121 = load %struct.line*, %struct.line** %9, align 8
  %122 = icmp ne %struct.line* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load %struct.line*, %struct.line** %9, align 8
  %125 = getelementptr inbounds %struct.line, %struct.line* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  br label %126

126:                                              ; preds = %123, %116
  %127 = load %struct.diff_state*, %struct.diff_state** %7, align 8
  %128 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %127, i32 0, i32 4
  store i32 1, i32* %128, align 8
  %129 = load %struct.line*, %struct.line** %9, align 8
  %130 = icmp ne %struct.line* %129, null
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %4, align 4
  br label %245

132:                                              ; preds = %112, %107
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @LINE_DIFF_HEADER, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load %struct.diff_state*, %struct.diff_state** %7, align 8
  %138 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %137, i32 0, i32 3
  store i32 1, i32* %138, align 4
  %139 = load %struct.diff_state*, %struct.diff_state** %7, align 8
  %140 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  br label %240

141:                                              ; preds = %132
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @LINE_DIFF_CHUNK, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %216

145:                                              ; preds = %141
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 @chunk_header_marker_length(i8* %146)
  store i32 %147, i32* %10, align 4
  %148 = load i8*, i8** %6, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = call i8* @strstr(i8* %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %152, i8** %11, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %164

155:                                              ; preds = %145
  %156 = load %struct.view*, %struct.view** %5, align 8
  %157 = load %struct.view*, %struct.view** %5, align 8
  %158 = getelementptr inbounds %struct.view, %struct.view* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i8*, i8** %6, align 8
  %161 = load i32, i32* @LINE_DIFF_CHUNK, align 4
  %162 = load i32, i32* %10, align 4
  %163 = call %struct.line* @add_line_text_at(%struct.view* %156, i32 %159, i8* %160, i32 %161, i32 %162)
  br label %165

164:                                              ; preds = %145
  br label %165

165:                                              ; preds = %164, %155
  %166 = phi %struct.line* [ %163, %155 ], [ null, %164 ]
  store %struct.line* %166, %struct.line** %12, align 8
  %167 = load %struct.line*, %struct.line** %12, align 8
  %168 = icmp ne %struct.line* %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  store i32 0, i32* %4, align 4
  br label %245

170:                                              ; preds = %165
  %171 = load %struct.line*, %struct.line** %12, align 8
  %172 = getelementptr inbounds %struct.line, %struct.line* %171, i32 0, i32 1
  %173 = load %struct.box*, %struct.box** %172, align 8
  store %struct.box* %173, %struct.box** %13, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8*, i8** %6, align 8
  %179 = ptrtoint i8* %177 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = trunc i64 %181 to i32
  %183 = load %struct.box*, %struct.box** %13, align 8
  %184 = getelementptr inbounds %struct.box, %struct.box* %183, i32 0, i32 1
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  store i32 %182, i32* %187, align 4
  %188 = load i8*, i8** %11, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = call i32 @strlen(i8* %191)
  %193 = load %struct.box*, %struct.box** %13, align 8
  %194 = getelementptr inbounds %struct.box, %struct.box* %193, i32 0, i32 1
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 1
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  store i32 %192, i32* %197, align 4
  %198 = load i32, i32* @LINE_DIFF_STAT, align 4
  %199 = load %struct.box*, %struct.box** %13, align 8
  %200 = getelementptr inbounds %struct.box, %struct.box* %199, i32 0, i32 1
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = load %struct.box*, %struct.box** %13, align 8
  %203 = getelementptr inbounds %struct.box, %struct.box* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 1
  store i32 %198, i32* %208, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp sgt i32 %209, 2
  %211 = zext i1 %210 to i32
  %212 = load %struct.diff_state*, %struct.diff_state** %7, align 8
  %213 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  %214 = load %struct.diff_state*, %struct.diff_state** %7, align 8
  %215 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %214, i32 0, i32 1
  store i32 1, i32* %215, align 4
  store i32 1, i32* %4, align 4
  br label %245

216:                                              ; preds = %141
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @LINE_COMMIT, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = load %struct.diff_state*, %struct.diff_state** %7, align 8
  %222 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %221, i32 0, i32 1
  store i32 0, i32* %222, align 4
  br label %238

223:                                              ; preds = %216
  %224 = load %struct.diff_state*, %struct.diff_state** %7, align 8
  %225 = getelementptr inbounds %struct.diff_state, %struct.diff_state* %224, i32 0, i32 5
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %223
  %229 = load i8*, i8** %6, align 8
  %230 = call i64 @strchr(i8* %229, i32 27)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %228
  %233 = load %struct.view*, %struct.view** %5, align 8
  %234 = load i8*, i8** %6, align 8
  %235 = load i32, i32* %8, align 4
  %236 = call i32 @diff_common_highlight(%struct.view* %233, i8* %234, i32 %235)
  store i32 %236, i32* %4, align 4
  br label %245

237:                                              ; preds = %228, %223
  br label %238

238:                                              ; preds = %237, %220
  br label %239

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %239, %136
  %241 = load %struct.view*, %struct.view** %5, align 8
  %242 = load i8*, i8** %6, align 8
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @pager_common_read(%struct.view* %241, i8* %242, i32 %243, i32* null)
  store i32 %244, i32* %4, align 4
  br label %245

245:                                              ; preds = %240, %232, %170, %169, %126, %95
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare dso_local i32 @get_line_type(i8*) #1

declare dso_local i64 @diff_common_add_diff_stat(%struct.view*, i8*, i32) #1

declare dso_local i32 @prefixcmp(i8*, i8*) #1

declare dso_local %struct.line* @add_line_text(%struct.view*, i8*, i32) #1

declare dso_local i32 @chunk_header_marker_length(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local %struct.line* @add_line_text_at(%struct.view*, i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strchr(i8*, i32) #1

declare dso_local i32 @diff_common_highlight(%struct.view*, i8*, i32) #1

declare dso_local i32 @pager_common_read(%struct.view*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
