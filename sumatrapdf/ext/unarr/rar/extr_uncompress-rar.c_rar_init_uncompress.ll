; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_rar_init_uncompress.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_rar_init_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_archive_rar_uncomp = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Unsupported compression version: %d\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Compression version mismatch: %d != %d\00", align 1
@LZSS_WINDOW_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"OOM during decompression\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar_archive_rar_uncomp*, i32)* @rar_init_uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar_init_uncompress(%struct.ar_archive_rar_uncomp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar_archive_rar_uncomp*, align 8
  %5 = alloca i32, align 4
  store %struct.ar_archive_rar_uncomp* %0, %struct.ar_archive_rar_uncomp** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 29
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 36
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i32 3, i32* %5, align 4
  br label %23

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 20
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 26
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12
  store i32 2, i32* %5, align 4
  br label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %3, align 4
  br label %71

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %11
  %24 = load %struct.ar_archive_rar_uncomp*, %struct.ar_archive_rar_uncomp** %4, align 8
  %25 = getelementptr inbounds %struct.ar_archive_rar_uncomp, %struct.ar_archive_rar_uncomp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load %struct.ar_archive_rar_uncomp*, %struct.ar_archive_rar_uncomp** %4, align 8
  %30 = getelementptr inbounds %struct.ar_archive_rar_uncomp, %struct.ar_archive_rar_uncomp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ar_archive_rar_uncomp*, %struct.ar_archive_rar_uncomp** %4, align 8
  %37 = getelementptr inbounds %struct.ar_archive_rar_uncomp, %struct.ar_archive_rar_uncomp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38)
  store i32 0, i32* %3, align 4
  br label %71

40:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %71

41:                                               ; preds = %23
  %42 = load %struct.ar_archive_rar_uncomp*, %struct.ar_archive_rar_uncomp** %4, align 8
  %43 = call i32 @memset(%struct.ar_archive_rar_uncomp* %42, i32 0, i32 20)
  %44 = load %struct.ar_archive_rar_uncomp*, %struct.ar_archive_rar_uncomp** %4, align 8
  %45 = getelementptr inbounds %struct.ar_archive_rar_uncomp, %struct.ar_archive_rar_uncomp* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.ar_archive_rar_uncomp*, %struct.ar_archive_rar_uncomp** %4, align 8
  %47 = getelementptr inbounds %struct.ar_archive_rar_uncomp, %struct.ar_archive_rar_uncomp* %46, i32 0, i32 3
  %48 = load i32, i32* @LZSS_WINDOW_SIZE, align 4
  %49 = call i32 @lzss_initialize(i32* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %41
  %52 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %71

53:                                               ; preds = %41
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load %struct.ar_archive_rar_uncomp*, %struct.ar_archive_rar_uncomp** %4, align 8
  %58 = getelementptr inbounds %struct.ar_archive_rar_uncomp, %struct.ar_archive_rar_uncomp* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 2, i32* %60, align 4
  %61 = load i32, i32* @SIZE_MAX, align 4
  %62 = load %struct.ar_archive_rar_uncomp*, %struct.ar_archive_rar_uncomp** %4, align 8
  %63 = getelementptr inbounds %struct.ar_archive_rar_uncomp, %struct.ar_archive_rar_uncomp* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %61, i32* %66, align 4
  br label %67

67:                                               ; preds = %56, %53
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.ar_archive_rar_uncomp*, %struct.ar_archive_rar_uncomp** %4, align 8
  %70 = getelementptr inbounds %struct.ar_archive_rar_uncomp, %struct.ar_archive_rar_uncomp* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %51, %40, %34, %19
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @memset(%struct.ar_archive_rar_uncomp*, i32, i32) #1

declare dso_local i32 @lzss_initialize(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
