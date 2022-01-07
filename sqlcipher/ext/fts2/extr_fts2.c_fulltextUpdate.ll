; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_fulltextUpdate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_fulltextUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"FTS2 Update %p\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_INTEGER = common dso_local global i64 0, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32**, i64*)* @fulltextUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fulltextUpdate(i32* %0, i32 %1, i32** %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = call i32 @TRACE(i8* %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %54

19:                                               ; preds = %4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = load i32**, i32*** %7, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @sqlite3_value_int64(i32* %23)
  %25 = call i32 @index_delete(%struct.TYPE_8__* %20, i64 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %19
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = call i32 @content_exists(%struct.TYPE_8__* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @SQLITE_ROW, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @SQLITE_OK, align 4
  store i32 %36, i32* %10, align 4
  br label %52

37:                                               ; preds = %29
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @SQLITE_DONE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = call i32 @clearPendingTerms(%struct.TYPE_8__* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @SQLITE_OK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %49 = call i32 @segdir_delete_all(%struct.TYPE_8__* %48)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50, %37
  br label %52

52:                                               ; preds = %51, %35
  br label %53

53:                                               ; preds = %52, %19
  br label %116

54:                                               ; preds = %4
  %55 = load i32**, i32*** %7, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @sqlite3_value_type(i32* %57)
  %59 = load i64, i64* @SQLITE_NULL, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %97

61:                                               ; preds = %54
  %62 = load i32**, i32*** %7, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @sqlite3_value_int64(i32* %64)
  store i64 %65, i64* %11, align 8
  %66 = load i32**, i32*** %7, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @sqlite3_value_type(i32* %68)
  %70 = load i64, i64* @SQLITE_INTEGER, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %61
  %73 = load i32**, i32*** %7, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @sqlite3_value_int64(i32* %75)
  %77 = load i64, i64* %11, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72, %61
  %80 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %80, i32* %10, align 4
  br label %96

81:                                               ; preds = %72
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 2, %85
  %87 = add nsw i32 %86, 1
  %88 = icmp eq i32 %82, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load i32**, i32*** %7, align 8
  %94 = getelementptr inbounds i32*, i32** %93, i64 2
  %95 = call i32 @index_update(%struct.TYPE_8__* %91, i64 %92, i32** %94)
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %81, %79
  br label %115

97:                                               ; preds = %54
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 2, %101
  %103 = add nsw i32 %102, 1
  %104 = icmp eq i32 %98, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %108 = load i32**, i32*** %7, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32**, i32*** %7, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 2
  %113 = load i64*, i64** %8, align 8
  %114 = call i32 @index_insert(%struct.TYPE_8__* %107, i32* %110, i32** %112, i64* %113)
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %97, %96
  br label %116

116:                                              ; preds = %115, %53
  %117 = load i32, i32* %10, align 4
  ret i32 %117
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @index_delete(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @content_exists(%struct.TYPE_8__*) #1

declare dso_local i32 @clearPendingTerms(%struct.TYPE_8__*) #1

declare dso_local i32 @segdir_delete_all(%struct.TYPE_8__*) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @index_update(%struct.TYPE_8__*, i64, i32**) #1

declare dso_local i32 @index_insert(%struct.TYPE_8__*, i32*, i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
