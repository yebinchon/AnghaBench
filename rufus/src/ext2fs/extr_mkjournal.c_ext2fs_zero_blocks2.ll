; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_mkjournal.c_ext2fs_zero_blocks2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_mkjournal.c_ext2fs_zero_blocks2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ext2fs_zero_blocks2.buf = internal global i8* null, align 8
@ext2fs_zero_blocks2.stride_length = internal global i32 0, align 4
@MAX_STRIDE_LENGTH = common dso_local global i32 0, align 4
@EXT2_ET_NO_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_zero_blocks2(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %5
  %20 = load i8*, i8** @ext2fs_zero_blocks2.buf, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** @ext2fs_zero_blocks2.buf, align 8
  %24 = call i32 @free(i8* %23)
  store i8* null, i8** @ext2fs_zero_blocks2.buf, align 8
  store i32 0, i32* @ext2fs_zero_blocks2.stride_length, align 4
  br label %25

25:                                               ; preds = %22, %19
  store i64 0, i64* %6, align 8
  br label %145

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 0, i64* %6, align 8
  br label %145

30:                                               ; preds = %26
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @io_channel_zeroout(i32 %33, i32 %34, i32 %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i64 0, i64* %6, align 8
  br label %145

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @ext2fs_zero_blocks2.stride_length, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %40
  %45 = load i32, i32* @ext2fs_zero_blocks2.stride_length, align 4
  %46 = load i32, i32* @MAX_STRIDE_LENGTH, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %77

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @MAX_STRIDE_LENGTH, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @MAX_STRIDE_LENGTH, align 4
  store i32 %54, i32* %16, align 4
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i8*, i8** @ext2fs_zero_blocks2.buf, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %16, align 4
  %61 = mul nsw i32 %59, %60
  %62 = call i8* @realloc(i8* %56, i32 %61)
  store i8* %62, i8** %15, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %55
  %66 = load i64, i64* @EXT2_ET_NO_MEMORY, align 8
  store i64 %66, i64* %6, align 8
  br label %145

67:                                               ; preds = %55
  %68 = load i8*, i8** %15, align 8
  store i8* %68, i8** @ext2fs_zero_blocks2.buf, align 8
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* @ext2fs_zero_blocks2.stride_length, align 4
  %70 = load i8*, i8** @ext2fs_zero_blocks2.buf, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ext2fs_zero_blocks2.stride_length, align 4
  %75 = mul nsw i32 %73, %74
  %76 = call i32 @memset(i8* %70, i32 0, i32 %75)
  br label %77

77:                                               ; preds = %67, %44, %40
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %137, %77
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %144

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @ext2fs_zero_blocks2.stride_length, align 4
  %85 = srem i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = load i32, i32* @ext2fs_zero_blocks2.stride_length, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @ext2fs_zero_blocks2.stride_length, align 4
  %91 = srem i32 %89, %90
  %92 = sub nsw i32 %88, %91
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %12, align 4
  %96 = sub nsw i32 %94, %95
  %97 = icmp sgt i32 %93, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %87
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %12, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %98, %87
  br label %113

103:                                              ; preds = %82
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %12, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @ext2fs_zero_blocks2.stride_length, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @ext2fs_zero_blocks2.stride_length, align 4
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %110, %103
  br label %113

113:                                              ; preds = %112, %102
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i8*, i8** @ext2fs_zero_blocks2.buf, align 8
  %120 = call i64 @io_channel_write_blk64(i32 %116, i32 %117, i32 %118, i8* %119)
  store i64 %120, i64* %14, align 8
  %121 = load i64, i64* %14, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %113
  %124 = load i32*, i32** %11, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* %13, align 4
  %128 = load i32*, i32** %11, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32*, i32** %10, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %8, align 4
  %134 = load i32*, i32** %10, align 8
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i64, i64* %14, align 8
  store i64 %136, i64* %6, align 8
  br label %145

137:                                              ; preds = %113
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %8, align 4
  br label %78

144:                                              ; preds = %78
  store i64 0, i64* %6, align 8
  br label %145

145:                                              ; preds = %144, %135, %65, %39, %29, %25
  %146 = load i64, i64* %6, align 8
  ret i64 %146
}

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @io_channel_zeroout(i32, i32, i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @io_channel_write_blk64(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
