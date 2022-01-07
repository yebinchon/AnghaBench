; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv_new/frontends/gui/extr_guiterm.c_GuiConsoleHandleSysMenuCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv_new/frontends/gui/extr_guiterm.c_GuiConsoleHandleSysMenuCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i64, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_22__, %struct.TYPE_18__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_24__ = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@CONSOLE_RUNNING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@CONSOLE_SELECTION_IN_PROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i32] [i32 77, i32 97, i32 114, i32 107, i32 32, i32 45, i32 32, i32 0], align 4
@CONSOLE_MOUSE_SELECTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i32] [i32 83, i32 101, i32 108, i32 101, i32 99, i32 116, i32 105, i32 111, i32 110, i32 32, i32 45, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Scrolling is not handled yet\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Finding is not handled yet\0A\00", align 1
@WM_SYSCOMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*, i64, i32)* @GuiConsoleHandleSysMenuCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GuiConsoleHandleSysMenuCommand(%struct.TYPE_23__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i64, i64* @TRUE, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %8, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %19 = load i32, i32* @CONSOLE_RUNNING, align 4
  %20 = load i64, i64* @TRUE, align 8
  %21 = call i32 @ConDrvValidateConsoleUnsafe(%struct.TYPE_25__* %18, i32 %19, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %7, align 8
  br label %196

25:                                               ; preds = %3
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %27 = call %struct.TYPE_24__* @ConDrvGetActiveScreenBuffer(%struct.TYPE_25__* %26)
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %9, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @GuiSendMenuEvent(%struct.TYPE_25__* %40, i64 %41)
  br label %192

43:                                               ; preds = %33, %25
  %44 = load i64, i64* %5, align 8
  switch i64 %44, label %189 [
    i64 132, label %45
    i64 134, label %106
    i64 131, label %109
    i64 129, label %112
    i64 130, label %177
    i64 133, label %179
    i64 135, label %181
    i64 128, label %185
  ]

45:                                               ; preds = %43
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 2
  %65 = bitcast %struct.TYPE_18__* %62 to i8*
  %66 = bitcast %struct.TYPE_18__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 8, i1 false)
  %67 = load i32, i32* @CONSOLE_SELECTION_IN_PROGRESS, align 4
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %67
  store i32 %72, i32* %70, align 4
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = call i32 @GuiConsoleUpdateSelection(%struct.TYPE_25__* %73, %struct.TYPE_18__* %76)
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, 8
  %84 = add i64 %83, 1
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = call i32* @ConsoleAllocHeap(i32 0, i32 %89)
  store i32* %90, i32** %10, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @wcscpy(i32* %91, i8* bitcast ([8 x i32]* @.str to i8*))
  %93 = load i32*, i32** %10, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @wcscat(i32* %93, i32 %97)
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = call i32 @SetWindowText(i32 %101, i32* %102)
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @ConsoleFreeHeap(i32* %104)
  br label %191

106:                                              ; preds = %43
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %108 = call i32 @GuiConsoleCopy(%struct.TYPE_23__* %107)
  br label %191

109:                                              ; preds = %43
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %111 = call i32 @GuiConsolePaste(%struct.TYPE_23__* %110)
  br label %191

112:                                              ; preds = %43
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  store i32 0, i32* %116, align 4
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 4
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 1
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 1
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* @CONSOLE_SELECTION_IN_PROGRESS, align 4
  %138 = load i32, i32* @CONSOLE_MOUSE_SELECTION, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %139
  store i32 %144, i32* %142, align 4
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 2
  %148 = call i32 @GuiConsoleUpdateSelection(%struct.TYPE_25__* %145, %struct.TYPE_18__* %147)
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 %153, 13
  %155 = add i64 %154, 1
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = mul i64 %158, 4
  %160 = trunc i64 %159 to i32
  %161 = call i32* @ConsoleAllocHeap(i32 0, i32 %160)
  store i32* %161, i32** %12, align 8
  %162 = load i32*, i32** %12, align 8
  %163 = call i32 @wcscpy(i32* %162, i8* bitcast ([13 x i32]* @.str.1 to i8*))
  %164 = load i32*, i32** %12, align 8
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @wcscat(i32* %164, i32 %168)
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32*, i32** %12, align 8
  %174 = call i32 @SetWindowText(i32 %172, i32* %173)
  %175 = load i32*, i32** %12, align 8
  %176 = call i32 @ConsoleFreeHeap(i32* %175)
  br label %191

177:                                              ; preds = %43
  %178 = call i32 @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %191

179:                                              ; preds = %43
  %180 = call i32 @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %191

181:                                              ; preds = %43
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %183 = load i64, i64* @TRUE, align 8
  %184 = call i32 @GuiConsoleShowConsoleProperties(%struct.TYPE_23__* %182, i64 %183)
  br label %191

185:                                              ; preds = %43
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %187 = load i64, i64* @FALSE, align 8
  %188 = call i32 @GuiConsoleShowConsoleProperties(%struct.TYPE_23__* %186, i64 %187)
  br label %191

189:                                              ; preds = %43
  %190 = load i64, i64* @FALSE, align 8
  store i64 %190, i64* %7, align 8
  br label %191

191:                                              ; preds = %189, %185, %181, %179, %177, %112, %109, %106, %45
  br label %192

192:                                              ; preds = %191, %39
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 0
  %195 = call i32 @LeaveCriticalSection(i32* %194)
  br label %196

196:                                              ; preds = %192, %23
  %197 = load i64, i64* %7, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %196
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @WM_SYSCOMMAND, align 4
  %204 = load i64, i64* %5, align 8
  %205 = load i32, i32* %6, align 4
  %206 = call i64 @DefWindowProcW(i32 %202, i32 %203, i64 %204, i32 %205)
  store i64 %206, i64* %7, align 8
  br label %207

207:                                              ; preds = %199, %196
  %208 = load i64, i64* %7, align 8
  ret i64 %208
}

declare dso_local i32 @ConDrvValidateConsoleUnsafe(%struct.TYPE_25__*, i32, i64) #1

declare dso_local %struct.TYPE_24__* @ConDrvGetActiveScreenBuffer(%struct.TYPE_25__*) #1

declare dso_local i32 @GuiSendMenuEvent(%struct.TYPE_25__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GuiConsoleUpdateSelection(%struct.TYPE_25__*, %struct.TYPE_18__*) #1

declare dso_local i32* @ConsoleAllocHeap(i32, i32) #1

declare dso_local i32 @wcscpy(i32*, i8*) #1

declare dso_local i32 @wcscat(i32*, i32) #1

declare dso_local i32 @SetWindowText(i32, i32*) #1

declare dso_local i32 @ConsoleFreeHeap(i32*) #1

declare dso_local i32 @GuiConsoleCopy(%struct.TYPE_23__*) #1

declare dso_local i32 @GuiConsolePaste(%struct.TYPE_23__*) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @GuiConsoleShowConsoleProperties(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i64 @DefWindowProcW(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
