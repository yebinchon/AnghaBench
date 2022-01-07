; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv_new/frontends/gui/extr_guiterm.c_GuiConsoleHandleNcCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv_new/frontends/gui/extr_guiterm.c_GuiConsoleHandleNcCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32*, i32, i32, i64, i32*, %struct.TYPE_11__, %struct.TYPE_16__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"GuiConsoleHandleNcCreate\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"GuiConsoleNcCreate: No GUI data\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TA_BASELINE = common dso_local global i32 0, align 4
@OEM_CHARSET = common dso_local global i32 0, align 4
@OUT_DEFAULT_PRECIS = common dso_local global i32 0, align 4
@CLIP_DEFAULT_PRECIS = common dso_local global i32 0, align 4
@NONANTIALIASED_QUALITY = common dso_local global i32 0, align 4
@FIXED_PITCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"GuiConsoleNcCreate: CreateFont failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"GuiConsoleNcCreate: GetDC failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"GuiConsoleNcCreate: SelectObject failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"GuiConsoleNcCreate: GetTextMetrics failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i32] [i32 82, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@GWLP_USERDATA = common dso_local global i32 0, align 4
@CONGUI_UPDATE_TIMER = common dso_local global i32 0, align 4
@CONGUI_UPDATE_TIME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"GuiConsoleHandleNcCreate - setting start event\0A\00", align 1
@WM_NCCREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_17__*)* @GuiConsoleHandleNcCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GuiConsoleHandleNcCreate(i32* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca %struct.TYPE_14__, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %6, align 8
  %17 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = icmp eq %struct.TYPE_15__* null, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = call i32 @DPRINT1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %212

23:                                               ; preds = %2
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 6
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %7, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @LOWORD(i32 %33)
  %35 = load i32, i32* @TA_BASELINE, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32, i32* @OEM_CHARSET, align 4
  %44 = load i32, i32* @OUT_DEFAULT_PRECIS, align 4
  %45 = load i32, i32* @CLIP_DEFAULT_PRECIS, align 4
  %46 = load i32, i32* @NONANTIALIASED_QUALITY, align 4
  %47 = load i32, i32* @FIXED_PITCH, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %47, %51
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32* @CreateFontW(i32 %34, i32 0, i32 0, i32 %35, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %52, i32 %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 4
  store i32* %57, i32** %59, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* null, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %23
  %65 = call i32 @DPRINT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @SetEvent(i32 %70)
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %3, align 4
  br label %212

73:                                               ; preds = %23
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32* @GetDC(i32* %76)
  store i32* %77, i32** %8, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = icmp eq i32* null, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %73
  %81 = call i32 @DPRINT1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @DeleteObject(i32* %84)
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @SetEvent(i32 %90)
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %3, align 4
  br label %212

93:                                               ; preds = %73
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = call i32* @SelectObject(i32* %94, i32* %97)
  store i32* %98, i32** %9, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = icmp eq i32* null, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %93
  %102 = call i32 @DPRINT1(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 @ReleaseDC(i32* %105, i32* %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @DeleteObject(i32* %110)
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  store i32* null, i32** %113, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @SetEvent(i32 %116)
  %118 = load i32, i32* @FALSE, align 4
  store i32 %118, i32* %3, align 4
  br label %212

119:                                              ; preds = %93
  %120 = load i32*, i32** %8, align 8
  %121 = call i32 @GetTextMetricsW(i32* %120, %struct.TYPE_13__* %10)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %144, label %123

123:                                              ; preds = %119
  %124 = call i32 @DPRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i32*, i32** %8, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = call i32* @SelectObject(i32* %125, i32* %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = call i32 @ReleaseDC(i32* %130, i32* %131)
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 4
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @DeleteObject(i32* %135)
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  store i32* null, i32** %138, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @SetEvent(i32 %141)
  %143 = load i32, i32* @FALSE, align 4
  store i32 %143, i32* %3, align 4
  br label %212

144:                                              ; preds = %119
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %150, %152
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 3
  store i64 %153, i64* %155, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = call i64 @GetTextExtentPoint32W(i32* %156, i8* bitcast ([2 x i32]* @.str.6 to i8*), i32 1, %struct.TYPE_14__* %11)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %144
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %159, %144
  %165 = load i32*, i32** %8, align 8
  %166 = load i32*, i32** %9, align 8
  %167 = call i32* @SelectObject(i32* %165, i32* %166)
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32*, i32** %8, align 8
  %172 = call i32 @ReleaseDC(i32* %170, i32* %171)
  %173 = load i32, i32* @TRUE, align 4
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  store i32 %173, i32* %177, align 4
  %178 = load i32, i32* @FALSE, align 4
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  store i32 %178, i32* %182, align 4
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* @GWLP_USERDATA, align 4
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %188 = ptrtoint %struct.TYPE_15__* %187 to i32
  %189 = call i32 @SetWindowLongPtrW(i32* %185, i32 %186, i32 %188)
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* @CONGUI_UPDATE_TIMER, align 4
  %194 = load i32, i32* @CONGUI_UPDATE_TIME, align 4
  %195 = call i32 @SetTimer(i32* %192, i32 %193, i32 %194, i32* null)
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @GuiConsoleCreateSysMenu(i32* %198)
  %200 = call i32 @DPRINT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @SetEvent(i32 %203)
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* @WM_NCCREATE, align 4
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %210 = ptrtoint %struct.TYPE_17__* %209 to i32
  %211 = call i32 @DefWindowProcW(i32* %207, i32 %208, i32 0, i32 %210)
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %164, %123, %101, %80, %64, %20
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32* @CreateFontW(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i32* @GetDC(i32*) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32* @SelectObject(i32*, i32*) #1

declare dso_local i32 @ReleaseDC(i32*, i32*) #1

declare dso_local i32 @GetTextMetricsW(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @GetTextExtentPoint32W(i32*, i8*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @SetWindowLongPtrW(i32*, i32, i32) #1

declare dso_local i32 @SetTimer(i32*, i32, i32, i32*) #1

declare dso_local i32 @GuiConsoleCreateSysMenu(i32*) #1

declare dso_local i32 @DefWindowProcW(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
