; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3DoclistPhraseMerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3DoclistPhraseMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FTS3_VARINT_MAX = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i8**, i32*)* @fts3DoclistPhraseMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3DoclistPhraseMerge(i32 %0, i32 %1, i8* %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %29 = load i8**, i8*** %12, align 8
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %17, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8* %34, i8** %18, align 8
  %35 = load i8*, i8** %17, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8* %39, i8** %19, align 8
  %40 = load i8*, i8** %10, align 8
  store i8* %40, i8** %20, align 8
  %41 = load i8*, i8** %17, align 8
  store i8* %41, i8** %21, align 8
  store i32 0, i32* %23, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %6
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @FTS3_VARINT_MAX, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i8* @sqlite3_malloc64(i64 %53)
  store i8* %54, i8** %24, align 8
  %55 = load i8*, i8** %24, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %58, i32* %7, align 4
  br label %135

59:                                               ; preds = %48
  br label %62

60:                                               ; preds = %6
  %61 = load i8*, i8** %17, align 8
  store i8* %61, i8** %24, align 8
  br label %62

62:                                               ; preds = %60, %59
  %63 = load i8*, i8** %24, align 8
  store i8* %63, i8** %22, align 8
  %64 = load i8*, i8** %18, align 8
  %65 = call i32 @fts3GetDeltaVarint3(i8** %20, i8* %64, i32 0, i64* %14)
  %66 = load i8*, i8** %19, align 8
  %67 = call i32 @fts3GetDeltaVarint3(i8** %21, i8* %66, i32 0, i64* %15)
  br label %68

68:                                               ; preds = %117, %62
  %69 = load i8*, i8** %20, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i8*, i8** %21, align 8
  %73 = icmp ne i8* %72, null
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi i1 [ false, %68 ], [ %73, %71 ]
  br i1 %75, label %76, label %118

76:                                               ; preds = %74
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %15, align 8
  %79 = call i64 @DOCID_CMP(i64 %77, i64 %78)
  store i64 %79, i64* %25, align 8
  %80 = load i64, i64* %25, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %76
  %83 = load i8*, i8** %22, align 8
  store i8* %83, i8** %26, align 8
  %84 = load i64, i64* %16, align 8
  store i64 %84, i64* %27, align 8
  %85 = load i32, i32* %23, align 4
  store i32 %85, i32* %28, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i64, i64* %14, align 8
  %88 = call i32 @fts3PutDeltaVarint3(i8** %22, i32 %86, i64* %16, i32* %23, i64 %87)
  %89 = load i32, i32* %9, align 4
  %90 = call i64 @fts3PoslistPhraseMerge(i8** %22, i32 %89, i32 0, i32 1, i8** %20, i8** %21)
  %91 = icmp eq i64 0, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %82
  %93 = load i8*, i8** %26, align 8
  store i8* %93, i8** %22, align 8
  %94 = load i64, i64* %27, align 8
  store i64 %94, i64* %16, align 8
  %95 = load i32, i32* %28, align 4
  store i32 %95, i32* %23, align 4
  br label %96

96:                                               ; preds = %92, %82
  %97 = load i8*, i8** %18, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @fts3GetDeltaVarint3(i8** %20, i8* %97, i32 %98, i64* %14)
  %100 = load i8*, i8** %19, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @fts3GetDeltaVarint3(i8** %21, i8* %100, i32 %101, i64* %15)
  br label %117

103:                                              ; preds = %76
  %104 = load i64, i64* %25, align 8
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = call i32 @fts3PoslistCopy(i32 0, i8** %20)
  %108 = load i8*, i8** %18, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @fts3GetDeltaVarint3(i8** %20, i8* %108, i32 %109, i64* %14)
  br label %116

111:                                              ; preds = %103
  %112 = call i32 @fts3PoslistCopy(i32 0, i8** %21)
  %113 = load i8*, i8** %19, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @fts3GetDeltaVarint3(i8** %21, i8* %113, i32 %114, i64* %15)
  br label %116

116:                                              ; preds = %111, %106
  br label %117

117:                                              ; preds = %116, %96
  br label %68

118:                                              ; preds = %74
  %119 = load i8*, i8** %22, align 8
  %120 = load i8*, i8** %24, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = trunc i64 %123 to i32
  %125 = load i32*, i32** %13, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %118
  %129 = load i8*, i8** %17, align 8
  %130 = call i32 @sqlite3_free(i8* %129)
  %131 = load i8*, i8** %24, align 8
  %132 = load i8**, i8*** %12, align 8
  store i8* %131, i8** %132, align 8
  br label %133

133:                                              ; preds = %128, %118
  %134 = load i32, i32* @SQLITE_OK, align 4
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %133, %57
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3_malloc64(i64) #1

declare dso_local i32 @fts3GetDeltaVarint3(i8**, i8*, i32, i64*) #1

declare dso_local i64 @DOCID_CMP(i64, i64) #1

declare dso_local i32 @fts3PutDeltaVarint3(i8**, i32, i64*, i32*, i64) #1

declare dso_local i64 @fts3PoslistPhraseMerge(i8**, i32, i32, i32, i8**, i8**) #1

declare dso_local i32 @fts3PoslistCopy(i32, i8**) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
