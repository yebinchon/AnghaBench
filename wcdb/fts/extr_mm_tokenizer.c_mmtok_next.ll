; ModuleID = '/home/carl/AnghaBench/wcdb/fts/extr_mm_tokenizer.c_mmtok_next.c'
source_filename = "/home/carl/AnghaBench/wcdb/fts/extr_mm_tokenizer.c_mmtok_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i64, i64, i32 }

@UBRK_DONE = common dso_local global i64 0, align 8
@SQLITE_DONE = common dso_local global i32 0, align 4
@UBRK_WORD_NONE = common dso_local global i64 0, align 8
@UBRK_WORD_NONE_LIMIT = common dso_local global i64 0, align 8
@UBRK_WORD_IDEO = common dso_local global i64 0, align 8
@UBRK_WORD_IDEO_LIMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"IDEO token found but can't output token.\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32*, i32*, i32*, i32*)* @mmtok_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmtok_next(i32* %0, i8** %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %14, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %23 = call i64 @find_splited_ideo_token(%struct.TYPE_4__* %22, i64* %15, i64* %16)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %6
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %27 = load i64, i64* %15, align 8
  %28 = load i64, i64* %16, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = call i32 @output_token(%struct.TYPE_4__* %26, i64 %27, i64 %28, i8** %29, i32* %30, i32* %31, i32* %32, i32* %33)
  store i32 %34, i32* %7, align 4
  br label %158

35:                                               ; preds = %6
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @ubrk_current(i32 %38)
  store i64 %39, i64* %15, align 8
  br label %40

40:                                               ; preds = %81, %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @ubrk_next(i32 %43)
  store i64 %44, i64* %16, align 8
  %45 = load i64, i64* %16, align 8
  %46 = load i64, i64* @UBRK_DONE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = call i32 (...) @sqlite3_mm_clear_error()
  %50 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %50, i32* %7, align 4
  br label %158

51:                                               ; preds = %40
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @ubrk_getRuleStatus(i32 %54)
  store i64 %55, i64* %17, align 8
  %56 = load i64, i64* %17, align 8
  %57 = load i64, i64* @UBRK_WORD_NONE, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %51
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* @UBRK_WORD_NONE_LIMIT, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %59
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* %15, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8, i8* %68, align 1
  store i8 %69, i8* %18, align 1
  %70 = load i8, i8* %18, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 42
  br i1 %72, label %81, label %73

73:                                               ; preds = %63
  %74 = load i8, i8* %18, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 8203
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i8, i8* %18, align 1
  %79 = call i64 @u_isspace(i8 signext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77, %73, %63
  %82 = load i64, i64* %16, align 8
  store i64 %82, i64* %15, align 8
  br label %40

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %59, %51
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %17, align 8
  %87 = load i64, i64* @UBRK_WORD_IDEO, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* @UBRK_WORD_IDEO_LIMIT, align 8
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %89, %85
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* %16, align 8
  %97 = load i8**, i8*** %9, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = call i32 @output_token(%struct.TYPE_4__* %94, i64 %95, i64 %96, i8** %97, i32* %98, i32* %99, i32* %100, i32* %101)
  store i32 %102, i32* %7, align 4
  br label %158

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %126, %103
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @ubrk_next(i32 %107)
  store i64 %108, i64* %19, align 8
  %109 = load i64, i64* %19, align 8
  %110 = load i64, i64* @UBRK_DONE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %128

113:                                              ; preds = %104
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @ubrk_getRuleStatus(i32 %116)
  store i64 %117, i64* %17, align 8
  %118 = load i64, i64* %17, align 8
  %119 = load i64, i64* @UBRK_WORD_IDEO, align 8
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %113
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* @UBRK_WORD_IDEO_LIMIT, align 8
  %124 = icmp sge i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121, %113
  br label %128

126:                                              ; preds = %121
  %127 = load i64, i64* %19, align 8
  store i64 %127, i64* %16, align 8
  br label %104

128:                                              ; preds = %125, %112
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load i64, i64* %16, align 8
  %133 = call i32 @ubrk_isBoundary(i32 %131, i64 %132)
  %134 = load i64, i64* %15, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 3
  store i64 %134, i64* %136, align 8
  %137 = load i64, i64* %16, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %143 = call i64 @find_splited_ideo_token(%struct.TYPE_4__* %142, i64* %15, i64* %16)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %128
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %147 = load i64, i64* %15, align 8
  %148 = load i64, i64* %16, align 8
  %149 = load i8**, i8*** %9, align 8
  %150 = load i32*, i32** %10, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = load i32*, i32** %12, align 8
  %153 = load i32*, i32** %13, align 8
  %154 = call i32 @output_token(%struct.TYPE_4__* %146, i64 %147, i64 %148, i8** %149, i32* %150, i32* %151, i32* %152, i32* %153)
  store i32 %154, i32* %7, align 4
  br label %158

155:                                              ; preds = %128
  %156 = call i32 @sqlite3_mm_set_last_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %157 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %155, %145, %93, %48, %25
  %159 = load i32, i32* %7, align 4
  ret i32 %159
}

declare dso_local i64 @find_splited_ideo_token(%struct.TYPE_4__*, i64*, i64*) #1

declare dso_local i32 @output_token(%struct.TYPE_4__*, i64, i64, i8**, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @ubrk_current(i32) #1

declare dso_local i64 @ubrk_next(i32) #1

declare dso_local i32 @sqlite3_mm_clear_error(...) #1

declare dso_local i64 @ubrk_getRuleStatus(i32) #1

declare dso_local i64 @u_isspace(i8 signext) #1

declare dso_local i32 @ubrk_isBoundary(i32, i64) #1

declare dso_local i32 @sqlite3_mm_set_last_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
