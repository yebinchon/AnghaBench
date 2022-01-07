; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_fileio.c_ext2fs_file_zero_past_offset.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_fileio.c_ext2fs_file_zero_past_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }

@BMAP_RET_UNINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i64)* @ext2fs_file_zero_past_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext2fs_file_zero_past_offset(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %6, align 8
  store i8* null, i8** %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = srem i64 %15, %18
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %96

23:                                               ; preds = %2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = call i64 @sync_buffer_position(%struct.TYPE_7__* %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i64, i64* %11, align 8
  store i64 %29, i64* %3, align 8
  br label %96

30:                                               ; preds = %23
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sdiv i64 %35, %38
  %40 = call i64 @ext2fs_bmap2(%struct.TYPE_6__* %31, i32 %34, i32* null, i32* null, i32 0, i64 %39, i32* %10, i64* %9)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load i64, i64* %11, align 8
  store i64 %44, i64* %3, align 8
  br label %96

45:                                               ; preds = %30
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @BMAP_RET_UNINIT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %45
  store i64 0, i64* %3, align 8
  br label %96

54:                                               ; preds = %48
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @ext2fs_get_mem(i64 %57, i8** %7)
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i64, i64* %11, align 8
  store i64 %62, i64* %3, align 8
  br label %96

63:                                               ; preds = %54
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i64 @io_channel_read_blk64(i32 %66, i64 %67, i32 1, i8* %68)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %93

73:                                               ; preds = %63
  %74 = load i8*, i8** %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = sub nsw i64 %79, %80
  %82 = call i32 @memset(i8* %76, i32 0, i64 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i64 @io_channel_write_blk64(i32 %85, i64 %86, i32 1, i8* %87)
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %73
  br label %93

92:                                               ; preds = %73
  br label %93

93:                                               ; preds = %92, %91, %72
  %94 = call i32 @ext2fs_free_mem(i8** %7)
  %95 = load i64, i64* %11, align 8
  store i64 %95, i64* %3, align 8
  br label %96

96:                                               ; preds = %93, %61, %53, %43, %28, %22
  %97 = load i64, i64* %3, align 8
  ret i64 %97
}

declare dso_local i64 @sync_buffer_position(%struct.TYPE_7__*) #1

declare dso_local i64 @ext2fs_bmap2(%struct.TYPE_6__*, i32, i32*, i32*, i32, i64, i32*, i64*) #1

declare dso_local i64 @ext2fs_get_mem(i64, i8**) #1

declare dso_local i64 @io_channel_read_blk64(i32, i64, i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @io_channel_write_blk64(i32, i64, i32, i8*) #1

declare dso_local i32 @ext2fs_free_mem(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
