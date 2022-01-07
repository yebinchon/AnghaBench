; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3TruncateSegment.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3TruncateSegment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQL_SELECT_SEGDIR = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@SQL_DELETE_SEGMENTS_RANGE = common dso_local global i32 0, align 4
@SQL_CHOMP_SEGDIR = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i8*, i32)* @fts3TruncateSegment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3TruncateSegment(i32* %0, i64 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca %struct.TYPE_3__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %25 = load i32, i32* @SQLITE_OK, align 4
  store i32 %25, i32* %11, align 4
  %26 = bitcast %struct.TYPE_3__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 24, i1 false)
  %27 = bitcast %struct.TYPE_3__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 24, i1 false)
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32* null, i32** %17, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @SQL_SELECT_SEGDIR, align 4
  %30 = call i32 @fts3SqlStmt(i32* %28, i32 %29, i32** %17, i32 0)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @SQLITE_OK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %5
  %35 = load i32*, i32** %17, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @sqlite3_bind_int64(i32* %35, i32 1, i64 %36)
  %38 = load i32*, i32** %17, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @sqlite3_bind_int(i32* %38, i32 2, i32 %39)
  %41 = load i64, i64* @SQLITE_ROW, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = call i64 @sqlite3_step(i32* %42)
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %34
  %46 = load i32*, i32** %17, align 8
  %47 = call i8* @sqlite3_column_blob(i32* %46, i32 4)
  store i8* %47, i8** %19, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = call i32 @sqlite3_column_bytes(i32* %48, i32 4)
  store i32 %49, i32* %20, align 4
  %50 = load i32*, i32** %17, align 8
  %51 = call i64 @sqlite3_column_int64(i32* %50, i32 1)
  store i64 %51, i64* %16, align 8
  %52 = load i8*, i8** %19, align 8
  %53 = load i32, i32* %20, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @fts3TruncateNode(i8* %52, i32 %53, %struct.TYPE_3__* %12, i8* %54, i32 %55, i64* %14)
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %45, %34
  %58 = load i32*, i32** %17, align 8
  %59 = call i32 @sqlite3_reset(i32* %58)
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @SQLITE_OK, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %18, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %63, %57
  br label %66

66:                                               ; preds = %65, %5
  br label %67

67:                                               ; preds = %102, %66
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @SQLITE_OK, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i64, i64* %14, align 8
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %71, %67
  %75 = phi i1 [ false, %67 ], [ %73, %71 ]
  br i1 %75, label %76, label %105

76:                                               ; preds = %74
  store i8* null, i8** %21, align 8
  store i32 0, i32* %22, align 4
  %77 = load i64, i64* %14, align 8
  store i64 %77, i64* %15, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i64, i64* %14, align 8
  %80 = call i32 @sqlite3Fts3ReadBlock(i32* %78, i64 %79, i8** %21, i32* %22, i32 0)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @SQLITE_OK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load i8*, i8** %21, align 8
  %86 = load i32, i32* %22, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @fts3TruncateNode(i8* %85, i32 %86, %struct.TYPE_3__* %13, i8* %87, i32 %88, i64* %14)
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %84, %76
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @SQLITE_OK, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load i32*, i32** %6, align 8
  %96 = load i64, i64* %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @fts3WriteSegment(i32* %95, i64 %96, i8* %98, i32 %100)
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %94, %90
  %103 = load i8*, i8** %21, align 8
  %104 = call i32 @sqlite3_free(i8* %103)
  br label %67

105:                                              ; preds = %74
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @SQLITE_OK, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %132

109:                                              ; preds = %105
  %110 = load i64, i64* %15, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %109
  store i32* null, i32** %23, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* @SQL_DELETE_SEGMENTS_RANGE, align 4
  %115 = call i32 @fts3SqlStmt(i32* %113, i32 %114, i32** %23, i32 0)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @SQLITE_OK, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %112
  %120 = load i32*, i32** %23, align 8
  %121 = load i64, i64* %16, align 8
  %122 = call i32 @sqlite3_bind_int64(i32* %120, i32 1, i64 %121)
  %123 = load i32*, i32** %23, align 8
  %124 = load i64, i64* %15, align 8
  %125 = sub nsw i64 %124, 1
  %126 = call i32 @sqlite3_bind_int64(i32* %123, i32 2, i64 %125)
  %127 = load i32*, i32** %23, align 8
  %128 = call i64 @sqlite3_step(i32* %127)
  %129 = load i32*, i32** %23, align 8
  %130 = call i32 @sqlite3_reset(i32* %129)
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %119, %112
  br label %132

132:                                              ; preds = %131, %109, %105
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @SQLITE_OK, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %167

136:                                              ; preds = %132
  store i32* null, i32** %24, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* @SQL_CHOMP_SEGDIR, align 4
  %139 = call i32 @fts3SqlStmt(i32* %137, i32 %138, i32** %24, i32 0)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @SQLITE_OK, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %166

143:                                              ; preds = %136
  %144 = load i32*, i32** %24, align 8
  %145 = load i64, i64* %15, align 8
  %146 = call i32 @sqlite3_bind_int64(i32* %144, i32 1, i64 %145)
  %147 = load i32*, i32** %24, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @SQLITE_STATIC, align 4
  %153 = call i32 @sqlite3_bind_blob(i32* %147, i32 2, i8* %149, i32 %151, i32 %152)
  %154 = load i32*, i32** %24, align 8
  %155 = load i64, i64* %7, align 8
  %156 = call i32 @sqlite3_bind_int64(i32* %154, i32 3, i64 %155)
  %157 = load i32*, i32** %24, align 8
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @sqlite3_bind_int(i32* %157, i32 4, i32 %158)
  %160 = load i32*, i32** %24, align 8
  %161 = call i64 @sqlite3_step(i32* %160)
  %162 = load i32*, i32** %24, align 8
  %163 = call i32 @sqlite3_reset(i32* %162)
  store i32 %163, i32* %11, align 4
  %164 = load i32*, i32** %24, align 8
  %165 = call i32 @sqlite3_bind_null(i32* %164, i32 2)
  br label %166

166:                                              ; preds = %143, %136
  br label %167

167:                                              ; preds = %166, %132
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @sqlite3_free(i8* %169)
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @sqlite3_free(i8* %172)
  %174 = load i32, i32* %11, align 4
  ret i32 %174
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fts3SqlStmt(i32*, i32, i32**, i32) #2

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i64) #2

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #2

declare dso_local i64 @sqlite3_step(i32*) #2

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #2

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #2

declare dso_local i64 @sqlite3_column_int64(i32*, i32) #2

declare dso_local i32 @fts3TruncateNode(i8*, i32, %struct.TYPE_3__*, i8*, i32, i64*) #2

declare dso_local i32 @sqlite3_reset(i32*) #2

declare dso_local i32 @sqlite3Fts3ReadBlock(i32*, i64, i8**, i32*, i32) #2

declare dso_local i32 @fts3WriteSegment(i32*, i64, i8*, i32) #2

declare dso_local i32 @sqlite3_free(i8*) #2

declare dso_local i32 @sqlite3_bind_blob(i32*, i32, i8*, i32, i32) #2

declare dso_local i32 @sqlite3_bind_null(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
