; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuGetUpdateStmt.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuGetUpdateStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i8*, i32*, %struct.TYPE_12__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_RBU_UPDATE_CACHESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RBU_PK_VTAB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"rbu_imp_\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"UPDATE \22%s%w\22 SET %s WHERE %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_13__*, i8*, i32**)* @rbuGetUpdateStmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbuGetUpdateStmt(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1, i8* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_12__**, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32** %3, i32*** %9, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32**, i32*** %9, align 8
  store i32* null, i32** %17, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  store %struct.TYPE_12__** %19, %struct.TYPE_12__*** %10, align 8
  br label %20

20:                                               ; preds = %54, %4
  %21 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %58

24:                                               ; preds = %20
  %25 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %11, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @strcmp(i8* %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %24
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %37, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %42, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32**, i32*** %9, align 8
  store i32* %48, i32** %49, align 8
  %50 = load i32, i32* @SQLITE_OK, align 4
  store i32 %50, i32* %5, align 4
  br label %177

51:                                               ; preds = %24
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  store %struct.TYPE_12__** %57, %struct.TYPE_12__*** %10, align 8
  br label %20

58:                                               ; preds = %20
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %60 = icmp eq %struct.TYPE_12__* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = icmp eq %struct.TYPE_12__* %64, null
  br label %66

66:                                               ; preds = %61, %58
  %67 = phi i1 [ true, %58 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @SQLITE_RBU_UPDATE_CACHESIZE, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %66
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  store %struct.TYPE_12__** %75, %struct.TYPE_12__*** %10, align 8
  br label %76

76:                                               ; preds = %82, %73
  %77 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %80 = icmp ne %struct.TYPE_12__* %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  store %struct.TYPE_12__** %85, %struct.TYPE_12__*** %10, align 8
  br label %76

86:                                               ; preds = %76
  %87 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @sqlite3_finalize(i32* %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  br label %104

94:                                               ; preds = %66
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = add i64 24, %99
  %101 = add i64 %100, 1
  %102 = call i64 @rbuMalloc(%struct.TYPE_11__* %95, i64 %101)
  %103 = inttoptr i64 %102 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %103, %struct.TYPE_12__** %11, align 8
  br label %104

104:                                              ; preds = %94, %86
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %106 = icmp ne %struct.TYPE_12__* %105, null
  br i1 %106, label %107, label %173

107:                                              ; preds = %104
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %110 = call i8* @rbuObjIterGetWhere(%struct.TYPE_11__* %108, %struct.TYPE_13__* %109)
  store i8* %110, i8** %13, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = call i8* @rbuObjIterGetSetlist(%struct.TYPE_11__* %111, %struct.TYPE_13__* %112, i8* %113)
  store i8* %114, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i64 1
  %117 = bitcast %struct.TYPE_12__* %116 to i8*
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @memcpy(i8* %122, i8* %123, i32 %126)
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %132, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 2
  store %struct.TYPE_12__* %133, %struct.TYPE_12__** %135, align 8
  %136 = load i8*, i8** %14, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %168

138:                                              ; preds = %107
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @RBU_PK_VTAB, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  br label %145

145:                                              ; preds = %144, %138
  %146 = load i8*, i8** %16, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i8*, i8** %14, align 8
  %151 = load i8*, i8** %13, align 8
  %152 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %146, i32 %149, i8* %150, i8* %151)
  store i8* %152, i8** %15, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  %160 = load i8*, i8** %15, align 8
  %161 = call i32 @prepareFreeAndCollectError(i32 %155, i32** %157, i32* %159, i8* %160)
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32**, i32*** %9, align 8
  store i32* %166, i32** %167, align 8
  br label %168

168:                                              ; preds = %145, %107
  %169 = load i8*, i8** %13, align 8
  %170 = call i32 @sqlite3_free(i8* %169)
  %171 = load i8*, i8** %14, align 8
  %172 = call i32 @sqlite3_free(i8* %171)
  br label %173

173:                                              ; preds = %168, %104
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %173, %33
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i64 @rbuMalloc(%struct.TYPE_11__*, i64) #1

declare dso_local i8* @rbuObjIterGetWhere(%struct.TYPE_11__*, %struct.TYPE_13__*) #1

declare dso_local i8* @rbuObjIterGetSetlist(%struct.TYPE_11__*, %struct.TYPE_13__*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @prepareFreeAndCollectError(i32, i32**, i32*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
