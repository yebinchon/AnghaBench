; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fstreeColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fstreeColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.stat = type { i32, i32 }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_IOERR = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @fstreeColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fstreeColumn(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sqlite3_column_value(i32 %20, i32 0)
  %22 = call i32 @sqlite3_result_value(i32* %17, i32 %21)
  br label %73

23:                                               ; preds = %3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @fstat(i32 %26, %struct.stat* %9)
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @S_ISREG(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sqlite3_result_int64(i32* %36, i32 %38)
  br label %71

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i8* @sqlite3_malloc(i32 %43)
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %48, i32* %4, align 4
  br label %75

49:                                               ; preds = %40
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @read(i32 %52, i8* %53, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* @SQLITE_IOERR, align 4
  store i32 %62, i32* %4, align 4
  br label %75

63:                                               ; preds = %49
  %64 = load i32*, i32** %6, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %68 = call i32 @sqlite3_result_blob(i32* %64, i8* %65, i32 %66, i32 %67)
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @sqlite3_free(i8* %69)
  br label %71

71:                                               ; preds = %63, %35
  br label %72

72:                                               ; preds = %71, %23
  br label %73

73:                                               ; preds = %72, %16
  %74 = load i32, i32* @SQLITE_OK, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %61, %47
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @sqlite3_result_value(i32*, i32) #1

declare dso_local i32 @sqlite3_column_value(i32, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i32) #1

declare dso_local i8* @sqlite3_malloc(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
