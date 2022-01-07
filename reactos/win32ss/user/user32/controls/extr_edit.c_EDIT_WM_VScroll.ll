; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_VScroll.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_VScroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@ES_MULTILINE = common dso_local global i32 0, align 4
@ES_AUTOVSCROLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"action %d (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SB_LINEUP\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"SB_LINEDOWN\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"SB_PAGEUP\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"SB_PAGEDOWN\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"SB_TOP\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"SB_BOTTOM\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"SB_THUMBTRACK %d\0A\00", align 1
@EF_VSCROLL_TRACK = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"line_count=%d, y_offset=%d, pos=%d, dy = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"SB_THUMBPOSITION %d\0A\00", align 1
@EN_VSCROLL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"SB_ENDSCROLL\0A\00", align 1
@GWL_STYLE = common dso_local global i32 0, align 4
@SB_VERT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"EM_GETTHUMB: returning %ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"EM_LINESCROLL %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"undocumented WM_VSCROLL action %d (0x%04x), please report\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32)* @EDIT_WM_VScroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_WM_VScroll(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ES_MULTILINE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %260

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %260

30:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %248 [
    i32 133, label %32
    i32 134, label %32
    i32 131, label %32
    i32 132, label %32
    i32 128, label %54
    i32 136, label %60
    i32 129, label %70
    i32 130, label %131
    i32 135, label %202
    i32 138, label %204
    i32 137, label %244
  ]

32:                                               ; preds = %30, %30, %30, %30
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 133
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %48

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 134
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %46

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 131
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)
  br label %46

46:                                               ; preds = %41, %40
  %47 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %40 ], [ %45, %41 ]
  br label %48

48:                                               ; preds = %46, %36
  %49 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %36 ], [ %47, %46 ]
  %50 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %33, i8* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @EDIT_EM_Scroll(%struct.TYPE_8__* %51, i32 %52)
  store i32 0, i32* %4, align 4
  br label %260

54:                                               ; preds = %30
  %55 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %252

60:                                               ; preds = %30
  %61 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %65, %68
  store i32 %69, i32* %8, align 4
  br label %252

70:                                               ; preds = %30
  %71 = load i32, i32* %7, align 4
  %72 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EF_VSCROLL_TRACK, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @WS_VSCROLL, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %70
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %85, %88
  store i32 %89, i32* %8, align 4
  br label %130

90:                                               ; preds = %70
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = icmp sgt i32 %94, 100
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %90
  store i32 0, i32* %4, align 4
  br label %260

97:                                               ; preds = %93
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = call i32 @get_vertical_line_count(%struct.TYPE_8__* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sub nsw i32 %103, %104
  %106 = mul nsw i32 %100, %105
  %107 = sdiv i32 %106, 100
  store i32 %107, i32* %10, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %97
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %113, %116
  br label %119

118:                                              ; preds = %97
  br label %119

119:                                              ; preds = %118, %112
  %120 = phi i32 [ %117, %112 ], [ 0, %118 ]
  store i32 %120, i32* %8, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %123, i32 %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %119, %84
  br label %252

131:                                              ; preds = %30
  %132 = load i32, i32* %7, align 4
  %133 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* @EF_VSCROLL_TRACK, align 4
  %135 = xor i32 %134, -1
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @WS_VSCROLL, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %131
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %147, %150
  store i32 %151, i32* %8, align 4
  br label %192

152:                                              ; preds = %131
  %153 = load i32, i32* %7, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %7, align 4
  %157 = icmp sgt i32 %156, 100
  br i1 %157, label %158, label %159

158:                                              ; preds = %155, %152
  store i32 0, i32* %4, align 4
  br label %260

159:                                              ; preds = %155
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %161 = call i32 @get_vertical_line_count(%struct.TYPE_8__* %160)
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %11, align 4
  %167 = sub nsw i32 %165, %166
  %168 = mul nsw i32 %162, %167
  %169 = sdiv i32 %168, 100
  store i32 %169, i32* %12, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %159
  %175 = load i32, i32* %12, align 4
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %175, %178
  br label %181

180:                                              ; preds = %159
  br label %181

181:                                              ; preds = %180, %174
  %182 = phi i32 [ %179, %174 ], [ 0, %180 ]
  store i32 %182, i32* %8, align 4
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %185, i32 %188, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %181, %146
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %192
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %197 = call i32 @EDIT_UpdateScrollInfo(%struct.TYPE_8__* %196)
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %199 = load i32, i32* @EN_VSCROLL, align 4
  %200 = call i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_8__* %198, i32 %199)
  br label %201

201:                                              ; preds = %195, %192
  br label %252

202:                                              ; preds = %30
  %203 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %252

204:                                              ; preds = %30
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @GWL_STYLE, align 4
  %209 = call i32 @GetWindowLongW(i32 %207, i32 %208)
  %210 = load i32, i32* @WS_VSCROLL, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %204
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @SB_VERT, align 4
  %218 = call i32 @GetScrollPos(i32 %216, i32 %217)
  store i32 %218, i32* %13, align 4
  br label %240

219:                                              ; preds = %204
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %221 = call i32 @get_vertical_line_count(%struct.TYPE_8__* %220)
  store i32 %221, i32* %14, align 4
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %219
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = mul nsw i32 %229, 100
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %14, align 4
  %235 = sub nsw i32 %233, %234
  %236 = sdiv i32 %230, %235
  br label %238

237:                                              ; preds = %219
  br label %238

238:                                              ; preds = %237, %226
  %239 = phi i32 [ %236, %226 ], [ 0, %237 ]
  store i32 %239, i32* %13, align 4
  br label %240

240:                                              ; preds = %238, %213
  %241 = load i32, i32* %13, align 4
  %242 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %241)
  %243 = load i32, i32* %13, align 4
  store i32 %243, i32* %4, align 4
  br label %260

244:                                              ; preds = %30
  %245 = load i32, i32* %7, align 4
  %246 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %245)
  %247 = load i32, i32* %7, align 4
  store i32 %247, i32* %8, align 4
  br label %252

248:                                              ; preds = %30
  %249 = load i32, i32* %6, align 4
  %250 = load i32, i32* %6, align 4
  %251 = call i32 @ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i32 %249, i32 %250)
  store i32 0, i32* %4, align 4
  br label %260

252:                                              ; preds = %244, %202, %201, %130, %60, %54
  %253 = load i32, i32* %8, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %257 = load i32, i32* %8, align 4
  %258 = call i32 @EDIT_EM_LineScroll(%struct.TYPE_8__* %256, i32 0, i32 %257)
  br label %259

259:                                              ; preds = %255, %252
  store i32 0, i32* %4, align 4
  br label %260

260:                                              ; preds = %259, %248, %240, %158, %96, %48, %29, %21
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @EDIT_EM_Scroll(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @get_vertical_line_count(%struct.TYPE_8__*) #1

declare dso_local i32 @EDIT_UpdateScrollInfo(%struct.TYPE_8__*) #1

declare dso_local i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i32 @GetScrollPos(i32, i32) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

declare dso_local i32 @EDIT_EM_LineScroll(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
