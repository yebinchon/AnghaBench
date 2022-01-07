; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-zlib.c_z_compress_level.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-zlib.c_z_compress_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i8*, i8*, i8*, i32* }

@Z_BUF_ERROR = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@Z_MEM_ERROR = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @z_compress_level(i8* %0, i64* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  store i32* %15, i32** %16, align 8
  %17 = load i64, i64* %10, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i8* %20, i8** %21, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = load i64*, i64** %8, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* @Z_BUF_ERROR, align 4
  store i32 %33, i32* %6, align 4
  br label %83

34:                                               ; preds = %5
  %35 = load i32, i32* @KM_SLEEP, align 4
  %36 = call i32 @zlib_workspace_alloc(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @Z_MEM_ERROR, align 4
  store i32 %42, i32* %6, align 4
  br label %83

43:                                               ; preds = %34
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @zlib_deflateInit(%struct.TYPE_5__* %12, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @Z_OK, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @zlib_workspace_free(i32 %51)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %6, align 4
  br label %83

54:                                               ; preds = %43
  %55 = load i32, i32* @Z_FINISH, align 4
  %56 = call i32 @zlib_deflate(%struct.TYPE_5__* %12, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @Z_STREAM_END, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = call i32 @zlib_deflateEnd(%struct.TYPE_5__* %12)
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @zlib_workspace_free(i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @Z_OK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @Z_BUF_ERROR, align 4
  br label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %13, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %6, align 4
  br label %83

74:                                               ; preds = %54
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %8, align 8
  store i64 %76, i64* %77, align 8
  %78 = call i32 @zlib_deflateEnd(%struct.TYPE_5__* %12)
  store i32 %78, i32* %13, align 4
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @zlib_workspace_free(i32 %80)
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %74, %72, %49, %41, %32
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @zlib_workspace_alloc(i32) #1

declare dso_local i32 @zlib_deflateInit(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @zlib_workspace_free(i32) #1

declare dso_local i32 @zlib_deflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @zlib_deflateEnd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
