; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_osinst.c_vfslogOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_osinst.c_vfslogOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__*, i32* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, i8*, %struct.TYPE_8__*, i32, i32*)* }

@vfslog_io_methods = common dso_local global i32 0, align 4
@OS_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_8__*, i32, i32*)* @vfslogOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfslogOpen(i32* %0, i8* %1, %struct.TYPE_8__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = bitcast %struct.TYPE_8__* %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %13, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %14, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32* @vfslog_io_methods, i32** %20, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i64 1
  %23 = bitcast %struct.TYPE_10__* %22 to %struct.TYPE_8__*
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %25, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = call i64 (...) @vfslog_time()
  store i64 %35, i64* %12, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call %struct.TYPE_11__* @REALVFS(i32* %36)
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_11__*, i8*, %struct.TYPE_8__*, i32, i32*)*, i32 (%struct.TYPE_11__*, i8*, %struct.TYPE_8__*, i32, i32*)** %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call %struct.TYPE_11__* @REALVFS(i32* %40)
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 %39(%struct.TYPE_11__* %41, i8* %42, %struct.TYPE_8__* %45, i32 %46, i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = call i64 (...) @vfslog_time()
  %50 = load i64, i64* %12, align 8
  %51 = sub nsw i64 %49, %50
  store i64 %51, i64* %12, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @OS_OPEN, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @vfslog_call(i32* %52, i32 %53, i64 %56, i64 %57, i32 %58, i32 0, i32 0)
  %60 = load i32*, i32** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @vfslog_string(i32* %60, i8* %61)
  %63 = load i32, i32* %11, align 4
  ret i32 %63
}

declare dso_local i64 @vfslog_time(...) #1

declare dso_local %struct.TYPE_11__* @REALVFS(i32*) #1

declare dso_local i32 @vfslog_call(i32*, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @vfslog_string(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
