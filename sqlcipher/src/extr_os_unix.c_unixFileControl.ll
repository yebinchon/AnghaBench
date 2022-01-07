; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_os_unix.c_unixFileControl.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_os_unix.c_unixFileControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@UNIXFILE_PERSIST_WAL = common dso_local global i32 0, align 4
@UNIXFILE_PSOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SQLITE_NOTFOUND = common dso_local global i32 0, align 4
@F2FS_IOC_ABORT_VOLATILE_WRITE = common dso_local global i32 0, align 4
@F2FS_IOC_COMMIT_ATOMIC_WRITE = common dso_local global i32 0, align 4
@F2FS_IOC_START_ATOMIC_WRITE = common dso_local global i32 0, align 4
@SQLITE_IOERR_BEGIN_ATOMIC = common dso_local global i32 0, align 4
@SQLITE_IOERR_COMMIT_ATOMIC = common dso_local global i32 0, align 4
@SQLITE_IOERR_ROLLBACK_ATOMIC = common dso_local global i32 0, align 4
@sqlite3GlobalConfig = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @unixFileControl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unixFileControl(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %96 [
    i32 137, label %14
    i32 138, label %21
    i32 143, label %28
    i32 130, label %35
    i32 134, label %44
    i32 133, label %51
    i32 128, label %58
    i32 129, label %68
    i32 139, label %90
  ]

14:                                               ; preds = %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @SQLITE_OK, align 4
  store i32 %20, i32* %4, align 4
  br label %98

21:                                               ; preds = %3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  store i32 %27, i32* %4, align 4
  br label %98

28:                                               ; preds = %3
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @SQLITE_OK, align 4
  store i32 %34, i32* %4, align 4
  br label %98

35:                                               ; preds = %3
  %36 = call i32 @SimulateIOErrorBenign(i32 1)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fcntlSizeHint(%struct.TYPE_10__* %37, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = call i32 @SimulateIOErrorBenign(i32 0)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %98

44:                                               ; preds = %3
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = load i32, i32* @UNIXFILE_PERSIST_WAL, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = call i32 @unixModeBit(%struct.TYPE_10__* %45, i32 %46, i32* %48)
  %50 = load i32, i32* @SQLITE_OK, align 4
  store i32 %50, i32* %4, align 4
  br label %98

51:                                               ; preds = %3
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = load i32, i32* @UNIXFILE_PSOW, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = call i32 @unixModeBit(%struct.TYPE_10__* %52, i32 %53, i32* %55)
  %57 = load i32, i32* @SQLITE_OK, align 4
  store i32 %57, i32* %4, align 4
  br label %98

58:                                               ; preds = %3
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i8*, i8** %7, align 8
  %66 = bitcast i8* %65 to i8**
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @SQLITE_OK, align 4
  store i32 %67, i32* %4, align 4
  br label %98

68:                                               ; preds = %3
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @sqlite3_malloc64(i32 %73)
  store i8* %74, i8** %10, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %68
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @unixGetTempname(i32 %82, i8* %83)
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = bitcast i8* %86 to i8**
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %77, %68
  %89 = load i32, i32* @SQLITE_OK, align 4
  store i32 %89, i32* %4, align 4
  br label %98

90:                                               ; preds = %3
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %92 = call i32 @fileHasMoved(%struct.TYPE_10__* %91)
  %93 = load i8*, i8** %7, align 8
  %94 = bitcast i8* %93 to i32*
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @SQLITE_OK, align 4
  store i32 %95, i32* %4, align 4
  br label %98

96:                                               ; preds = %3
  %97 = load i32, i32* @SQLITE_NOTFOUND, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %90, %88, %58, %51, %44, %35, %28, %21, %14
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @SimulateIOErrorBenign(i32) #1

declare dso_local i32 @fcntlSizeHint(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @unixModeBit(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @unixGetTempname(i32, i8*) #1

declare dso_local i32 @fileHasMoved(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
