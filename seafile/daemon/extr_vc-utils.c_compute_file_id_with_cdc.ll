; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_vc-utils.c_compute_file_id_with_cdc.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_vc-utils.c_compute_file_id_with_cdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i8*, i8*, i8* }

@seafile_write_chunk = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to chunk file.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32, i8*, i8*, i8*, i8*)* @compute_file_id_with_cdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_file_id_with_cdc(i8* %0, i32* %1, i32* %2, i32 %3, i8* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %19 = call i32 @memset(%struct.TYPE_5__* %18, i32 0, i32 40)
  %20 = load i8*, i8** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 5
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** %15, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** %16, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* @seafile_write_chunk, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = call i64 @filename_chunk_cdc(i8* %28, %struct.TYPE_5__* %18, i32* %29, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %8
  %34 = call i32 @seaf_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %56

35:                                               ; preds = %8
  %36 = load i32, i32* %13, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %13, align 4
  %40 = load i8*, i8** %17, align 8
  %41 = call i32 @seaf_fs_manager_calculate_seafile_id_json(i32 %39, %struct.TYPE_5__* %18, i8* %40)
  br label %47

42:                                               ; preds = %35
  %43 = load i8*, i8** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @memcpy(i8* %43, i32 %45, i32 20)
  br label %47

47:                                               ; preds = %42, %38
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @free(i64 %53)
  br label %55

55:                                               ; preds = %51, %47
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %33
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @filename_chunk_cdc(i8*, %struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i32 @seaf_fs_manager_calculate_seafile_id_json(i32, %struct.TYPE_5__*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
