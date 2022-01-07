; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_indic.c_Indic_ParseSyllables.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_indic.c_Indic_ParseSyllables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failure to have required functions\0A\00", align 1
@lex_Generic = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Processing failed at %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Processed %i of %i characters into %i syllables\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Indic_ParseSyllables(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4, %struct.TYPE_7__** %5, i32* %6, i64 (i32)* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64 (i32)*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.TYPE_7__** %5, %struct.TYPE_7__*** %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 (i32)* %7, i64 (i32)** %17, align 8
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %16, align 8
  store i32 0, i32* %22, align 4
  %23 = load i64 (i32)*, i64 (i32)** %17, align 8
  %24 = icmp ne i64 (i32)* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %9
  %26 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %170

27:                                               ; preds = %9
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i64 (i32)*, i64 (i32)** %17, align 8
  %31 = call i32 @debug_output_string(i32* %28, i32 %29, i64 (i32)* %30)
  br label %32

32:                                               ; preds = %163, %27
  %33 = load i32, i32* %21, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %164

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i32, i32* %21, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i64 (i32)*, i64 (i32)** %17, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %21, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i64 %41(i32 %46)
  %48 = load i64, i64* @lex_Generic, align 8
  %49 = icmp eq i64 %47, %48
  br label %50

50:                                               ; preds = %40, %36
  %51 = phi i1 [ false, %36 ], [ %49, %40 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i32, i32* %21, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %21, align 4
  br label %36

55:                                               ; preds = %50
  %56 = load i32, i32* %21, align 4
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %21, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp uge i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %164

61:                                               ; preds = %55
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %20, align 4
  %65 = load i64 (i32)*, i64 (i32)** %17, align 8
  %66 = call i32 @Indic_process_next_syllable(i32* %62, i32 %63, i32 0, i32* %19, i32 %64, i64 (i32)* %65)
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* %21, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %153

69:                                               ; preds = %61
  %70 = load i32*, i32** %16, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = call i32 (...) @GetProcessHeap()
  %75 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = mul i64 24, %80
  %82 = trunc i64 %81 to i32
  %83 = call %struct.TYPE_7__* @HeapReAlloc(i32 %74, i32 0, %struct.TYPE_7__* %76, i32 %82)
  %84 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %84, align 8
  br label %88

85:                                               ; preds = %69
  %86 = call %struct.TYPE_7__* @heap_alloc(i32 24)
  %87 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %87, align 8
  br label %88

88:                                               ; preds = %85, %73
  %89 = load i32, i32* %20, align 4
  %90 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i32*, i32** %16, align 8
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 %89, i32* %96, align 4
  %97 = load i32, i32* %19, align 4
  %98 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32*, i32** %16, align 8
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  store i32 %97, i32* %104, align 4
  %105 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  store i32 -1, i32* %111, align 4
  %112 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = load i32*, i32** %16, align 8
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 3
  store i32 -1, i32* %118, align 4
  %119 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = load i32*, i32** %16, align 8
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 4
  store i32 -1, i32* %125, align 4
  %126 = load i32, i32* %21, align 4
  %127 = sub nsw i32 %126, 1
  %128 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load i32*, i32** %16, align 8
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 5
  store i32 %127, i32* %134, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32*, i32** %11, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = load i32*, i32** %13, align 8
  %139 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = load i32*, i32** %16, align 8
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 %143
  %145 = load i64 (i32)*, i64 (i32)** %17, align 8
  %146 = load i32, i32* %18, align 4
  %147 = call i32 @FindBaseConsonant(i32 %135, i32* %136, i32* %137, i32* %138, %struct.TYPE_7__* %144, i64 (i32)* %145, i32 %146)
  %148 = load i32, i32* %21, align 4
  store i32 %148, i32* %20, align 4
  %149 = load i32*, i32** %16, align 8
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  %152 = load i32*, i32** %16, align 8
  store i32 %151, i32* %152, align 4
  br label %163

153:                                              ; preds = %61
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load i32, i32* %20, align 4
  %159 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %20, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %20, align 4
  store i32 %161, i32* %21, align 4
  br label %162

162:                                              ; preds = %157, %153
  br label %163

163:                                              ; preds = %162, %88
  br label %32

164:                                              ; preds = %60, %32
  %165 = load i32, i32* %20, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load i32*, i32** %16, align 8
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %165, i32 %166, i32 %168)
  br label %170

170:                                              ; preds = %164, %25
  ret void
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @debug_output_string(i32*, i32, i64 (i32)*) #1

declare dso_local i32 @Indic_process_next_syllable(i32*, i32, i32, i32*, i32, i64 (i32)*) #1

declare dso_local %struct.TYPE_7__* @HeapReAlloc(i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local %struct.TYPE_7__* @heap_alloc(i32) #1

declare dso_local i32 @FindBaseConsonant(i32, i32*, i32*, i32*, %struct.TYPE_7__*, i64 (i32)*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
