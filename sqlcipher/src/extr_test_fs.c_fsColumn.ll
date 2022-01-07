; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fsColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fsColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32, i32 }
%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@SQLITE_IOERR = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @fsColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsColumn(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 2
  br label %25

25:                                               ; preds = %22, %19, %3
  %26 = phi i1 [ true, %19 ], [ true, %3 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sqlite3_column_value(i32 %35, i32 0)
  %37 = call i32 @sqlite3_result_value(i32* %32, i32 %36)
  br label %122

38:                                               ; preds = %25
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @sqlite3_column_text(i32 %41, i32 1)
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* @O_RDONLY, align 4
  %46 = call i32 @open(i8* %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @SQLITE_IOERR, align 4
  store i32 %50, i32* %4, align 4
  br label %124

51:                                               ; preds = %38
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @fstat(i32 %52, %struct.stat* %10)
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %55, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, 2
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %64, 1024
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 1024, i32* %13, align 4
  br label %67

67:                                               ; preds = %66, %60
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i8* @sqlite3Realloc(i8* %70, i32 %71)
  store i8* %72, i8** %14, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @close(i32 %76)
  %78 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %78, i32* %4, align 4
  br label %124

79:                                               ; preds = %67
  %80 = load i8*, i8** %14, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %79, %51
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @read(i32 %87, i8* %90, i32 %92)
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @close(i32 %95)
  %97 = load i32, i32* %12, align 4
  %98 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %86
  %102 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %102, i32* %4, align 4
  br label %124

103:                                              ; preds = %86
  %104 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %110, i64 %114
  store i8 0, i8* %115, align 1
  %116 = load i32*, i32** %6, align 8
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %121 = call i32 @sqlite3_result_text(i32* %116, i8* %119, i32 -1, i32 %120)
  br label %122

122:                                              ; preds = %103, %31
  %123 = load i32, i32* @SQLITE_OK, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %101, %75, %49
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32) #1

declare dso_local i32 @sqlite3_column_value(i32, i32) #1

declare dso_local i64 @sqlite3_column_text(i32, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @sqlite3Realloc(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
