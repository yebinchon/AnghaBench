; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3TermSelectMerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3TermSelectMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8**, i32* }

@FTS3_VARINT_MAX = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i8*, i32)* @fts3TermSelectMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3TermSelectMerge(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %66

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @FTS3_VARINT_MAX, align 8
  %26 = add nsw i64 %24, %25
  %27 = add nsw i64 %26, 1
  %28 = call i8* @sqlite3_malloc(i64 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  store i8* %28, i8** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %22
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @memcpy(i8* %49, i8* %50, i32 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i64, i64* @FTS3_VARINT_MAX, align 8
  %62 = call i32 @memset(i8* %60, i32 0, i64 %61)
  br label %65

63:                                               ; preds = %22
  %64 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %64, i32* %5, align 4
  br label %191

65:                                               ; preds = %44
  br label %189

66:                                               ; preds = %4
  %67 = load i8*, i8** %8, align 8
  store i8* %67, i8** %10, align 8
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %185, %66
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = call i32 @SizeofArray(i8** %73)
  %75 = icmp slt i32 %70, %74
  br i1 %75, label %76, label %188

76:                                               ; preds = %69
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %104

85:                                               ; preds = %76
  %86 = load i32, i32* %12, align 4
  %87 = icmp sgt i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i8*, i8** %10, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  store i8* %90, i8** %96, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  br label %188

104:                                              ; preds = %76
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i8**, i8*** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @fts3DoclistOrMerge(i32 %107, i8* %108, i32 %109, i8* %116, i32 %123, i8** %13, i32* %14)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* @SQLITE_OK, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %104
  %129 = load i8*, i8** %10, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = icmp ne i8* %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @sqlite3_free(i8* %133)
  br label %135

135:                                              ; preds = %132, %128
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %5, align 4
  br label %191

137:                                              ; preds = %104
  %138 = load i8*, i8** %10, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = icmp ne i8* %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i8*, i8** %10, align 8
  %143 = call i32 @sqlite3_free(i8* %142)
  br label %144

144:                                              ; preds = %141, %137
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i8**, i8*** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @sqlite3_free(i8* %151)
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i8**, i8*** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  store i8* null, i8** %158, align 8
  %159 = load i8*, i8** %13, align 8
  store i8* %159, i8** %10, align 8
  %160 = load i32, i32* %14, align 4
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i8**, i8*** %164, align 8
  %166 = call i32 @SizeofArray(i8** %165)
  %167 = icmp eq i32 %162, %166
  br i1 %167, label %168, label %183

168:                                              ; preds = %144
  %169 = load i8*, i8** %10, align 8
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i8**, i8*** %171, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  store i8* %169, i8** %175, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %176, i32* %182, align 4
  br label %183

183:                                              ; preds = %168, %144
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %12, align 4
  br label %69

188:                                              ; preds = %85, %69
  br label %189

189:                                              ; preds = %188, %65
  %190 = load i32, i32* @SQLITE_OK, align 4
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %189, %135, %63
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i8* @sqlite3_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @SizeofArray(i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts3DoclistOrMerge(i32, i8*, i32, i8*, i32, i8**, i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
