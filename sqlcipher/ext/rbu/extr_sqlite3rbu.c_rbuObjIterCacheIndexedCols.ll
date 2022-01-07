; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuObjIterCacheIndexedCols.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuObjIterCacheIndexedCols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32, i8*, i64, i64, i32 }

@SQLITE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"PRAGMA main.index_list = %Q\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"PRAGMA main.index_xinfo = %Q\00", align 1
@RBU_PK_WITHOUT_ROWID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*)* @rbuObjIterCacheIndexedCols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbuObjIterCacheIndexedCols(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SQLITE_OK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memcpy(i32* %19, i32 %22, i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = call i8* @prepareFreeAndCollectError(i32 %32, i32** %5, i32* %34, i32 %38)
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %16, %2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %120, %43
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SQLITE_OK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i64, i64* @SQLITE_ROW, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @sqlite3_step(i32* %54)
  %56 = icmp eq i64 %53, %55
  br label %57

57:                                               ; preds = %52, %46
  %58 = phi i1 [ false, %46 ], [ %56, %52 ]
  br i1 %58, label %59, label %128

59:                                               ; preds = %57
  %60 = load i32*, i32** %5, align 8
  %61 = call i64 @sqlite3_column_text(i32* %60, i32 1)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %7, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @sqlite3_column_int(i32* %63, i32 4)
  store i32 %64, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %128

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = mul i64 4, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memset(i32* %74, i32 1, i32 %80)
  br label %82

82:                                               ; preds = %71, %68
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  %90 = call i8* @prepareFreeAndCollectError(i32 %85, i32** %9, i32* %87, i32 %89)
  %91 = ptrtoint i8* %90 to i64
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %119, %82
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SQLITE_OK, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load i64, i64* @SQLITE_ROW, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call i64 @sqlite3_step(i32* %102)
  %104 = icmp eq i64 %101, %103
  br label %105

105:                                              ; preds = %100, %94
  %106 = phi i1 [ false, %94 ], [ %104, %100 ]
  br i1 %106, label %107, label %120

107:                                              ; preds = %105
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @sqlite3_column_int(i32* %108, i32 1)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 1, i32* %118, align 4
  br label %119

119:                                              ; preds = %112, %107
  br label %94

120:                                              ; preds = %105
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @rbuFinalize(%struct.TYPE_6__* %121, i32* %122)
  store i32 1, i32* %6, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %125, align 8
  br label %46

128:                                              ; preds = %67, %57
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @RBU_PK_WITHOUT_ROWID, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, -1
  store i64 %138, i64* %136, align 8
  br label %139

139:                                              ; preds = %134, %128
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = call i32 @rbuFinalize(%struct.TYPE_6__* %140, i32* %141)
  %143 = load i32, i32* %6, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  store i32* null, i32** %147, align 8
  br label %148

148:                                              ; preds = %145, %139
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i8* @prepareFreeAndCollectError(i32, i32**, i32*, i32) #1

declare dso_local i32 @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @rbuFinalize(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
