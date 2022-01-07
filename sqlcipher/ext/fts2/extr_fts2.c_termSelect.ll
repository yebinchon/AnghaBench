; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_termSelect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_termSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i32 }

@SEGDIR_SELECT_ALL_STMT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@DL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i8*, i32, i32, i32, %struct.TYPE_12__*)* @termSelect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @termSelect(%struct.TYPE_11__* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_12__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_12__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %15, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %23 = load i32, i32* @SEGDIR_SELECT_ALL_STMT, align 4
  %24 = call i32 @sql_get_statement(%struct.TYPE_11__* %22, i32 %23, i32** %17)
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = load i32, i32* @SQLITE_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* %18, align 4
  store i32 %29, i32* %8, align 4
  br label %94

30:                                               ; preds = %7
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = call i32 @dataBufferInit(%struct.TYPE_12__* %16, i32 0)
  br label %38

38:                                               ; preds = %62, %30
  %39 = load i32*, i32** %17, align 8
  %40 = call i32 @sqlite3_step(i32* %39)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* @SQLITE_ROW, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load i32*, i32** %17, align 8
  %45 = call i8* @sqlite3_column_blob(i32* %44, i32 2)
  store i8* %45, i8** %19, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = call i32 @sqlite3_column_bytes(i32* %46, i32 2)
  store i32 %47, i32* %20, align 4
  %48 = load i32*, i32** %17, align 8
  %49 = call i32 @sqlite3_column_int64(i32* %48, i32 1)
  store i32 %49, i32* %21, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %51 = load i8*, i8** %19, align 8
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %21, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @loadSegment(%struct.TYPE_11__* %50, i8* %51, i32 %52, i32 %53, i8* %54, i32 %55, i32 %56, %struct.TYPE_12__* %16)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* @SQLITE_OK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  br label %91

62:                                               ; preds = %43
  br label %38

63:                                               ; preds = %38
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* @SQLITE_DONE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 -1, i32* %10, align 4
  br label %78

78:                                               ; preds = %77, %71
  %79 = load i32, i32* @DL_DEFAULT, align 4
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %87 = call i32 @docListTrim(i32 %79, i32 %81, i64 %83, i32 %84, i32 %85, %struct.TYPE_12__* %86)
  br label %88

88:                                               ; preds = %78, %67
  %89 = load i32, i32* @SQLITE_OK, align 4
  store i32 %89, i32* %18, align 4
  br label %90

90:                                               ; preds = %88, %63
  br label %91

91:                                               ; preds = %90, %61
  %92 = call i32 @dataBufferDestroy(%struct.TYPE_12__* %16)
  %93 = load i32, i32* %18, align 4
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %91, %28
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local i32 @sql_get_statement(%struct.TYPE_11__*, i32, i32**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dataBufferInit(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @loadSegment(%struct.TYPE_11__*, i8*, i32, i32, i8*, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @docListTrim(i32, i32, i64, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @dataBufferDestroy(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
