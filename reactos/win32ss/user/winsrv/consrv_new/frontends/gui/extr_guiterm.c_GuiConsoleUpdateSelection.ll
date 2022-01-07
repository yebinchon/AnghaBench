; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv_new/frontends/gui/extr_guiterm.c_GuiConsoleUpdateSelection.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv_new/frontends/gui/extr_guiterm.c_GuiConsoleUpdateSelection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__, %struct.TYPE_21__, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }

@CONSOLE_SELECTION_NOT_EMPTY = common dso_local global i32 0, align 4
@RGN_XOR = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@PAUSED_FROM_SELECTION = common dso_local global i32 0, align 4
@CONSOLE_NO_SELECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__*)* @GuiConsoleUpdateSelection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GuiConsoleUpdateSelection(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %6, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %20 = call i32 @SmallRectToRect(%struct.TYPE_20__* %16, i32* %7, %struct.TYPE_19__* %19)
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = icmp ne %struct.TYPE_21__* %21, null
  br i1 %22, label %23, label %134

23:                                               ; preds = %2
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @min(i32 %28, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  store i8* %32, i8** %33, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @min(i32 %38, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  store i8* %42, i8** %43, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @max(i32 %48, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @max(i32 %58, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %65 = call i32 @SmallRectToRect(%struct.TYPE_20__* %64, i32* %8, %struct.TYPE_19__* %9)
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @CONSOLE_SELECTION_NOT_EMPTY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %23
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = call i64 @memcmp(%struct.TYPE_19__* %9, %struct.TYPE_19__* %76, i32 32)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %73
  %80 = call i32 @CreateRectRgnIndirect(i32* %7)
  store i32 %80, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %79
  %83 = call i32 @CreateRectRgnIndirect(i32* %8)
  store i32 %83, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @RGN_XOR, align 4
  %90 = call i64 @CombineRgn(i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load i64, i64* @ERROR, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %85
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @FALSE, align 4
  %99 = call i32 @InvalidateRgn(i32 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %93, %85
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @DeleteObject(i32 %101)
  br label %103

103:                                              ; preds = %100, %82
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @DeleteObject(i32 %104)
  br label %106

106:                                              ; preds = %103, %79
  br label %107

107:                                              ; preds = %106, %73
  br label %114

108:                                              ; preds = %23
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @FALSE, align 4
  %113 = call i32 @InvalidateRect(i32 %111, i32* %8, i32 %112)
  br label %114

114:                                              ; preds = %108, %107
  %115 = load i32, i32* @CONSOLE_SELECTION_NOT_EMPTY, align 4
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %115
  store i32 %120, i32* %118, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 1
  %124 = bitcast %struct.TYPE_19__* %123 to i8*
  %125 = bitcast %struct.TYPE_19__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 32, i1 false)
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %129 = bitcast %struct.TYPE_21__* %127 to i8*
  %130 = bitcast %struct.TYPE_21__* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %129, i8* align 4 %130, i64 8, i1 false)
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %132 = load i32, i32* @PAUSED_FROM_SELECTION, align 4
  %133 = call i32 @ConioPause(%struct.TYPE_22__* %131, i32 %132)
  br label %156

134:                                              ; preds = %2
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @CONSOLE_SELECTION_NOT_EMPTY, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @FALSE, align 4
  %147 = call i32 @InvalidateRect(i32 %145, i32* %7, i32 %146)
  br label %148

148:                                              ; preds = %142, %134
  %149 = load i32, i32* @CONSOLE_NO_SELECTION, align 4
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %154 = load i32, i32* @PAUSED_FROM_SELECTION, align 4
  %155 = call i32 @ConioUnpause(%struct.TYPE_22__* %153, i32 %154)
  br label %156

156:                                              ; preds = %148, %114
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @SmallRectToRect(%struct.TYPE_20__*, i32*, %struct.TYPE_19__*) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i64 @memcmp(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @CreateRectRgnIndirect(i32*) #1

declare dso_local i64 @CombineRgn(i32, i32, i32, i32) #1

declare dso_local i32 @InvalidateRgn(i32, i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ConioPause(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ConioUnpause(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
