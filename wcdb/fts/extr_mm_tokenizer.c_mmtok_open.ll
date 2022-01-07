; ModuleID = '/home/carl/AnghaBench/wcdb/fts/extr_mm_tokenizer.c_mmtok_open.c'
source_filename = "/home/carl/AnghaBench/wcdb/fts/extr_mm_tokenizer.c_mmtok_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32, i32, i32, i32, i32, i32*, i64, i64, i32* }

@U_ZERO_ERROR = common dso_local global i8 0, align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Writing UTF-16 character failed. Code point: 0x%x\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@UBRK_WORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Open UBreakIterator failed. ICU error code: %d\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32**)* @mmtok_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmtok_open(i32* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %10, align 8
  %20 = load i8, i8* @U_ZERO_ERROR, align 1
  store i8 %20, i8* %14, align 1
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %23, %4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i32 @ROUND4(i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = add i64 64, %32
  %34 = load i32, i32* %15, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = add i64 %33, %37
  %39 = trunc i64 %38 to i32
  %40 = call i64 @sqlite3_malloc(i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %11, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %26
  %45 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %45, i32* %5, align 4
  br label %156

46:                                               ; preds = %26
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %48 = call i32 @memset(%struct.TYPE_6__* %47, i32 0, i32 64)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 1
  %51 = bitcast %struct.TYPE_6__* %50 to i32*
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 6
  store i32* %51, i32** %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 9
  store i32* null, i32** %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 8
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 7
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 -1, i32* %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i32 -1, i32* %71, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store i32 -1, i32* %73, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %117, %46
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %125

86:                                               ; preds = %81
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i8, i8* %16, align 1
  %91 = call i32 @U8_NEXT(i8* %87, i32 %88, i32 %89, i8 signext %90)
  %92 = load i8, i8* %16, align 1
  %93 = icmp ne i8 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  br label %125

95:                                               ; preds = %86
  %96 = load i8, i8* %16, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i8 32, i8* %16, align 1
  br label %100

100:                                              ; preds = %99, %95
  store i32 0, i32* %17, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 6
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i8, i8* %16, align 1
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @U16_APPEND(i32* %103, i32 %104, i32 %105, i8 signext %106, i32 %107)
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %100
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %113 = call i32 @sqlite3_free(%struct.TYPE_6__* %112)
  %114 = load i8, i8* %16, align 1
  %115 = call i32 @sqlite3_mm_set_last_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8 signext %114)
  %116 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %116, i32* %5, align 4
  br label %156

117:                                              ; preds = %100
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %118, i32* %124, align 4
  br label %81

125:                                              ; preds = %94, %85
  %126 = load i32, i32* @UBRK_WORD, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 6
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @ubrk_open(i32 %126, i32 %129, i32* %132, i32 %133, i8* %14)
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 8
  %137 = load i8, i8* %14, align 1
  %138 = call i64 @U_FAILURE(i8 signext %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %125
  %141 = load i8, i8* %14, align 1
  %142 = call i32 @sqlite3_mm_set_last_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8 signext %141)
  %143 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %143, i32* %5, align 4
  br label %156

144:                                              ; preds = %125
  %145 = load i32, i32* %13, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @ubrk_first(i32 %150)
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %153 = bitcast %struct.TYPE_6__* %152 to i32*
  %154 = load i32**, i32*** %9, align 8
  store i32* %153, i32** %154, align 8
  %155 = load i32, i32* @SQLITE_OK, align 4
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %144, %140, %111, %44
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ROUND4(i32) #1

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @U8_NEXT(i8*, i32, i32, i8 signext) #1

declare dso_local i32 @U16_APPEND(i32*, i32, i32, i8 signext, i32) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_6__*) #1

declare dso_local i32 @sqlite3_mm_set_last_error(i8*, i8 signext) #1

declare dso_local i32 @ubrk_open(i32, i32, i32*, i32, i8*) #1

declare dso_local i64 @U_FAILURE(i8 signext) #1

declare dso_local i32 @ubrk_first(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
