; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fsFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fsFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"SELECT * FROM %Q.%Q WHERE rowid=?\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"SELECT * FROM %Q.%Q\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i8*, i32, i32**)* @fsFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsFilter(%struct.TYPE_6__* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = bitcast %struct.TYPE_6__* %17 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %13, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %14, align 8
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25, %5
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 1
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ false, %28 ], [ %33, %31 ]
  br label %36

36:                                               ; preds = %34, %25
  %37 = phi i1 [ true, %25 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %76

42:                                               ; preds = %36
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48)
  store i8* %49, i8** %15, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %53, i32* %6, align 4
  br label %107

54:                                               ; preds = %42
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %15, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = call i32 @sqlite3_prepare_v2(i32 %57, i8* %58, i32 -1, i32* %60, i32 0)
  store i32 %61, i32* %12, align 4
  %62 = load i8*, i8** %15, align 8
  %63 = call i32 @sqlite3_free(i8* %62)
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @SQLITE_OK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %54
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32**, i32*** %11, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @sqlite3_bind_value(i32 %70, i32 1, i32* %73)
  br label %75

75:                                               ; preds = %67, %54
  br label %98

76:                                               ; preds = %36
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82)
  store i8* %83, i8** %16, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %76
  %87 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %87, i32* %6, align 4
  br label %107

88:                                               ; preds = %76
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %16, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = call i32 @sqlite3_prepare_v2(i32 %91, i8* %92, i32 -1, i32* %94, i32 0)
  store i32 %95, i32* %12, align 4
  %96 = load i8*, i8** %16, align 8
  %97 = call i32 @sqlite3_free(i8* %96)
  br label %98

98:                                               ; preds = %88, %75
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @SQLITE_OK, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %104 = call i32 @fsNext(%struct.TYPE_6__* %103)
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %102, %98
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %105, %86, %52
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32, i32) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_bind_value(i32, i32, i32*) #1

declare dso_local i32 @fsNext(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
