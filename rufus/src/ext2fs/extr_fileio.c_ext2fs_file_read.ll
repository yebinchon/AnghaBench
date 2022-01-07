; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_fileio.c_ext2fs_file_read.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_fileio.c_ext2fs_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@EXT2_ET_MAGIC_EXT2_FILE = common dso_local global i32 0, align 4
@EXT4_INLINE_DATA_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_file_read(%struct.TYPE_10__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = load i32, i32* @EXT2_ET_MAGIC_EXT2_FILE, align 4
  %20 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_10__* %18, i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %10, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @EXT4_INLINE_DATA_FL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @ext2fs_file_read_inline_data(%struct.TYPE_10__* %32, i8* %33, i32 %34, i32* %35)
  store i64 %36, i64* %5, align 8
  br label %128

37:                                               ; preds = %4
  br label %38

38:                                               ; preds = %94, %37
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = call i32 @EXT2_I_SIZE(%struct.TYPE_11__* %43)
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = icmp ugt i32 %47, 0
  br label %49

49:                                               ; preds = %46, %38
  %50 = phi i1 [ false, %38 ], [ %48, %46 ]
  br i1 %50, label %51, label %119

51:                                               ; preds = %49
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = call i64 @sync_buffer_position(%struct.TYPE_10__* %52)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %120

57:                                               ; preds = %51
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = call i64 @load_buffer(%struct.TYPE_10__* %58, i32 0)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %120

63:                                               ; preds = %57
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = urem i32 %66, %69
  store i32 %70, i32* %12, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %12, align 4
  %75 = sub i32 %73, %74
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ugt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %63
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %79, %63
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = call i32 @EXT2_I_SIZE(%struct.TYPE_11__* %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub i32 %84, %87
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ugt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %92, %81
  %95 = load i8*, i8** %16, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = zext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @memcpy(i8* %95, i64 %101, i32 %102)
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load i8*, i8** %16, align 8
  %111 = zext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %16, align 8
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %14, align 4
  %115 = add i32 %114, %113
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %8, align 4
  %118 = sub i32 %117, %116
  store i32 %118, i32* %8, align 4
  br label %38

119:                                              ; preds = %49
  br label %120

120:                                              ; preds = %119, %62, %56
  %121 = load i32*, i32** %9, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %14, align 4
  %125 = load i32*, i32** %9, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i64, i64* %11, align 8
  store i64 %127, i64* %5, align 8
  br label %128

128:                                              ; preds = %126, %31
  %129 = load i64, i64* %5, align 8
  ret i64 %129
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @ext2fs_file_read_inline_data(%struct.TYPE_10__*, i8*, i32, i32*) #1

declare dso_local i32 @EXT2_I_SIZE(%struct.TYPE_11__*) #1

declare dso_local i64 @sync_buffer_position(%struct.TYPE_10__*) #1

declare dso_local i64 @load_buffer(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
