; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mmapwrite/extr_mmapwrite.c_map_writer.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mmapwrite/extr_mmapwrite.c_map_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"open file failed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"truncate file failed\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"access file failed!\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"map file failed\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"unmap file failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @map_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @map_writer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [10 x i8], align 1
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %10 = call i32 (...) @getpagesize()
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %2, align 8
  store i8* %11, i8** %8, align 8
  br label %12

12:                                               ; preds = %1, %84
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* @F_OK, align 4
  %15 = call i32 @access(i8* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %12
  %19 = load i32, i32* @errno, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ENOENT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @O_RDWR, align 4
  %26 = load i32, i32* @O_CREAT, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @open(i8* %24, i32 %27, i32 511)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %23
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ftruncate(i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %33
  br label %44

42:                                               ; preds = %18
  %43 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %41
  br label %54

45:                                               ; preds = %12
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* @O_RDWR, align 4
  %48 = call i32 @open(i8* %46, i32 %47, i32 511)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %45
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @PROT_READ, align 4
  %57 = load i32, i32* @PROT_WRITE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @MAP_SHARED, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i8* @mmap(i32* null, i32 %55, i32 %58, i32 %59, i32 %60, i32 0)
  store i8* %61, i8** %5, align 8
  %62 = load i8*, i8** @MAP_FAILED, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %54
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @close(i32 %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = bitcast [10 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %73, i8 0, i64 10, i1 false)
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %76 = call i32 @memcpy(i8* %74, i8* %75, i32 10)
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @munmap(i8* %77, i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %72
  br label %12
}

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
