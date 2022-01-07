; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_os_unix.c_unixWrite.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_os_unix.c_unixWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i64, i64, i64 }

@ENOSPC = common dso_local global i64 0, align 8
@SQLITE_IOERR_WRITE = common dso_local global i32 0, align 4
@SQLITE_FULL = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@PENDING_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @unixWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unixWrite(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = ptrtoint i32* %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  br label %21

21:                                               ; preds = %34, %4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @seekAndWrite(%struct.TYPE_5__* %22, i32 %23, i8* %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* %11, align 4
  %31 = icmp sgt i32 %30, 0
  br label %32

32:                                               ; preds = %29, %21
  %33 = phi i1 [ false, %21 ], [ %31, %29 ]
  br i1 %33, label %34, label %45

34:                                               ; preds = %32
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8* %44, i8** %7, align 8
  br label %21

45:                                               ; preds = %32
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %8, align 4
  %46 = call i32 @SimulateIOError(i32 1)
  store i32 0, i32* %11, align 4
  store i32 1, i32* %8, align 4
  %47 = call i32 @SimulateDiskfullError(i32 1)
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %45
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ENOSPC, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @SQLITE_IOERR_WRITE, align 4
  store i32 %61, i32* %5, align 4
  br label %68

62:                                               ; preds = %54, %51
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = call i32 @storeLastErrno(%struct.TYPE_5__* %63, i32 0)
  %65 = load i32, i32* @SQLITE_FULL, align 4
  store i32 %65, i32* %5, align 4
  br label %68

66:                                               ; preds = %45
  %67 = load i32, i32* @SQLITE_OK, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %62, %60
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @seekAndWrite(%struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i32 @SimulateIOError(i32) #1

declare dso_local i32 @SimulateDiskfullError(i32) #1

declare dso_local i32 @storeLastErrno(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
