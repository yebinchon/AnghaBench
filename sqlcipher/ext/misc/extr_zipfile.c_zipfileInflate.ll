; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileInflate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileInflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32* }

@Z_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"inflateInit2() failed (%d)\00", align 1
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"inflate() failed (%d)\00", align 1
@zipfileFree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @zipfileInflate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zipfileInflate(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32* @sqlite3_malloc(i32 %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @sqlite3_result_error_nomem(i32* %17)
  br label %58

19:                                               ; preds = %4
  %20 = call i32 @memset(%struct.TYPE_6__* %11, i32 0, i32 24)
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i32* %21, i32** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i32* %25, i32** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = call i32 @inflateInit2(%struct.TYPE_6__* %11, i32 -15)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @Z_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @zipfileCtxErrorMsg(i32* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %54

37:                                               ; preds = %19
  %38 = load i32, i32* @Z_NO_FLUSH, align 4
  %39 = call i32 @inflate(%struct.TYPE_6__* %11, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @Z_STREAM_END, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @zipfileCtxErrorMsg(i32* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %53

47:                                               ; preds = %37
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @zipfileFree, align 4
  %52 = call i32 @sqlite3_result_blob(i32* %48, i32* %49, i32 %50, i32 %51)
  store i32* null, i32** %9, align 8
  br label %53

53:                                               ; preds = %47, %43
  br label %54

54:                                               ; preds = %53, %33
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @sqlite3_free(i32* %55)
  %57 = call i32 @inflateEnd(%struct.TYPE_6__* %11)
  br label %58

58:                                               ; preds = %54, %16
  ret void
}

declare dso_local i32* @sqlite3_malloc(i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @inflateInit2(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @zipfileCtxErrorMsg(i32*, i8*, i32) #1

declare dso_local i32 @inflate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i32*, i32, i32) #1

declare dso_local i32 @sqlite3_free(i32*) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
