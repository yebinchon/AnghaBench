; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDITile.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDITile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@WM_MDIRESTORE = common dso_local global i32 0, align 4
@GW_OWNER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@MDITILE_SKIPDISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%u windows to tile\0A\00", align 1
@MDITILE_HORIZONTAL = common dso_local global i32 0, align 4
@SM_CYICONSPACING = common dso_local global i32 0, align 4
@SM_CYICON = common dso_local global i32 0, align 4
@SWP_DRAWFRAME = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@WS_SIZEBOX = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_6__*, i32)* @MDITile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MDITile(i64 %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_5__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %12, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* @WM_MDIRESTORE, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @SendMessageW(i64 %30, i32 %31, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %29, %3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %274

43:                                               ; preds = %37
  %44 = load i64, i64* %4, align 8
  %45 = call i64* @WIN_ListChildren(i64 %44)
  store i64* %45, i64** %7, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %274

48:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %120, %48
  %50 = load i64*, i64** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %123

56:                                               ; preds = %49
  %57 = load i64*, i64** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @IsWindowVisible(i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  br label %120

65:                                               ; preds = %56
  %66 = load i64*, i64** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @GW_OWNER, align 4
  %72 = call i64 @GetWindow(i64 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %120

75:                                               ; preds = %65
  %76 = load i64*, i64** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @IsIconic(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i64, i64* @TRUE, align 8
  store i64 %84, i64* %12, align 8
  br label %120

85:                                               ; preds = %75
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @MDITILE_SKIPDISABLED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load i64*, i64** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @IsWindowEnabled(i64 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %90
  br label %120

99:                                               ; preds = %90, %85
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 2
  %104 = mul nsw i32 %101, %103
  %105 = icmp eq i32 %100, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %106, %99
  %110 = load i64*, i64** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %7, align 8
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i64, i64* %115, i64 %118
  store i64 %114, i64* %119, align 8
  br label %120

120:                                              ; preds = %109, %98, %83, %74, %64
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %49

123:                                              ; preds = %49
  %124 = load i64*, i64** %7, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %265

132:                                              ; preds = %123
  %133 = load i64*, i64** %7, align 8
  store i64* %133, i64** %13, align 8
  %134 = load i64, i64* %4, align 8
  %135 = call i32 @GetClientRect(i64 %134, %struct.TYPE_5__* %14)
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = sdiv i32 %136, %137
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @MDITILE_HORIZONTAL, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %132
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %21, align 4
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %21, align 4
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %143, %132
  %148 = load i64, i64* %12, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %175

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @SM_CYICONSPACING, align 4
  %154 = call i32 @GetSystemMetrics(i32 %153)
  %155 = mul nsw i32 2, %154
  %156 = sub nsw i32 %152, %155
  %157 = load i32, i32* @SM_CYICON, align 4
  %158 = call i32 @GetSystemMetrics(i32 %157)
  %159 = sub nsw i32 %156, %158
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* @SM_CYICON, align 4
  %162 = call i32 @GetSystemMetrics(i32 %161)
  %163 = sub nsw i32 %160, %162
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp slt i32 %163, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %150
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  br label %172

170:                                              ; preds = %150
  %171 = load i32, i32* %16, align 4
  br label %172

172:                                              ; preds = %170, %167
  %173 = phi i32 [ %169, %167 ], [ %171, %170 ]
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %173, i32* %174, align 4
  br label %175

175:                                              ; preds = %172, %147
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %10, align 4
  %179 = sdiv i32 %177, %178
  store i32 %179, i32* %18, align 4
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %11, align 4
  %183 = sdiv i32 %181, %182
  store i32 %183, i32* %17, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %20, align 4
  br label %184

184:                                              ; preds = %261, %175
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* %11, align 4
  %187 = icmp sle i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load i64*, i64** %13, align 8
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br label %192

192:                                              ; preds = %188, %184
  %193 = phi i1 [ false, %184 ], [ %191, %188 ]
  br i1 %193, label %194, label %264

194:                                              ; preds = %192
  %195 = load i32, i32* %20, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %194
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %21, align 4
  %201 = sub nsw i32 %199, %200
  store i32 %201, i32* %10, align 4
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %10, align 4
  %205 = sdiv i32 %203, %204
  store i32 %205, i32* %18, align 4
  br label %206

206:                                              ; preds = %198, %194
  store i32 0, i32* %16, align 4
  store i32 1, i32* %19, align 4
  br label %207

207:                                              ; preds = %252, %206
  %208 = load i32, i32* %19, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp sle i32 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = load i64*, i64** %13, align 8
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br label %215

215:                                              ; preds = %211, %207
  %216 = phi i1 [ false, %207 ], [ %214, %211 ]
  br i1 %216, label %217, label %257

217:                                              ; preds = %215
  %218 = load i32, i32* @SWP_DRAWFRAME, align 4
  %219 = load i32, i32* @SWP_NOACTIVATE, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @SWP_NOZORDER, align 4
  %222 = or i32 %220, %221
  store i32 %222, i32* %22, align 4
  %223 = load i64*, i64** %7, align 8
  %224 = load i32, i32* %21, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* @GWL_STYLE, align 4
  %229 = call i32 @GetWindowLongW(i64 %227, i32 %228)
  store i32 %229, i32* %23, align 4
  %230 = load i32, i32* %23, align 4
  %231 = load i32, i32* @WS_SIZEBOX, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %217
  %235 = load i32, i32* @SWP_NOSIZE, align 4
  %236 = load i32, i32* %22, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %22, align 4
  br label %238

238:                                              ; preds = %234, %217
  %239 = load i64*, i64** %13, align 8
  %240 = load i64, i64* %239, align 8
  %241 = load i32, i32* %15, align 4
  %242 = load i32, i32* %16, align 4
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* %18, align 4
  %245 = load i32, i32* %22, align 4
  %246 = call i32 @SetWindowPos(i64 %240, i32 0, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245)
  %247 = load i32, i32* %18, align 4
  %248 = load i32, i32* %16, align 4
  %249 = add nsw i32 %248, %247
  store i32 %249, i32* %16, align 4
  %250 = load i64*, i64** %13, align 8
  %251 = getelementptr inbounds i64, i64* %250, i32 1
  store i64* %251, i64** %13, align 8
  br label %252

252:                                              ; preds = %238
  %253 = load i32, i32* %19, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %19, align 4
  %255 = load i32, i32* %21, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %21, align 4
  br label %207

257:                                              ; preds = %215
  %258 = load i32, i32* %17, align 4
  %259 = load i32, i32* %15, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* %15, align 4
  br label %261

261:                                              ; preds = %257
  %262 = load i32, i32* %20, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %20, align 4
  br label %184

264:                                              ; preds = %192
  br label %265

265:                                              ; preds = %264, %123
  %266 = call i32 (...) @GetProcessHeap()
  %267 = load i64*, i64** %7, align 8
  %268 = call i32 @HeapFree(i32 %266, i32 0, i64* %267)
  %269 = load i64, i64* %12, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %265
  %272 = load i64, i64* %4, align 8
  %273 = call i32 @ArrangeIconicWindows(i64 %272)
  br label %274

274:                                              ; preds = %42, %47, %271, %265
  ret void
}

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i64* @WIN_ListChildren(i64) #1

declare dso_local i32 @IsWindowVisible(i64) #1

declare dso_local i64 @GetWindow(i64, i32) #1

declare dso_local i64 @IsIconic(i64) #1

declare dso_local i32 @IsWindowEnabled(i64) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @GetClientRect(i64, %struct.TYPE_5__*) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @GetWindowLongW(i64, i32) #1

declare dso_local i32 @SetWindowPos(i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ArrangeIconicWindows(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
