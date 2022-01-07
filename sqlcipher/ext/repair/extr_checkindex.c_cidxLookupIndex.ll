; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkindex.c_cidxLookupIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkindex.c_cidxLookupIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i8* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"SELECT tbl_name, sql FROM sqlite_master WHERE name=%Q AND type='index'\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"PRAGMA index_xinfo(%Q)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"rowid\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"\22%w\22 COLLATE %s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_7__**, i8**)* @cidxLookupIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cidxLookupIndex(i32* %0, i8* %1, %struct.TYPE_7__** %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_7__** %2, %struct.TYPE_7__*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %21 = load i32, i32* @SQLITE_OK, align 4
  store i32 %21, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32* @cidxPrepare(i32* %9, i32* %22, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32* %24, i32** %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @SQLITE_OK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %135

28:                                               ; preds = %4
  %29 = load i32*, i32** %12, align 8
  %30 = call i64 @sqlite3_step(i32* %29)
  %31 = load i64, i64* @SQLITE_ROW, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %135

33:                                               ; preds = %28
  %34 = load i32*, i32** %12, align 8
  %35 = call i64 @sqlite3_column_text(i32* %34, i32 1)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %14, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = call i64 @sqlite3_column_text(i32* %37, i32 0)
  %39 = inttoptr i64 %38 to i8*
  %40 = call i8* @cidxStrdup(i32* %9, i8* %39)
  store i8* %40, i8** %10, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32* @cidxPrepare(i32* %9, i32* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i32* %43, i32** %13, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @SQLITE_OK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %122

47:                                               ; preds = %33
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %48

48:                                               ; preds = %113, %47
  %49 = load i32*, i32** %13, align 8
  %50 = call i64 @sqlite3_step(i32* %49)
  %51 = load i64, i64* @SQLITE_ROW, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %119

53:                                               ; preds = %48
  %54 = load i32*, i32** %13, align 8
  %55 = call i64 @sqlite3_column_text(i32* %54, i32 2)
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %17, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i64 @sqlite3_column_text(i32* %57, i32 4)
  %59 = inttoptr i64 %58 to i8*
  store i8* %59, i8** %18, align 8
  %60 = load i8*, i8** %17, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  br label %63

63:                                               ; preds = %62, %53
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 8
  %70 = sext i32 %69 to i64
  %71 = mul i64 24, %70
  %72 = add i64 24, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %20, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %75 = load i32, i32* %20, align 4
  %76 = call i64 @sqlite3_realloc(%struct.TYPE_7__* %74, i32 %75)
  %77 = inttoptr i64 %76 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %11, align 8
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 8
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %67, %63
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %16, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %86
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %19, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = call i8* @sqlite3_column_int(i32* %88, i32 3)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = call i8* @sqlite3_column_int(i32* %92, i32 5)
  %94 = ptrtoint i8* %93 to i64
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %80
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99, %80
  %105 = load i8*, i8** %17, align 8
  %106 = load i8*, i8** %18, align 8
  %107 = call i64 @cidxMprintf(i32* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %105, i8* %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  br label %113

110:                                              ; preds = %99
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %110, %104
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  br label %48

119:                                              ; preds = %48
  %120 = load i32*, i32** %13, align 8
  %121 = call i32 @cidxFinalize(i32* %9, i32* %120)
  br label %122

122:                                              ; preds = %119, %33
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @SQLITE_OK, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = load i8*, i8** %14, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i32*, i32** %5, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = call i32 @cidxParseSQL(i32* %130, %struct.TYPE_7__* %131, i8* %132)
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %129, %126, %122
  br label %135

135:                                              ; preds = %134, %28, %4
  %136 = load i32*, i32** %12, align 8
  %137 = call i32 @cidxFinalize(i32* %9, i32* %136)
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @SQLITE_OK, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load i8*, i8** %10, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %144, %141, %135
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @SQLITE_OK, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i8*, i8** %10, align 8
  %152 = call i32 @sqlite3_free(i8* %151)
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %154 = call i32 @cidxFreeIndex(%struct.TYPE_7__* %153)
  br label %160

155:                                              ; preds = %146
  %156 = load i8*, i8** %10, align 8
  %157 = load i8**, i8*** %8, align 8
  store i8* %156, i8** %157, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %159 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %158, %struct.TYPE_7__** %159, align 8
  br label %160

160:                                              ; preds = %155, %150
  %161 = load i32, i32* %9, align 4
  ret i32 %161
}

declare dso_local i32* @cidxPrepare(i32*, i32*, i8*, i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i8* @cidxStrdup(i32*, i8*) #1

declare dso_local i64 @sqlite3_realloc(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @sqlite3_column_int(i32*, i32) #1

declare dso_local i64 @cidxMprintf(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @cidxFinalize(i32*, i32*) #1

declare dso_local i32 @cidxParseSQL(i32*, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @cidxFreeIndex(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
