; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_compress.c_write_compressed_bit.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_compress.c_write_compressed_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@PropCompression_None = common dso_local global i64 0, align 8
@BTRFS_INCOMPAT_FLAGS_COMPRESS_ZSTD = common dso_local global i32 0, align 4
@PropCompression_ZSTD = common dso_local global i64 0, align 8
@BTRFS_COMPRESSION_ZSTD = common dso_local global i64 0, align 8
@PropCompression_Zlib = common dso_local global i64 0, align 8
@PropCompression_LZO = common dso_local global i64 0, align 8
@BTRFS_INCOMPAT_FLAGS_COMPRESS_LZO = common dso_local global i32 0, align 4
@BTRFS_COMPRESSION_LZO = common dso_local global i64 0, align 8
@BTRFS_COMPRESSION_ZLIB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_compressed_bit(%struct.TYPE_12__* %0, i32 %1, i32 %2, i8* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %7
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PropCompression_None, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %16, align 8
  br label %121

37:                                               ; preds = %24, %7
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BTRFS_INCOMPAT_FLAGS_COMPRESS_ZSTD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %37
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PropCompression_ZSTD, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i64, i64* @BTRFS_COMPRESSION_ZSTD, align 8
  store i64 %54, i64* %16, align 8
  br label %120

55:                                               ; preds = %47, %37
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @BTRFS_INCOMPAT_FLAGS_COMPRESS_ZSTD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %55
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PropCompression_Zlib, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PropCompression_LZO, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i64, i64* @BTRFS_COMPRESSION_ZSTD, align 8
  store i64 %78, i64* %16, align 8
  br label %119

79:                                               ; preds = %71, %65, %55
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @BTRFS_INCOMPAT_FLAGS_COMPRESS_LZO, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %79
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @PropCompression_LZO, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i64, i64* @BTRFS_COMPRESSION_LZO, align 8
  store i64 %96, i64* %16, align 8
  br label %118

97:                                               ; preds = %89, %79
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @BTRFS_INCOMPAT_FLAGS_COMPRESS_LZO, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %97
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @PropCompression_Zlib, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i64, i64* @BTRFS_COMPRESSION_LZO, align 8
  store i64 %114, i64* %16, align 8
  br label %117

115:                                              ; preds = %107, %97
  %116 = load i64, i64* @BTRFS_COMPRESSION_ZLIB, align 8
  store i64 %116, i64* %16, align 8
  br label %117

117:                                              ; preds = %115, %113
  br label %118

118:                                              ; preds = %117, %95
  br label %119

119:                                              ; preds = %118, %77
  br label %120

120:                                              ; preds = %119, %53
  br label %121

121:                                              ; preds = %120, %30
  %122 = load i64, i64* %16, align 8
  %123 = load i64, i64* @BTRFS_COMPRESSION_ZSTD, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %121
  %126 = load i32, i32* @BTRFS_INCOMPAT_FLAGS_COMPRESS_ZSTD, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %126
  store i32 %133, i32* %131, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i8*, i8** %12, align 8
  %138 = load i32*, i32** %13, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load i32*, i32** %15, align 8
  %141 = call i32 @zstd_write_compressed_bit(%struct.TYPE_12__* %134, i32 %135, i32 %136, i8* %137, i32* %138, i32 %139, i32* %140)
  store i32 %141, i32* %8, align 4
  br label %172

142:                                              ; preds = %121
  %143 = load i64, i64* %16, align 8
  %144 = load i64, i64* @BTRFS_COMPRESSION_LZO, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %142
  %147 = load i32, i32* @BTRFS_INCOMPAT_FLAGS_COMPRESS_LZO, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %147
  store i32 %154, i32* %152, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i8*, i8** %12, align 8
  %159 = load i32*, i32** %13, align 8
  %160 = load i32, i32* %14, align 4
  %161 = load i32*, i32** %15, align 8
  %162 = call i32 @lzo_write_compressed_bit(%struct.TYPE_12__* %155, i32 %156, i32 %157, i8* %158, i32* %159, i32 %160, i32* %161)
  store i32 %162, i32* %8, align 4
  br label %172

163:                                              ; preds = %142
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load i8*, i8** %12, align 8
  %168 = load i32*, i32** %13, align 8
  %169 = load i32, i32* %14, align 4
  %170 = load i32*, i32** %15, align 8
  %171 = call i32 @zlib_write_compressed_bit(%struct.TYPE_12__* %164, i32 %165, i32 %166, i8* %167, i32* %168, i32 %169, i32* %170)
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %163, %146, %125
  %173 = load i32, i32* %8, align 4
  ret i32 %173
}

declare dso_local i32 @zstd_write_compressed_bit(%struct.TYPE_12__*, i32, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @lzo_write_compressed_bit(%struct.TYPE_12__*, i32, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @zlib_write_compressed_bit(%struct.TYPE_12__*, i32, i32, i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
