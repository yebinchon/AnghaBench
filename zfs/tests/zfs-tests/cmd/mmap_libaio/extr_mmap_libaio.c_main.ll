; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mmap_libaio/extr_mmap_libaio.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mmap_libaio/extr_mmap_libaio.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iocb = type { i32 }

@io_ctx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"io_queue_init failed\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"open failed\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ftruncate failed\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"mmap failed\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"close failed\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"io_queue_release failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iocb, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call i32 (...) @getpagesize()
  store i32 %11, i32* %7, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 2
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strtol(i8* %14, i32* null, i32 0)
  store i32 %15, i32* %8, align 4
  %16 = call i64 @io_queue_init(i32 1024, i32* @io_ctx)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @O_RDWR, align 4
  %25 = load i32, i32* @O_CREAT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @S_IRUSR, align 4
  %28 = load i32, i32* @S_IWUSR, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @open(i8* %23, i32 %26, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %20
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @ftruncate(i32 %36, i32 %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @PROT_READ, align 4
  %45 = load i32, i32* @PROT_WRITE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MAP_SHARED, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i8* @mmap(i32 0, i32 %43, i32 %46, i32 %47, i32 %48, i32 0)
  store i8* %49, i8** %6, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** @MAP_FAILED, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %42
  %56 = load i32, i32* %9, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @io_prep_pwrite(%struct.iocb* %10, i32 %56, i8* %57, i32 %58, i32 0)
  %60 = call i32 @do_sync_io(%struct.iocb* %10)
  %61 = load i32, i32* %9, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @io_prep_pread(%struct.iocb* %10, i32 %61, i8* %62, i32 %63, i32 0)
  %65 = call i32 @do_sync_io(%struct.iocb* %10)
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @close(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %55
  %72 = load i32, i32* @io_ctx, align 4
  %73 = call i64 @io_queue_release(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71
  ret i32 0
}

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i64 @io_queue_init(i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @ftruncate(i32, i32) #1

declare dso_local i8* @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @io_prep_pwrite(%struct.iocb*, i32, i8*, i32, i32) #1

declare dso_local i32 @do_sync_io(%struct.iocb*) #1

declare dso_local i32 @io_prep_pread(%struct.iocb*, i32, i8*, i32, i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i64 @io_queue_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
