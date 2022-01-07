; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_write.c_write_compressed.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_write.c_write_compressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@COMPRESSED_EXTENT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"write_compressed_bit returned %08x\0A\00", align 1
@BTRFS_INODE_NOCOMPRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"do_write_file returned %08x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_compressed(%struct.TYPE_12__* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %115, %6
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load i32, i32* @COMPRESSED_EXTENT_SIZE, align 4
  %25 = call i32 @sector_align(i32 %23, i32 %24)
  %26 = load i32, i32* @COMPRESSED_EXTENT_SIZE, align 4
  %27 = sdiv i32 %25, %26
  %28 = icmp slt i32 %20, %27
  br i1 %28, label %29, label %118

29:                                               ; preds = %19
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @COMPRESSED_EXTENT_SIZE, align 4
  %33 = mul nsw i32 %31, %32
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @COMPRESSED_EXTENT_SIZE, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @min(i32 %37, i32 %38)
  store i32 %39, i32* %17, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @COMPRESSED_EXTENT_SIZE, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %12, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @write_compressed_bit(%struct.TYPE_12__* %40, i32 %41, i32 %42, i32* %49, i32* %18, i32 %50, i32* %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @NT_SUCCESS(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %29
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %7, align 4
  br label %120

60:                                               ; preds = %29
  %61 = load i32, i32* %16, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %114

63:                                               ; preds = %60
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* @COMPRESSED_EXTENT_SIZE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %114

67:                                               ; preds = %63
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %114, label %70

70:                                               ; preds = %67
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %114, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* @BTRFS_INODE_NOCOMPRESS, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %79
  store i32 %84, i32* %82, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %88 = call i32 @mark_fcb_dirty(%struct.TYPE_12__* %87)
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %78
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i8*, i8** %11, align 8
  %97 = bitcast i8* %96 to i32*
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %12, align 4
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 @do_write_file(%struct.TYPE_12__* %93, i32 %94, i32 %95, i32* %100, i32 %101, i32 0, i32 0, i32* %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @NT_SUCCESS(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %92
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %7, align 4
  br label %120

111:                                              ; preds = %92
  br label %112

112:                                              ; preds = %111, %78
  %113 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %113, i32* %7, align 4
  br label %120

114:                                              ; preds = %70, %67, %63, %60
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %19

118:                                              ; preds = %19
  %119 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %118, %112, %107, %56
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i32 @sector_align(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @write_compressed_bit(%struct.TYPE_12__*, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @mark_fcb_dirty(%struct.TYPE_12__*) #1

declare dso_local i32 @do_write_file(%struct.TYPE_12__*, i32, i32, i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
