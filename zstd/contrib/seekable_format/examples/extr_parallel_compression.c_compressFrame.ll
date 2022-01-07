; ModuleID = '/home/carl/AnghaBench/zstd/contrib/seekable_format/examples/extr_parallel_compression.c_compressFrame.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/seekable_format/examples/extr_parallel_compression.c_compressFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.job = type { i64, i32, i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ZSTD_compress() error : %s \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @compressFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compressFrame(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.job*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.job*
  store %struct.job* %6, %struct.job** %3, align 8
  %7 = load %struct.job*, %struct.job** %3, align 8
  %8 = getelementptr inbounds %struct.job, %struct.job* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.job*, %struct.job** %3, align 8
  %11 = getelementptr inbounds %struct.job, %struct.job* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @XXH64(i32 %9, i32 %12, i32 0)
  %14 = load %struct.job*, %struct.job** %3, align 8
  %15 = getelementptr inbounds %struct.job, %struct.job* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 4
  %16 = load %struct.job*, %struct.job** %3, align 8
  %17 = getelementptr inbounds %struct.job, %struct.job* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.job*, %struct.job** %3, align 8
  %20 = getelementptr inbounds %struct.job, %struct.job* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.job*, %struct.job** %3, align 8
  %23 = getelementptr inbounds %struct.job, %struct.job* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.job*, %struct.job** %3, align 8
  %26 = getelementptr inbounds %struct.job, %struct.job* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.job*, %struct.job** %3, align 8
  %29 = getelementptr inbounds %struct.job, %struct.job* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ZSTD_compress(i32 %18, i64 %21, i32 %24, i32 %27, i32 %30)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @ZSTD_isError(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load i32, i32* @stderr, align 4
  %37 = load i64, i64* %4, align 8
  %38 = call i8* @ZSTD_getErrorName(i64 %37)
  %39 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = call i32 @exit(i32 20) #3
  unreachable

41:                                               ; preds = %1
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.job*, %struct.job** %3, align 8
  %44 = getelementptr inbounds %struct.job, %struct.job* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.job*, %struct.job** %3, align 8
  %46 = getelementptr inbounds %struct.job, %struct.job* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  ret void
}

declare dso_local i32 @XXH64(i32, i32, i32) #1

declare dso_local i64 @ZSTD_compress(i32, i64, i32, i32, i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @ZSTD_getErrorName(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
