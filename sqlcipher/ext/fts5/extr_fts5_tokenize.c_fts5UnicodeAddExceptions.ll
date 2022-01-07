; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5UnicodeAddExceptions.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5UnicodeAddExceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i8*, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32)* @fts5UnicodeAddExceptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5UnicodeAddExceptions(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @SQLITE_OK, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %154

22:                                               ; preds = %3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i64 @sqlite3_realloc64(i32* %25, i32 %33)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %151

38:                                               ; preds = %22
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %10, align 4
  %42 = load i8*, i8** %5, align 8
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8* %46, i8** %12, align 8
  br label %47

47:                                               ; preds = %143, %38
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = icmp ult i8* %48, %49
  br i1 %50, label %51, label %144

51:                                               ; preds = %47
  %52 = load i8*, i8** %11, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @READ_UTF8(i8* %52, i8* %53, i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 128
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = trunc i32 %59 to i8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 %60, i8* %66, align 1
  br label %143

67:                                               ; preds = %51
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i64 @sqlite3Fts5UnicodeCategory(i32 %71)
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %14, align 4
  %79 = icmp eq i32 %78, 1
  br label %80

80:                                               ; preds = %77, %67
  %81 = phi i1 [ true, %67 ], [ %79, %77 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 1
  br label %89

89:                                               ; preds = %86, %80
  %90 = phi i1 [ true, %80 ], [ %88, %86 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %142

96:                                               ; preds = %89
  %97 = load i32, i32* %13, align 4
  %98 = call i64 @sqlite3Fts5UnicodeIsdiacritic(i32 %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %142

100:                                              ; preds = %96
  store i32 0, i32* %15, align 4
  br label %101

101:                                              ; preds = %115, %100
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %118

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %101

118:                                              ; preds = %113, %101
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %15, align 4
  %130 = sub nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 4
  %133 = trunc i64 %132 to i32
  %134 = call i32 @memmove(i32* %123, i32* %127, i32 %133)
  %135 = load i32, i32* %13, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %135, i32* %139, align 4
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %118, %96, %89
  br label %143

143:                                              ; preds = %142, %58
  br label %47

144:                                              ; preds = %47
  %145 = load i32*, i32** %9, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store i32* %145, i32** %147, align 8
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 8
  br label %153

151:                                              ; preds = %22
  %152 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %151, %144
  br label %154

154:                                              ; preds = %153, %3
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @sqlite3_realloc64(i32*, i32) #1

declare dso_local i32 @READ_UTF8(i8*, i8*, i32) #1

declare dso_local i64 @sqlite3Fts5UnicodeCategory(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3Fts5UnicodeIsdiacritic(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
