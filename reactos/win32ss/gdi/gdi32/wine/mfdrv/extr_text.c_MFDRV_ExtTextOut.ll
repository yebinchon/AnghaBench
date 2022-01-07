; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_text.c_MFDRV_ExtTextOut.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_text.c_MFDRV_ExtTextOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@CP_ACP = common dso_local global i32 0, align 4
@TCI_SRCCHARSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Can't find codepage for charset %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"cp == %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"mapped %s -> %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MFDRV_ExtTextOut(%struct.TYPE_12__* %0, i64 %1, i64 %2, i32 %3, %struct.TYPE_11__* %4, i32 %5, i32 %6, i64* %7) #0 {
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca %struct.TYPE_10__, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_13__, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64* %7, i64** %16, align 8
  store i64* null, i64** %18, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @GetTextCharset(i32 %29)
  store i32 %30, i32* %25, align 4
  %31 = load i32, i32* @CP_ACP, align 4
  store i32 %31, i32* %26, align 4
  %32 = load i32, i32* %25, align 4
  %33 = call i32 @ULongToPtr(i32 %32)
  %34 = load i32, i32* @TCI_SRCCHARSET, align 4
  %35 = call i64 @TranslateCharsetInfo(i32 %33, %struct.TYPE_13__* %24, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %26, align 4
  br label %52

40:                                               ; preds = %8
  %41 = load i32, i32* %25, align 4
  switch i32 %41, label %48 [
    i32 130, label %42
    i32 135, label %44
    i32 128, label %46
    i32 129, label %46
    i32 131, label %46
    i32 133, label %46
    i32 132, label %46
    i32 134, label %46
    i32 136, label %46
  ]

42:                                               ; preds = %40
  %43 = call i32 (...) @GetOEMCP()
  store i32 %43, i32* %26, align 4
  br label %51

44:                                               ; preds = %40
  %45 = call i32 (...) @GetACP()
  store i32 %45, i32* %26, align 4
  br label %51

46:                                               ; preds = %40, %40, %40, %40, %40, %40, %40
  %47 = load i32, i32* @CP_ACP, align 4
  store i32 %47, i32* %26, align 4
  br label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %25, align 4
  %50 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %48, %46, %44, %42
  br label %52

52:                                               ; preds = %51, %37
  %53 = load i32, i32* %26, align 4
  %54 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %26, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @WideCharToMultiByte(i32 %55, i32 0, i32 %56, i32 %57, i64* null, i32 0, i32* null, i32* null)
  store i32 %58, i32* %23, align 4
  %59 = call i32 (...) @GetProcessHeap()
  %60 = load i32, i32* %23, align 4
  %61 = call i64* @HeapAlloc(i32 %59, i32 0, i32 %60)
  store i64* %61, i64** %22, align 8
  %62 = load i32, i32* %26, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i64*, i64** %22, align 8
  %66 = load i32, i32* %23, align 4
  %67 = call i32 @WideCharToMultiByte(i32 %62, i32 0, i32 %63, i32 %64, i64* %65, i32 %66, i32* null, i32* null)
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @debugstr_wn(i32 %68, i32 %69)
  %71 = load i64*, i64** %22, align 8
  %72 = load i32, i32* %23, align 4
  %73 = call i32 @debugstr_an(i64* %71, i32 %72)
  %74 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %76 = icmp ne %struct.TYPE_11__* %75, null
  br i1 %76, label %77, label %94

77:                                               ; preds = %52
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 3
  store i32 %80, i32* %81, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  store i32 %84, i32* %85, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %77, %52
  %95 = load i64*, i64** %16, align 8
  %96 = icmp ne i64* %95, null
  br i1 %96, label %97, label %148

97:                                               ; preds = %94
  %98 = call i32 (...) @GetProcessHeap()
  %99 = load i32, i32* %23, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 4, %100
  %102 = trunc i64 %101 to i32
  %103 = call i64* @HeapAlloc(i32 %98, i32 0, i32 %102)
  store i64* %103, i64** %18, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %104

104:                                              ; preds = %146, %97
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* %23, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %147

108:                                              ; preds = %104
  %109 = load i32, i32* %26, align 4
  %110 = load i64*, i64** %22, align 8
  %111 = load i32, i32* %20, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @IsDBCSLeadByteEx(i32 %109, i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %108
  %118 = load i64*, i64** %16, align 8
  %119 = load i32, i32* %21, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %21, align 4
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds i64, i64* %118, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %18, align 8
  %125 = load i32, i32* %20, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %20, align 4
  %127 = zext i32 %125 to i64
  %128 = getelementptr inbounds i64, i64* %124, i64 %127
  store i64 %123, i64* %128, align 8
  %129 = load i64*, i64** %18, align 8
  %130 = load i32, i32* %20, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %20, align 4
  %132 = zext i32 %130 to i64
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  store i64 0, i64* %133, align 8
  br label %146

134:                                              ; preds = %108
  %135 = load i64*, i64** %16, align 8
  %136 = load i32, i32* %21, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %21, align 4
  %138 = zext i32 %136 to i64
  %139 = getelementptr inbounds i64, i64* %135, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load i64*, i64** %18, align 8
  %142 = load i32, i32* %20, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %20, align 4
  %144 = zext i32 %142 to i64
  %145 = getelementptr inbounds i64, i64* %141, i64 %144
  store i64 %140, i64* %145, align 8
  br label %146

146:                                              ; preds = %134, %117
  br label %104

147:                                              ; preds = %104
  br label %148

148:                                              ; preds = %147, %94
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %150 = load i64, i64* %10, align 8
  %151 = load i64, i64* %11, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %154 = icmp ne %struct.TYPE_11__* %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %157

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %155
  %158 = phi %struct.TYPE_10__* [ %17, %155 ], [ null, %156 ]
  %159 = load i64*, i64** %22, align 8
  %160 = load i32, i32* %23, align 4
  %161 = load i64*, i64** %18, align 8
  %162 = call i32 @MFDRV_MetaExtTextOut(%struct.TYPE_12__* %149, i64 %150, i64 %151, i32 %152, %struct.TYPE_10__* %158, i64* %159, i32 %160, i64* %161)
  store i32 %162, i32* %19, align 4
  %163 = call i32 (...) @GetProcessHeap()
  %164 = load i64*, i64** %22, align 8
  %165 = call i32 @HeapFree(i32 %163, i32 0, i64* %164)
  %166 = call i32 (...) @GetProcessHeap()
  %167 = load i64*, i64** %18, align 8
  %168 = call i32 @HeapFree(i32 %166, i32 0, i64* %167)
  %169 = load i32, i32* %19, align 4
  ret i32 %169
}

declare dso_local i32 @GetTextCharset(i32) #1

declare dso_local i64 @TranslateCharsetInfo(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ULongToPtr(i32) #1

declare dso_local i32 @GetOEMCP(...) #1

declare dso_local i32 @GetACP(...) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i64*, i32, i32*, i32*) #1

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @debugstr_wn(i32, i32) #1

declare dso_local i32 @debugstr_an(i64*, i32) #1

declare dso_local i64 @IsDBCSLeadByteEx(i32, i64) #1

declare dso_local i32 @MFDRV_MetaExtTextOut(%struct.TYPE_12__*, i64, i64, i32, %struct.TYPE_10__*, i64*, i32, i64*) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
