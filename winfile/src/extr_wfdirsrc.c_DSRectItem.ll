; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdirsrc.c_DSRectItem.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdirsrc.c_DSRectItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@hwndDragging = common dso_local global i64 0, align 8
@hwndStatus = common dso_local global i64 0, align 8
@SB_SETTEXT = common dso_local global i32 0, align 4
@SBT_NOBORDERS = common dso_local global i32 0, align 4
@szNULL = common dso_local global i64 0, align 8
@FS_GETDIRECTORY = common dso_local global i32 0, align 4
@SST_RESOURCE = common dso_local global i32 0, align 4
@SST_FORMAT = common dso_local global i32 0, align 4
@fShowSourceBitmaps = common dso_local global i64 0, align 8
@IDS_DRAG_COPYING = common dso_local global i64 0, align 8
@IDS_DRAG_MOVING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@LB_GETSEL = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@ATTR_DIR = common dso_local global i32 0, align 4
@ATTR_PARENT = common dso_local global i32 0, align 4
@IDS_DRAG_EXECUTING = common dso_local global i64 0, align 8
@LB_GETITEMRECT = common dso_local global i32 0, align 4
@COLOR_WINDOW = common dso_local global i32 0, align 4
@COLOR_WINDOWFRAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DSRectItem(i64 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %22 = load i32, i32* @MAXPATHLEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %17, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %18, align 8
  store i32* null, i32** %19, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %71

28:                                               ; preds = %4
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @hwndDragging, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31, %28
  %36 = load i64, i64* @hwndStatus, align 8
  %37 = load i32, i32* @SB_SETTEXT, align 4
  %38 = load i32, i32* @SBT_NOBORDERS, align 4
  %39 = or i32 %38, 255
  %40 = load i64, i64* @szNULL, align 8
  %41 = call i64 @SendMessage(i64 %36, i32 %37, i32 %39, i64 %40)
  %42 = load i64, i64* @hwndStatus, align 8
  %43 = call i32 @UpdateWindow(i64 %42)
  br label %69

44:                                               ; preds = %31
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @GetParent(i64 %45)
  %47 = load i32, i32* @FS_GETDIRECTORY, align 4
  %48 = call i32 @COUNTOF(i32* %25)
  %49 = ptrtoint i32* %25 to i64
  %50 = call i64 @SendMessage(i64 %46, i32 %47, i32 %48, i64 %49)
  %51 = call i32 @StripBackslash(i32* %25)
  %52 = load i32, i32* @SBT_NOBORDERS, align 4
  %53 = or i32 %52, 255
  %54 = load i32, i32* @SST_RESOURCE, align 4
  %55 = load i32, i32* @SST_FORMAT, align 4
  %56 = or i32 %54, %55
  %57 = load i64, i64* @fShowSourceBitmaps, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = load i64, i64* @IDS_DRAG_COPYING, align 8
  br label %63

61:                                               ; preds = %44
  %62 = load i64, i64* @IDS_DRAG_MOVING, align 8
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i64 [ %60, %59 ], [ %62, %61 ]
  %65 = inttoptr i64 %64 to i32*
  %66 = call i32 @SetStatusText(i32 %53, i32 %56, i32* %65, i32* %25)
  %67 = load i64, i64* @hwndStatus, align 8
  %68 = call i32 @UpdateWindow(i64 %67)
  br label %69

69:                                               ; preds = %63, %35
  %70 = load i64, i64* @FALSE, align 8
  store i64 %70, i64* %5, align 8
  store i32 1, i32* %21, align 4
  br label %247

71:                                               ; preds = %4
  %72 = load i64, i64* %6, align 8
  %73 = load i32, i32* @LB_GETSEL, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @SendMessage(i64 %72, i32 %73, i32 %74, i64 0)
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %71
  %79 = load i64, i64* @hwndDragging, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %125, %82
  %84 = load i64, i64* @hwndStatus, align 8
  %85 = load i32, i32* @SB_SETTEXT, align 4
  %86 = load i32, i32* @SBT_NOBORDERS, align 4
  %87 = or i32 %86, 255
  %88 = load i64, i64* @szNULL, align 8
  %89 = call i64 @SendMessage(i64 %84, i32 %85, i32 %87, i64 %88)
  %90 = load i64, i64* @hwndStatus, align 8
  %91 = call i32 @UpdateWindow(i64 %90)
  %92 = load i64, i64* @FALSE, align 8
  store i64 %92, i64* %5, align 8
  store i32 1, i32* %21, align 4
  br label %247

93:                                               ; preds = %78, %71
  %94 = load i64, i64* %6, align 8
  %95 = load i32, i32* @LB_GETTEXT, align 4
  %96 = load i32, i32* %7, align 4
  %97 = ptrtoint %struct.TYPE_3__** %16 to i64
  %98 = call i64 @SendMessage(i64 %94, i32 %95, i32 %96, i64 %97)
  %99 = load i64, i64* @LB_ERR, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %104, label %101

101:                                              ; preds = %93
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %103 = icmp ne %struct.TYPE_3__* %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %101, %93
  %105 = load i64, i64* @FALSE, align 8
  store i64 %105, i64* %5, align 8
  store i32 1, i32* %21, align 4
  br label %247

106:                                              ; preds = %101
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @ATTR_DIR, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %152, label %113

113:                                              ; preds = %106
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %115 = call i32* @MemGetFileName(%struct.TYPE_3__* %114)
  %116 = call i32* @IsProgramFile(i32* %115)
  store i32* %116, i32** %19, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %152, label %118

118:                                              ; preds = %113
  %119 = load i64, i64* @hwndDragging, align 8
  %120 = load i64, i64* %6, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = load i64, i64* %9, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122, %118
  br label %83

126:                                              ; preds = %122
  %127 = load i64, i64* %6, align 8
  %128 = call i64 @GetParent(i64 %127)
  %129 = load i32, i32* @FS_GETDIRECTORY, align 4
  %130 = call i32 @COUNTOF(i32* %25)
  %131 = ptrtoint i32* %25 to i64
  %132 = call i64 @SendMessage(i64 %128, i32 %129, i32 %130, i64 %131)
  %133 = call i32 @StripBackslash(i32* %25)
  %134 = load i32, i32* @SBT_NOBORDERS, align 4
  %135 = or i32 %134, 255
  %136 = load i32, i32* @SST_FORMAT, align 4
  %137 = load i32, i32* @SST_RESOURCE, align 4
  %138 = or i32 %136, %137
  %139 = load i64, i64* @fShowSourceBitmaps, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %126
  %142 = load i64, i64* @IDS_DRAG_COPYING, align 8
  br label %145

143:                                              ; preds = %126
  %144 = load i64, i64* @IDS_DRAG_MOVING, align 8
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i64 [ %142, %141 ], [ %144, %143 ]
  %147 = inttoptr i64 %146 to i32*
  %148 = call i32 @SetStatusText(i32 %135, i32 %138, i32* %147, i32* %25)
  %149 = load i64, i64* @hwndStatus, align 8
  %150 = call i32 @UpdateWindow(i64 %149)
  %151 = load i64, i64* @FALSE, align 8
  store i64 %151, i64* %5, align 8
  store i32 1, i32* %21, align 4
  br label %247

152:                                              ; preds = %113, %106
  %153 = load i64, i64* %9, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %152
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @ATTR_PARENT, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %155, %152
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %164 = call i32* @MemGetFileName(%struct.TYPE_3__* %163)
  store i32* %164, i32** %20, align 8
  br label %174

165:                                              ; preds = %155
  %166 = load i64, i64* %6, align 8
  %167 = call i64 @GetParent(i64 %166)
  %168 = load i32, i32* @FS_GETDIRECTORY, align 4
  %169 = call i32 @COUNTOF(i32* %25)
  %170 = ptrtoint i32* %25 to i64
  %171 = call i64 @SendMessage(i64 %167, i32 %168, i32 %169, i64 %170)
  %172 = call i32 @StripBackslash(i32* %25)
  %173 = call i32 @StripFilespec(i32* %25)
  store i32* %25, i32** %20, align 8
  br label %174

174:                                              ; preds = %165, %162
  %175 = load i64, i64* %8, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %203

177:                                              ; preds = %174
  %178 = load i32, i32* @SBT_NOBORDERS, align 4
  %179 = or i32 %178, 255
  %180 = load i32, i32* @SST_FORMAT, align 4
  %181 = load i32, i32* @SST_RESOURCE, align 4
  %182 = or i32 %180, %181
  %183 = load i32*, i32** %19, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = load i64, i64* @IDS_DRAG_EXECUTING, align 8
  br label %196

187:                                              ; preds = %177
  %188 = load i64, i64* @fShowSourceBitmaps, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = load i64, i64* @IDS_DRAG_COPYING, align 8
  br label %194

192:                                              ; preds = %187
  %193 = load i64, i64* @IDS_DRAG_MOVING, align 8
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi i64 [ %191, %190 ], [ %193, %192 ]
  br label %196

196:                                              ; preds = %194, %185
  %197 = phi i64 [ %186, %185 ], [ %195, %194 ]
  %198 = inttoptr i64 %197 to i32*
  %199 = load i32*, i32** %20, align 8
  %200 = call i32 @SetStatusText(i32 %179, i32 %182, i32* %198, i32* %199)
  %201 = load i64, i64* @hwndStatus, align 8
  %202 = call i32 @UpdateWindow(i64 %201)
  br label %203

203:                                              ; preds = %196, %174
  %204 = load i64, i64* %6, align 8
  %205 = load i32, i32* @LB_GETITEMRECT, align 4
  %206 = load i32, i32* %7, align 4
  %207 = ptrtoint i32* %10 to i64
  %208 = call i64 @SendMessage(i64 %204, i32 %205, i32 %206, i64 %207)
  %209 = load i64, i64* %6, align 8
  %210 = call i32 @GetClientRect(i64 %209, i32* %11)
  %211 = call i32 @IntersectRect(i32* %10, i32* %10, i32* %11)
  %212 = load i64, i64* %8, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %239

214:                                              ; preds = %203
  %215 = load i64, i64* %6, align 8
  %216 = call i32 @GetDC(i64 %215)
  store i32 %216, i32* %12, align 4
  %217 = load i64, i64* %13, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load i32, i32* @COLOR_WINDOW, align 4
  store i32 %220, i32* %14, align 4
  %221 = call i32 @InflateRect(i32* %10, i32 -1, i32 -1)
  br label %224

222:                                              ; preds = %214
  %223 = load i32, i32* @COLOR_WINDOWFRAME, align 4
  store i32 %223, i32* %14, align 4
  br label %224

224:                                              ; preds = %222, %219
  %225 = load i32, i32* %14, align 4
  %226 = call i32 @GetSysColor(i32 %225)
  %227 = call i32 @CreateSolidBrush(i32 %226)
  store i32 %227, i32* %15, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %224
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* %15, align 4
  %232 = call i32 @FrameRect(i32 %230, i32* %10, i32 %231)
  %233 = load i32, i32* %15, align 4
  %234 = call i32 @DeleteObject(i32 %233)
  br label %235

235:                                              ; preds = %229, %224
  %236 = load i64, i64* %6, align 8
  %237 = load i32, i32* %12, align 4
  %238 = call i32 @ReleaseDC(i64 %236, i32 %237)
  br label %245

239:                                              ; preds = %203
  %240 = load i64, i64* %6, align 8
  %241 = load i64, i64* @FALSE, align 8
  %242 = call i32 @InvalidateRect(i64 %240, i32* %10, i64 %241)
  %243 = load i64, i64* %6, align 8
  %244 = call i32 @UpdateWindow(i64 %243)
  br label %245

245:                                              ; preds = %239, %235
  %246 = load i64, i64* @TRUE, align 8
  store i64 %246, i64* %5, align 8
  store i32 1, i32* %21, align 4
  br label %247

247:                                              ; preds = %245, %145, %104, %83, %69
  %248 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %248)
  %249 = load i64, i64* %5, align 8
  ret i64 %249
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SendMessage(i64, i32, i32, i64) #2

declare dso_local i32 @UpdateWindow(i64) #2

declare dso_local i64 @GetParent(i64) #2

declare dso_local i32 @COUNTOF(i32*) #2

declare dso_local i32 @StripBackslash(i32*) #2

declare dso_local i32 @SetStatusText(i32, i32, i32*, i32*) #2

declare dso_local i32* @IsProgramFile(i32*) #2

declare dso_local i32* @MemGetFileName(%struct.TYPE_3__*) #2

declare dso_local i32 @StripFilespec(i32*) #2

declare dso_local i32 @GetClientRect(i64, i32*) #2

declare dso_local i32 @IntersectRect(i32*, i32*, i32*) #2

declare dso_local i32 @GetDC(i64) #2

declare dso_local i32 @InflateRect(i32*, i32, i32) #2

declare dso_local i32 @CreateSolidBrush(i32) #2

declare dso_local i32 @GetSysColor(i32) #2

declare dso_local i32 @FrameRect(i32, i32*, i32) #2

declare dso_local i32 @DeleteObject(i32) #2

declare dso_local i32 @ReleaseDC(i64, i32) #2

declare dso_local i32 @InvalidateRect(i64, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
