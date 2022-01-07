; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileDeflate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileDeflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32*, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@Z_DEFLATED = common dso_local global i32 0, align 4
@Z_DEFAULT_STRATEGY = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"zipfile: deflate() error\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32**, i32*, i8**)* @zipfileDeflate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zipfileDeflate(i32* %0, i32 %1, i32** %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8** %4, i8*** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @compressBound(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i64 @sqlite3_malloc64(i32 %19)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %25, i32* %13, align 4
  br label %59

26:                                               ; preds = %5
  %27 = call i32 @memset(%struct.TYPE_6__* %15, i32 0, i32 40)
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  store i32* %28, i32** %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  store i32* %32, i32** %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* @Z_DEFLATED, align 4
  %37 = load i32, i32* @Z_DEFAULT_STRATEGY, align 4
  %38 = call i32 @deflateInit2(%struct.TYPE_6__* %15, i32 9, i32 %36, i32 -15, i32 8, i32 %37)
  %39 = load i32, i32* @Z_FINISH, align 4
  %40 = call i32 @deflate(%struct.TYPE_6__* %15, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @Z_STREAM_END, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %26
  %45 = load i32*, i32** %12, align 8
  %46 = load i32**, i32*** %8, align 8
  store i32* %45, i32** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  br label %57

51:                                               ; preds = %26
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @sqlite3_free(i32* %52)
  %54 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %55 = load i8**, i8*** %10, align 8
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %51, %44
  %58 = call i32 @deflateEnd(%struct.TYPE_6__* %15)
  br label %59

59:                                               ; preds = %57, %24
  %60 = load i32, i32* %13, align 4
  ret i32 %60
}

declare dso_local i32 @compressBound(i32) #1

declare dso_local i64 @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @deflateInit2(%struct.TYPE_6__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @deflate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sqlite3_free(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*) #1

declare dso_local i32 @deflateEnd(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
