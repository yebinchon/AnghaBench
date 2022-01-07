; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkfreelist.c_checkFreelist.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkfreelist.c_checkFreelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [258 x i8] c"WITH freelist_trunk(i, d, n) AS (SELECT 1, NULL, sqlite_readint32(data, 32) FROM sqlite_dbpage(:1) WHERE pgno=1 UNION ALL SELECT n, data, sqlite_readint32(data) FROM freelist_trunk, sqlite_dbpage(:1) WHERE pgno=n )SELECT i, d FROM freelist_trunk WHERE i!=1;\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"PRAGMA %s.page_count\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"PRAGMA %s.freelist_count\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"leaf count out of range (%d) on trunk page %d\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"trunk page %d is out of range\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"leaf page %d is out of range (child %d of trunk page %d)\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"free-list count mismatch: actual=%d header=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8**)* @checkFreelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkFreelist(i32* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* getelementptr inbounds ([258 x i8], [258 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %25

25:                                               ; preds = %24, %3
  %26 = load i32*, i32** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @sqlGetInteger(i32* %26, i8* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %12)
  store i32 %28, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @sqlGetInteger(i32* %31, i8* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32* %13)
  store i32 %33, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %162

37:                                               ; preds = %30
  %38 = load i32*, i32** %5, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @sqlite3_prepare_v2(i32* %38, i8* %39, i32 -1, i32** %11, i32 0)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @SQLITE_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %162

46:                                               ; preds = %37
  %47 = load i32*, i32** %11, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @SQLITE_STATIC, align 4
  %50 = call i32 @sqlite3_bind_text(i32* %47, i32 1, i8* %48, i32 -1, i32 %49)
  br label %51

51:                                               ; preds = %138, %46
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @SQLITE_OK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32*, i32** %11, align 8
  %57 = call i64 @sqlite3_step(i32* %56)
  %58 = load i64, i64* @SQLITE_ROW, align 8
  %59 = icmp eq i64 %57, %58
  br label %60

60:                                               ; preds = %55, %51
  %61 = phi i1 [ false, %51 ], [ %59, %55 ]
  br i1 %61, label %62, label %139

62:                                               ; preds = %60
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @sqlite3_column_int(i32* %63, i32 0)
  store i32 %64, i32* %16, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = call i64 @sqlite3_column_blob(i32* %65, i32 1)
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** %17, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @sqlite3_column_bytes(i32* %68, i32 1)
  store i32 %69, i32* %18, align 4
  %70 = load i32*, i32** %17, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = call i32 @get4byte(i32* %71)
  store i32 %72, i32* %19, align 4
  %73 = load i32*, i32** %17, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = call i32 @get4byte(i32* %74)
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* %18, align 4
  %78 = sdiv i32 %77, 4
  %79 = sub nsw i32 %78, 2
  %80 = sub nsw i32 %79, 6
  %81 = icmp sgt i32 %76, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %62
  %83 = load i8**, i8*** %7, align 8
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 (i8**, i8*, i32, ...) @checkFreelistError(i8** %83, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %18, align 4
  %88 = sdiv i32 %87, 4
  %89 = sub nsw i32 %88, 2
  %90 = sub nsw i32 %89, 6
  store i32 %90, i32* %20, align 4
  br label %91

91:                                               ; preds = %82, %62
  %92 = load i32, i32* %20, align 4
  %93 = add nsw i32 1, %92
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load i8**, i8*** %7, align 8
  %101 = load i32, i32* %19, align 4
  %102 = call i32 (i8**, i8*, i32, ...) @checkFreelistError(i8** %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %99, %91
  store i32 0, i32* %15, align 4
  br label %104

104:                                              ; preds = %135, %103
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @SQLITE_OK, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %20, align 4
  %111 = icmp slt i32 %109, %110
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i1 [ false, %104 ], [ %111, %108 ]
  br i1 %113, label %114, label %138

114:                                              ; preds = %112
  %115 = load i32*, i32** %17, align 8
  %116 = load i32, i32* %15, align 4
  %117 = mul nsw i32 4, %116
  %118 = add nsw i32 8, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = call i32 @get4byte(i32* %120)
  store i32 %121, i32* %21, align 4
  %122 = load i32, i32* %21, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %114
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %124, %114
  %129 = load i8**, i8*** %7, align 8
  %130 = load i32, i32* %21, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %16, align 4
  %133 = call i32 (i8**, i8*, i32, ...) @checkFreelistError(i8** %129, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %130, i32 %131, i32 %132)
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %128, %124
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  br label %104

138:                                              ; preds = %112
  br label %51

139:                                              ; preds = %60
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @SQLITE_OK, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %139
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load i8**, i8*** %7, align 8
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %13, align 4
  %151 = call i32 (i8**, i8*, i32, ...) @checkFreelistError(i8** %148, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %149, i32 %150)
  store i32 %151, i32* %9, align 4
  br label %152

152:                                              ; preds = %147, %143, %139
  %153 = load i32*, i32** %11, align 8
  %154 = call i32 @sqlite3_finalize(i32* %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @SQLITE_OK, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %158, %152
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %160, %44, %35
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @sqlGetInteger(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i64 @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i32 @get4byte(i32*) #1

declare dso_local i32 @checkFreelistError(i8**, i8*, i32, ...) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
