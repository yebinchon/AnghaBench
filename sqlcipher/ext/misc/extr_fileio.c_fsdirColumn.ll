; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fileio.c_fsdirColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fileio.c_fsdirColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @fsdirColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsdirColumn(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %8, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %111 [
    i32 129, label %17
    i32 131, label %28
    i32 130, label %35
    i32 132, label %42
    i32 128, label %110
  ]

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %27 = call i32 @sqlite3_result_text(i32* %18, i8* %25, i32 -1, i32 %26)
  br label %112

28:                                               ; preds = %3
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @sqlite3_result_int64(i32* %29, i32 %33)
  br label %112

35:                                               ; preds = %3
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sqlite3_result_int64(i32* %36, i32 %40)
  br label %112

42:                                               ; preds = %3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @S_ISDIR(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @sqlite3_result_null(i32* %51)
  br label %109

53:                                               ; preds = %42
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @S_ISLNK(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %102

57:                                               ; preds = %53
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8* %58, i8** %11, align 8
  store i32 64, i32* %12, align 4
  br label %59

59:                                               ; preds = %57, %88
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @readlink(i8* %62, i8* %63, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %89

70:                                               ; preds = %59
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %73 = icmp ne i8* %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @sqlite3_free(i8* %75)
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i32, i32* %12, align 4
  %79 = mul nsw i32 %78, 2
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i8* @sqlite3_malloc64(i32 %80)
  store i8* %81, i8** %11, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @sqlite3_result_error_nomem(i32* %85)
  %87 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %87, i32* %4, align 4
  br label %114

88:                                               ; preds = %77
  br label %59

89:                                               ; preds = %69
  %90 = load i32*, i32** %6, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %94 = call i32 @sqlite3_result_text(i32* %90, i8* %91, i32 %92, i32 %93)
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %97 = icmp ne i8* %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @sqlite3_free(i8* %99)
  br label %101

101:                                              ; preds = %98, %89
  br label %108

102:                                              ; preds = %53
  %103 = load i32*, i32** %6, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @readFileContents(i32* %103, i8* %106)
  br label %108

108:                                              ; preds = %102, %101
  br label %109

109:                                              ; preds = %108, %50
  br label %110

110:                                              ; preds = %3, %109
  br label %111

111:                                              ; preds = %3, %110
  br label %112

112:                                              ; preds = %111, %35, %28, %17
  %113 = load i32, i32* @SQLITE_OK, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %84
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @sqlite3_result_null(i32*) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @readlink(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @readFileContents(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
