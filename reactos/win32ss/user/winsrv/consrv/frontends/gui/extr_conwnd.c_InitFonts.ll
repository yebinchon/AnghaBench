; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/frontends/gui/extr_conwnd.c_InitFonts.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/frontends/gui/extr_conwnd.c_InitFonts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32**, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"InitFonts: CreateConsoleFontEx failed\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"InitFonts: GetFontCellSize failed\0A\00", align 1
@FONT_NORMAL = common dso_local global i64 0, align 8
@FW_BOLD = common dso_local global i64 0, align 8
@FONT_BOLD = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FONT_UNDERLINE = common dso_local global i64 0, align 8
@LF_FACESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitFonts(%struct.TYPE_10__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = bitcast %struct.TYPE_11__* %8 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  store i64 %3, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  store i64 %4, i64* %17, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @CreateConsoleFontEx(i32 %20, i32 %23, i64 %24, i64 %25, i64 %26, i32 %31)
  store i32* %32, i32** %14, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %6
  %36 = call i32 @DPRINT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %7, align 4
  br label %175

38:                                               ; preds = %6
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @GetDC(i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = call i32 @GetFontCellSize(i32 %43, i32* %44, i32* %46, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %38
  %52 = call i32 @DPRINT1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @ReleaseDC(i32 %55, i32 %56)
  %58 = load i32*, i32** %14, align 8
  %59 = call i32 @DeleteObject(i32* %58)
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %7, align 4
  br label %175

61:                                               ; preds = %38
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @ReleaseDC(i32 %64, i32 %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = call i32 @DeleteFonts(%struct.TYPE_10__* %67)
  %69 = load i32*, i32** %14, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32**, i32*** %71, align 8
  %73 = load i64, i64* @FONT_NORMAL, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  store i32* %69, i32** %74, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32**, i32*** %76, align 8
  %78 = load i64, i64* @FONT_NORMAL, align 8
  %79 = getelementptr inbounds i32*, i32** %77, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* @FW_BOLD, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %61
  %85 = load i64, i64* @FW_BOLD, align 8
  br label %88

86:                                               ; preds = %61
  %87 = load i64, i64* %12, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i64 [ %85, %84 ], [ %87, %86 ]
  %90 = load i32, i32* @FALSE, align 4
  %91 = load i32, i32* @FALSE, align 4
  %92 = call i8* @CreateDerivedFont(i32* %80, i64 %89, i32 %90, i32 %91)
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32**, i32*** %95, align 8
  %97 = load i64, i64* @FONT_BOLD, align 8
  %98 = getelementptr inbounds i32*, i32** %96, i64 %97
  store i32* %93, i32** %98, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32**, i32*** %100, align 8
  %102 = load i64, i64* @FONT_NORMAL, align 8
  %103 = getelementptr inbounds i32*, i32** %101, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load i32, i32* @TRUE, align 4
  %107 = load i32, i32* @FALSE, align 4
  %108 = call i8* @CreateDerivedFont(i32* %104, i64 %105, i32 %106, i32 %107)
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32**, i32*** %111, align 8
  %113 = load i64, i64* @FONT_UNDERLINE, align 8
  %114 = getelementptr inbounds i32*, i32** %112, i64 %113
  store i32* %109, i32** %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load i64, i64* @FONT_NORMAL, align 8
  %119 = getelementptr inbounds i32*, i32** %117, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* @FW_BOLD, align 8
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %88
  %125 = load i64, i64* @FW_BOLD, align 8
  br label %128

126:                                              ; preds = %88
  %127 = load i64, i64* %12, align 8
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i64 [ %125, %124 ], [ %127, %126 ]
  %130 = load i32, i32* @TRUE, align 4
  %131 = load i32, i32* @FALSE, align 4
  %132 = call i8* @CreateDerivedFont(i32* %120, i64 %129, i32 %130, i32 %131)
  %133 = bitcast i8* %132 to i32*
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32**, i32*** %135, align 8
  %137 = load i64, i64* @FONT_BOLD, align 8
  %138 = load i64, i64* @FONT_UNDERLINE, align 8
  %139 = or i64 %137, %138
  %140 = getelementptr inbounds i32*, i32** %136, i64 %139
  store i32* %133, i32** %140, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %141, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %128
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @ARRAYSIZE(i64 %155)
  %157 = load i64, i64* %10, align 8
  %158 = load i32, i32* @LF_FACESIZE, align 4
  %159 = call i32 @StringCchCopyNW(i64 %151, i32 %156, i64 %157, i32 %158)
  br label %160

160:                                              ; preds = %147, %128
  %161 = load i64, i64* %11, align 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 3
  store i64 %161, i64* %164, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 2
  %168 = bitcast %struct.TYPE_11__* %167 to i8*
  %169 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 %169, i64 16, i1 false)
  %170 = load i64, i64* %12, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  store i64 %170, i64* %173, align 8
  %174 = load i32, i32* @TRUE, align 4
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %160, %51, %35
  %176 = load i32, i32* %7, align 4
  ret i32 %176
}

declare dso_local i32* @CreateConsoleFontEx(i32, i32, i64, i64, i64, i32) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GetFontCellSize(i32, i32*, i32*, i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @DeleteFonts(%struct.TYPE_10__*) #1

declare dso_local i8* @CreateDerivedFont(i32*, i64, i32, i32) #1

declare dso_local i32 @StringCchCopyNW(i64, i32, i64, i32) #1

declare dso_local i32 @ARRAYSIZE(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
