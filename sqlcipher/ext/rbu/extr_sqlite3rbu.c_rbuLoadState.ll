; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuLoadState.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuLoadState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"SELECT k, v FROM %s.rbu_state\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@RBU_STAGE_OAL = common dso_local global i32 0, align 4
@RBU_STAGE_MOVE = common dso_local global i32 0, align 4
@RBU_STAGE_CKPT = common dso_local global i32 0, align 4
@SQLITE_CORRUPT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_6__*)* @rbuLoadState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @rbuLoadState(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  store i32* null, i32** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = call i64 @rbuMalloc(%struct.TYPE_6__* %8, i32 72)
  %10 = inttoptr i64 %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %4, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %135

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @prepareFreeAndCollectError(i32 %17, i32** %5, i32* %19, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %121, %14
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i64, i64* @SQLITE_ROW, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @sqlite3_step(i32* %31)
  %33 = icmp eq i64 %30, %32
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ false, %25 ], [ %33, %29 ]
  br i1 %35, label %36, label %122

36:                                               ; preds = %34
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @sqlite3_column_int(i32* %37, i32 0)
  switch i32 %38, label %118 [
    i32 129, label %39
    i32 128, label %67
    i32 134, label %74
    i32 130, label %81
    i32 131, label %86
    i32 137, label %91
    i32 136, label %96
    i32 133, label %101
    i32 132, label %106
    i32 135, label %111
  ]

39:                                               ; preds = %36
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @sqlite3_column_int(i32* %40, i32 1)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @RBU_STAGE_OAL, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %39
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @RBU_STAGE_MOVE, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @RBU_STAGE_CKPT, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i8*, i8** @SQLITE_CORRUPT, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %55, %49, %39
  br label %121

67:                                               ; preds = %36
  %68 = load i32*, i32** %5, align 8
  %69 = call i64 @sqlite3_column_text(i32* %68, i32 1)
  %70 = inttoptr i64 %69 to i8*
  %71 = call i8* @rbuStrndup(i8* %70, i32* %6)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 9
  store i8* %71, i8** %73, align 8
  br label %121

74:                                               ; preds = %36
  %75 = load i32*, i32** %5, align 8
  %76 = call i64 @sqlite3_column_text(i32* %75, i32 1)
  %77 = inttoptr i64 %76 to i8*
  %78 = call i8* @rbuStrndup(i8* %77, i32* %6)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 8
  store i8* %78, i8** %80, align 8
  br label %121

81:                                               ; preds = %36
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @sqlite3_column_int(i32* %82, i32 1)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %121

86:                                               ; preds = %36
  %87 = load i32*, i32** %5, align 8
  %88 = call i8* @sqlite3_column_int64(i32* %87, i32 1)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 7
  store i8* %88, i8** %90, align 8
  br label %121

91:                                               ; preds = %36
  %92 = load i32*, i32** %5, align 8
  %93 = call i8* @sqlite3_column_int64(i32* %92, i32 1)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 6
  store i8* %93, i8** %95, align 8
  br label %121

96:                                               ; preds = %36
  %97 = load i32*, i32** %5, align 8
  %98 = call i8* @sqlite3_column_int64(i32* %97, i32 1)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 5
  store i8* %98, i8** %100, align 8
  br label %121

101:                                              ; preds = %36
  %102 = load i32*, i32** %5, align 8
  %103 = call i8* @sqlite3_column_int64(i32* %102, i32 1)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 4
  store i8* %103, i8** %105, align 8
  br label %121

106:                                              ; preds = %36
  %107 = load i32*, i32** %5, align 8
  %108 = call i8* @sqlite3_column_int64(i32* %107, i32 1)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  br label %121

111:                                              ; preds = %36
  %112 = load i32*, i32** %5, align 8
  %113 = call i64 @sqlite3_column_text(i32* %112, i32 1)
  %114 = inttoptr i64 %113 to i8*
  %115 = call i8* @rbuStrndup(i8* %114, i32* %6)
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  br label %121

118:                                              ; preds = %36
  %119 = load i8*, i8** @SQLITE_CORRUPT, align 8
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %118, %111, %106, %101, %96, %91, %86, %81, %74, %67, %66
  br label %25

122:                                              ; preds = %34
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @sqlite3_finalize(i32* %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @SQLITE_OK, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %128, %122
  %131 = load i32, i32* %6, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %134, %struct.TYPE_7__** %2, align 8
  br label %135

135:                                              ; preds = %130, %13
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %136
}

declare dso_local i64 @rbuMalloc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @prepareFreeAndCollectError(i32, i32**, i32*, i32) #1

declare dso_local i32 @sqlite3_mprintf(i8*, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i8* @rbuStrndup(i8*, i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i8* @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
