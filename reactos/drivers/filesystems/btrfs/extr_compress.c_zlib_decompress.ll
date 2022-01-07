; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_compress.c_zlib_decompress.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_compress.c_zlib_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, i8*, i32*, i64, i32, i32 }

@zlib_alloc = common dso_local global i32 0, align 4
@zlib_free = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"inflateInit returned %08x\0A\00", align 1
@STATUS_INTERNAL_ERROR = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"inflate returned %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"inflateEnd returned %08x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlib_decompress(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @zlib_alloc, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 6
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @zlib_free, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = call i32 @inflateInit(%struct.TYPE_5__* %10)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @Z_OK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %24, i32* %5, align 4
  br label %71

25:                                               ; preds = %4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i32* %26, i32** %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32* %30, i32** %31, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %56, %25
  %36 = load i32, i32* @Z_NO_FLUSH, align 4
  %37 = call i32 @inflate(%struct.TYPE_5__* %10, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @Z_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @Z_STREAM_END, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = call i32 @inflateEnd(%struct.TYPE_5__* %10)
  %49 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %49, i32* %5, align 4
  br label %71

50:                                               ; preds = %41, %35
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %60

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @Z_STREAM_END, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %35, label %60

60:                                               ; preds = %56, %54
  %61 = call i32 @inflateEnd(%struct.TYPE_5__* %10)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @Z_OK, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %68, i32* %5, align 4
  br label %71

69:                                               ; preds = %60
  %70 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %69, %65, %45, %21
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @inflateInit(%struct.TYPE_5__*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @inflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
