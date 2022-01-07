; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/ext2lib/extr_Mke2fs.c_set_fs_defaults.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/ext2lib/extr_Mke2fs.c_set_fs_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mke2fs_defaults = type { i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@default_str = common dso_local global i8* null, align 8
@settings = common dso_local global %struct.mke2fs_defaults* null, align 8
@EXT2_MIN_BLOCK_LOG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_fs_defaults(i8* %0, %struct.TYPE_4__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mke2fs_defaults*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = call i32 @EXT2_BLOCK_SIZE(%struct.TYPE_4__* %15)
  %17 = sdiv i32 %16, 1024
  %18 = mul nsw i32 %14, %17
  %19 = sdiv i32 %18, 1024
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %22, %4
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** @default_str, align 8
  store i8* %29, i8** %5, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = load %struct.mke2fs_defaults*, %struct.mke2fs_defaults** @settings, align 8
  store %struct.mke2fs_defaults* %31, %struct.mke2fs_defaults** %11, align 8
  br label %32

32:                                               ; preds = %87, %30
  %33 = load %struct.mke2fs_defaults*, %struct.mke2fs_defaults** %11, align 8
  %34 = getelementptr inbounds %struct.mke2fs_defaults, %struct.mke2fs_defaults* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %90

37:                                               ; preds = %32
  %38 = load %struct.mke2fs_defaults*, %struct.mke2fs_defaults** %11, align 8
  %39 = getelementptr inbounds %struct.mke2fs_defaults, %struct.mke2fs_defaults* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @strcmp(i64 %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.mke2fs_defaults*, %struct.mke2fs_defaults** %11, align 8
  %46 = getelementptr inbounds %struct.mke2fs_defaults, %struct.mke2fs_defaults* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i8*, i8** @default_str, align 8
  %49 = call i64 @strcmp(i64 %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %87

52:                                               ; preds = %44, %37
  %53 = load %struct.mke2fs_defaults*, %struct.mke2fs_defaults** %11, align 8
  %54 = getelementptr inbounds %struct.mke2fs_defaults, %struct.mke2fs_defaults* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.mke2fs_defaults*, %struct.mke2fs_defaults** %11, align 8
  %60 = getelementptr inbounds %struct.mke2fs_defaults, %struct.mke2fs_defaults* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %87

64:                                               ; preds = %57, %52
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.mke2fs_defaults*, %struct.mke2fs_defaults** %11, align 8
  %69 = getelementptr inbounds %struct.mke2fs_defaults, %struct.mke2fs_defaults* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %64
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load %struct.mke2fs_defaults*, %struct.mke2fs_defaults** %11, align 8
  %77 = getelementptr inbounds %struct.mke2fs_defaults, %struct.mke2fs_defaults* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @EXT2_MIN_BLOCK_LOG_SIZE, align 4
  %80 = ashr i32 %78, %79
  %81 = call i32 @int_log2(i32 %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %75, %72
  br label %87

87:                                               ; preds = %86, %63, %51
  %88 = load %struct.mke2fs_defaults*, %struct.mke2fs_defaults** %11, align 8
  %89 = getelementptr inbounds %struct.mke2fs_defaults, %struct.mke2fs_defaults* %88, i32 1
  store %struct.mke2fs_defaults* %89, %struct.mke2fs_defaults** %11, align 8
  br label %32

90:                                               ; preds = %32
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %95 = call i32 @EXT2_BLOCK_SIZE(%struct.TYPE_4__* %94)
  %96 = sdiv i32 %95, 1024
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sdiv i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %93, %90
  ret void
}

declare dso_local i32 @EXT2_BLOCK_SIZE(%struct.TYPE_4__*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @int_log2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
