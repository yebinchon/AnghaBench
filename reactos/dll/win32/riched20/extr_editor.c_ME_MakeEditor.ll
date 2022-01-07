; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_MakeEditor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_MakeEditor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, i64, i32, i64, i32*, i32, i32, %struct.TYPE_12__*, i8*, i8*, i8*, i8*, i32*, i32*, i8*, %struct.TYPE_18__*, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i64, i64, i8*, i32, i64, i64, i64, i64, i32, i64, i64, i64, i32, i64, i32*, i64, i32, i32*, %struct.TYPE_16__, i32*, i32* }
%struct.TYPE_15__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_14__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32*, i64, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64 }

@TXTBIT_RICHTEXT = common dso_local global i32 0, align 4
@TXTBIT_MULTILINE = common dso_local global i32 0, align 4
@TXTBIT_READONLY = common dso_local global i32 0, align 4
@TXTBIT_USEPASSWORD = common dso_local global i32 0, align 4
@TXTBIT_HIDESELECTION = common dso_local global i32 0, align 4
@TXTBIT_SAVESELECTION = common dso_local global i32 0, align 4
@TXTBIT_AUTOWORDSEL = common dso_local global i32 0, align 4
@TXTBIT_VERTICAL = common dso_local global i32 0, align 4
@TXTBIT_WORDWRAP = common dso_local global i32 0, align 4
@TXTBIT_DISABLEDRAG = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@WS_HSCROLL = common dso_local global i32 0, align 4
@ES_AUTOVSCROLL = common dso_local global i32 0, align 4
@ES_AUTOHSCROLL = common dso_local global i32 0, align 4
@ES_DISABLENOSCROLL = common dso_local global i32 0, align 4
@COLOR_WINDOW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TEXT_LIMIT_DEFAULT = common dso_local global i32 0, align 4
@STACK_SIZE_DEFAULT = common dso_local global i32 0, align 4
@umAddToUndo = common dso_local global i32 0, align 4
@TM_MULTILEVELUNDO = common dso_local global i32 0, align 4
@TM_MULTICODEPAGE = common dso_local global i32 0, align 4
@TM_RICHTEXT = common dso_local global i32 0, align 4
@TM_PLAINTEXT = common dso_local global i32 0, align 4
@HFONT_CACHE_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SELECTIONBAR_WIDTH = common dso_local global i64 0, align 8
@ES_SELECTIONBAR = common dso_local global i32 0, align 4
@stPosition = common dso_local global i32 0, align 4
@ECO_AUTOWORDSELECTION = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@ES_READONLY = common dso_local global i32 0, align 4
@ES_NOHIDESEL = common dso_local global i32 0, align 4
@ES_SAVESEL = common dso_local global i32 0, align 4
@ES_VERTICAL = common dso_local global i32 0, align 4
@ES_NOOLEDRAGDROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @ME_MakeEditor(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i8* @heap_alloc(i32 480)
  %10 = bitcast i8* %9 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %5, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 57
  store i32* null, i32** %12, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 56
  store i32* null, i32** %14, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 55
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 55
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 15
  store i32* %21, i32** %23, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 54
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 53
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 52
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 51
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 50
  store i64 0, i64* %36, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @TXTBIT_RICHTEXT, align 4
  %39 = load i32, i32* @TXTBIT_MULTILINE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @TXTBIT_READONLY, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @TXTBIT_USEPASSWORD, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @TXTBIT_HIDESELECTION, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @TXTBIT_SAVESELECTION, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @TXTBIT_AUTOWORDSEL, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @TXTBIT_VERTICAL, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @TXTBIT_WORDWRAP, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @TXTBIT_DISABLEDRAG, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @ITextHost_TxGetPropertyBits(i32* %37, i32 %56, i32* %7)
  %58 = load i32*, i32** %3, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = call i32 @ITextHost_TxGetScrollBars(i32* %58, i32* %60)
  %62 = load i32, i32* @WS_VSCROLL, align 4
  %63 = load i32, i32* @WS_HSCROLL, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @ES_DISABLENOSCROLL, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = call i32 (...) @ME_MakeText()
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 49
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 47
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 48
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 46
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 45
  %86 = call i32 @list_init(i32* %85)
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = call i32 @ME_MakeFirstParagraph(%struct.TYPE_17__* %87)
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  store i32 4, i32* %90, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i8* @heap_alloc(i32 %96)
  %98 = bitcast i8* %97 to %struct.TYPE_18__*
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 26
  store %struct.TYPE_18__* %98, %struct.TYPE_18__** %100, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 26
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i64 0
  %106 = call i32 @ME_SetCursorToStart(%struct.TYPE_17__* %101, %struct.TYPE_18__* %105)
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 26
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i64 1
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 26
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i64 0
  %115 = bitcast %struct.TYPE_18__* %110 to i8*
  %116 = bitcast %struct.TYPE_18__* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 4, i1 false)
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 26
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i64 2
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 26
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i64 0
  %125 = bitcast %struct.TYPE_18__* %120 to i8*
  %126 = bitcast %struct.TYPE_18__* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %125, i8* align 4 %126, i64 4, i1 false)
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 26
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i64 3
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 26
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i64 1
  %135 = bitcast %struct.TYPE_18__* %130 to i8*
  %136 = bitcast %struct.TYPE_18__* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %135, i8* align 4 %136, i64 4, i1 false)
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 43
  store i64 0, i64* %138, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 44
  store i64 0, i64* %140, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 41
  store i64 0, i64* %142, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 42
  store i64 0, i64* %144, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 2
  store i32 -1, i32* %146, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 3
  store i32 -1, i32* %148, align 4
  %149 = load i32, i32* @COLOR_WINDOW, align 4
  %150 = call i32 @GetSysColorBrush(i32 %149)
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 40
  store i32 %150, i32* %152, align 8
  %153 = load i8*, i8** @FALSE, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 39
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 38
  store i64 0, i64* %157, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 37
  store i64 0, i64* %159, align 8
  %160 = load i32, i32* @TEXT_LIMIT_DEFAULT, align 4
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 36
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 35
  %165 = call i32 @list_init(i32* %164)
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 34
  %168 = call i32 @list_init(i32* %167)
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 33
  store i64 0, i64* %170, align 8
  %171 = load i32, i32* @STACK_SIZE_DEFAULT, align 4
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 32
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* @umAddToUndo, align 4
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 31
  store i32 %174, i32* %176, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 4
  store i32 1, i32* %178, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 29
  store i64 0, i64* %180, align 8
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 30
  store i64 0, i64* %182, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 26
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i64 0
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 27
  store i32 %188, i32* %190, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 28
  store i32 %188, i32* %192, align 4
  %193 = load i8*, i8** @FALSE, align 8
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 25
  store i8* %193, i8** %195, align 8
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 24
  store i32* null, i32** %197, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 23
  store i32* null, i32** %199, align 8
  %200 = load i32, i32* @TM_MULTILEVELUNDO, align 4
  %201 = load i32, i32* @TM_MULTICODEPAGE, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 5
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* @TXTBIT_RICHTEXT, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %2
  %210 = load i32, i32* @TM_RICHTEXT, align 4
  br label %213

211:                                              ; preds = %2
  %212 = load i32, i32* @TM_PLAINTEXT, align 4
  br label %213

213:                                              ; preds = %211, %209
  %214 = phi i32 [ %210, %209 ], [ %212, %211 ]
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 4
  %219 = load i8*, i8** @FALSE, align 8
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 22
  store i8* %219, i8** %221, align 8
  %222 = load i8*, i8** @FALSE, align 8
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 21
  store i8* %222, i8** %224, align 8
  %225 = load i8*, i8** @FALSE, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 20
  store i8* %225, i8** %227, align 8
  %228 = load i8*, i8** @FALSE, align 8
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 19
  store i8* %228, i8** %230, align 8
  store i32 0, i32* %6, align 4
  br label %231

231:                                              ; preds = %257, %213
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @HFONT_CACHE_SIZE, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %260

235:                                              ; preds = %231
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 18
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 2
  store i64 0, i64* %242, align 8
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 18
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 1
  store i64 0, i64* %249, align 8
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 18
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %251, align 8
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 0
  store i32* null, i32** %256, align 8
  br label %257

257:                                              ; preds = %235
  %258 = load i32, i32* %6, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %6, align 4
  br label %231

260:                                              ; preds = %231
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %262 = call i32 @ME_CheckCharOffsets(%struct.TYPE_17__* %261)
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 17
  %265 = call i32 @SetRectEmpty(i32* %264)
  %266 = load i32, i32* @TRUE, align 4
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 16
  store i32 %266, i32* %268, align 8
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 15
  %271 = load i32*, i32** %270, align 8
  %272 = call i32 @ITextHost_TxGetSelectionBarWidth(i32* %271, i64* %8)
  %273 = load i64, i64* %8, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %260
  %276 = load i64, i64* @SELECTIONBAR_WIDTH, align 8
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 14
  store i64 %276, i64* %278, align 8
  %279 = load i32, i32* @ES_SELECTIONBAR, align 4
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 8
  br label %287

284:                                              ; preds = %260
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 14
  store i64 0, i64* %286, align 8
  br label %287

287:                                              ; preds = %284, %275
  %288 = load i32, i32* @stPosition, align 4
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 13
  store i32 %288, i32* %290, align 8
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 12
  store i64 0, i64* %292, align 8
  %293 = load i32, i32* %7, align 4
  %294 = load i32, i32* @TXTBIT_USEPASSWORD, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %287
  %298 = load i32*, i32** %3, align 8
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 12
  %301 = call i32 @ITextHost_TxGetPasswordChar(i32* %298, i64* %300)
  br label %302

302:                                              ; preds = %297, %287
  %303 = load i32, i32* %7, align 4
  %304 = load i32, i32* @TXTBIT_AUTOWORDSEL, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %302
  %308 = load i32, i32* @ECO_AUTOWORDSELECTION, align 4
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = or i32 %311, %308
  store i32 %312, i32* %310, align 8
  br label %313

313:                                              ; preds = %307, %302
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* @TXTBIT_MULTILINE, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %331

318:                                              ; preds = %313
  %319 = load i32, i32* @ES_MULTILINE, align 4
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = or i32 %322, %319
  store i32 %323, i32* %321, align 8
  %324 = load i32, i32* %7, align 4
  %325 = load i32, i32* @TXTBIT_WORDWRAP, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  %328 = zext i1 %327 to i32
  %329 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 6
  store i32 %328, i32* %330, align 8
  br label %336

331:                                              ; preds = %313
  %332 = load i8*, i8** @FALSE, align 8
  %333 = ptrtoint i8* %332 to i32
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 6
  store i32 %333, i32* %335, align 8
  br label %336

336:                                              ; preds = %331, %318
  %337 = load i32, i32* %7, align 4
  %338 = load i32, i32* @TXTBIT_READONLY, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %336
  %342 = load i32, i32* @ES_READONLY, align 4
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = or i32 %345, %342
  store i32 %346, i32* %344, align 8
  br label %347

347:                                              ; preds = %341, %336
  %348 = load i32, i32* %7, align 4
  %349 = load i32, i32* @TXTBIT_HIDESELECTION, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %358, label %352

352:                                              ; preds = %347
  %353 = load i32, i32* @ES_NOHIDESEL, align 4
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = or i32 %356, %353
  store i32 %357, i32* %355, align 8
  br label %358

358:                                              ; preds = %352, %347
  %359 = load i32, i32* %7, align 4
  %360 = load i32, i32* @TXTBIT_SAVESELECTION, align 4
  %361 = and i32 %359, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %358
  %364 = load i32, i32* @ES_SAVESEL, align 4
  %365 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = or i32 %367, %364
  store i32 %368, i32* %366, align 8
  br label %369

369:                                              ; preds = %363, %358
  %370 = load i32, i32* %7, align 4
  %371 = load i32, i32* @TXTBIT_VERTICAL, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %380

374:                                              ; preds = %369
  %375 = load i32, i32* @ES_VERTICAL, align 4
  %376 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = or i32 %378, %375
  store i32 %379, i32* %377, align 8
  br label %380

380:                                              ; preds = %374, %369
  %381 = load i32, i32* %7, align 4
  %382 = load i32, i32* @TXTBIT_DISABLEDRAG, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %380
  %386 = load i32, i32* @ES_NOOLEDRAGDROP, align 4
  %387 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = or i32 %389, %386
  store i32 %390, i32* %388, align 8
  br label %391

391:                                              ; preds = %385, %380
  %392 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %392, i32 0, i32 11
  %394 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %393, i32 0, i32 0
  store i64 0, i64* %394, align 8
  %395 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %395, i32 0, i32 11
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i32 0, i32 1
  store i64 0, i64* %397, align 8
  %398 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %398, i32 0, i32 10
  %400 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %399, i32 0, i32 0
  store i32 4, i32* %400, align 8
  %401 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %401, i32 0, i32 10
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 4
  store i64 0, i64* %403, align 8
  %404 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %404, i32 0, i32 10
  %406 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %405, i32 0, i32 3
  store i64 0, i64* %406, align 8
  %407 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %407, i32 0, i32 10
  %409 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %408, i32 0, i32 2
  store i64 0, i64* %409, align 8
  %410 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %410, i32 0, i32 10
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 1
  store i64 0, i64* %412, align 8
  %413 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %413, i32 0, i32 9
  %415 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %414, i32 0, i32 0
  store i32 4, i32* %415, align 8
  %416 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %416, i32 0, i32 9
  %418 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %417, i32 0, i32 4
  store i64 0, i64* %418, align 8
  %419 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %419, i32 0, i32 9
  %421 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %420, i32 0, i32 3
  store i64 0, i64* %421, align 8
  %422 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %422, i32 0, i32 9
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 2
  store i64 0, i64* %424, align 8
  %425 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %425, i32 0, i32 9
  %427 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %426, i32 0, i32 1
  store i64 0, i64* %427, align 8
  %428 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %429 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %428, i32 0, i32 8
  store i64 0, i64* %429, align 8
  %430 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %430, i32 0, i32 7
  %432 = call i32 @list_init(i32* %431)
  %433 = call i32 @OleInitialize(i32* null)
  %434 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  ret %struct.TYPE_17__* %434
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @ITextHost_TxGetPropertyBits(i32*, i32, i32*) #1

declare dso_local i32 @ITextHost_TxGetScrollBars(i32*, i32*) #1

declare dso_local i32 @ME_MakeText(...) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @ME_MakeFirstParagraph(%struct.TYPE_17__*) #1

declare dso_local i32 @ME_SetCursorToStart(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GetSysColorBrush(i32) #1

declare dso_local i32 @ME_CheckCharOffsets(%struct.TYPE_17__*) #1

declare dso_local i32 @SetRectEmpty(i32*) #1

declare dso_local i32 @ITextHost_TxGetSelectionBarWidth(i32*, i64*) #1

declare dso_local i32 @ITextHost_TxGetPasswordChar(i32*, i64*) #1

declare dso_local i32 @OleInitialize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
