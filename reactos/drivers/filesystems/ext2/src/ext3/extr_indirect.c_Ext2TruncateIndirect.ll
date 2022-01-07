; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_indirect.c_Ext2TruncateIndirect.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_indirect.c_Ext2TruncateIndirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64* }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_14__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_SIZE = common dso_local global i32 0, align 4
@BLOCK_BITS = common dso_local global i32 0, align 4
@EXT2_BLOCK_TYPES = common dso_local global i64 0, align 8
@EXT2_NDIR_BLOCKS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ext2TruncateIndirect(i32 %0, %struct.TYPE_15__* %1, %struct.TYPE_16__* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  %17 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %17, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %15, align 8
  store i32* null, i32** %16, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %14, align 8
  store i64 %20, i64* %13, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BLOCK_SIZE, align 4
  %25 = add nsw i32 %23, %24
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* @BLOCK_BITS, align 4
  %28 = ashr i32 %26, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = call i32 @Ext2TruncateIndirectFast(i32 %33, %struct.TYPE_15__* %34, %struct.TYPE_16__* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @NT_SUCCESS(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %130

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %4
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %12, align 8
  %45 = sub nsw i64 %43, %44
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* @EXT2_BLOCK_TYPES, align 8
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %126, %42
  %48 = load i64, i64* %10, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i1 [ false, %47 ], [ %52, %50 ]
  br i1 %54, label %55, label %129

55:                                               ; preds = %53
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = sub nsw i64 %59, 1
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %126

65:                                               ; preds = %55
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = sub nsw i64 %69, 1
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %14, align 8
  %74 = sub nsw i64 %73, %72
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %10, align 8
  %76 = sub nsw i64 %75, 1
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %65
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32* %83, i32** %16, align 8
  %84 = load i64, i64* %13, align 8
  store i64 %84, i64* %15, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* @EXT2_NDIR_BLOCKS, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load i64, i64* %14, align 8
  %90 = icmp eq i64 %89, 0
  br label %91

91:                                               ; preds = %88, %78
  %92 = phi i1 [ false, %78 ], [ %90, %88 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @ASSERT(i32 %93)
  br label %106

95:                                               ; preds = %65
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @EXT2_NDIR_BLOCKS, align 8
  %101 = sub nsw i64 %100, 1
  %102 = load i64, i64* %10, align 8
  %103 = add nsw i64 %101, %102
  %104 = sub nsw i64 %103, 1
  %105 = getelementptr inbounds i32, i32* %99, i64 %104
  store i32* %105, i32** %16, align 8
  store i64 1, i64* %15, align 8
  br label %106

106:                                              ; preds = %95, %91
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %14, align 8
  %113 = sub nsw i64 %111, %112
  %114 = sub nsw i64 %113, 1
  %115 = load i64, i64* %10, align 8
  %116 = sub nsw i64 %115, 1
  %117 = load i64, i64* %15, align 8
  %118 = load i32*, i32** %16, align 8
  %119 = call i32 @Ext2TruncateBlock(i32 %107, %struct.TYPE_15__* %108, %struct.TYPE_16__* %109, i64 %110, i64 %114, i64 %116, i64 %117, i32* %118, i64* %11)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i64 @NT_SUCCESS(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %106
  br label %129

124:                                              ; preds = %106
  %125 = load i64, i64* %14, align 8
  store i64 %125, i64* %13, align 8
  br label %126

126:                                              ; preds = %124, %64
  %127 = load i64, i64* %10, align 8
  %128 = add nsw i64 %127, -1
  store i64 %128, i64* %10, align 8
  br label %47

129:                                              ; preds = %123, %53
  br label %130

130:                                              ; preds = %129, %40
  %131 = load i32, i32* %9, align 4
  %132 = call i64 @NT_SUCCESS(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %130
  %135 = load i64, i64* %11, align 8
  %136 = trunc i64 %135 to i32
  %137 = load i32, i32* @BLOCK_BITS, align 4
  %138 = shl i32 %136, %137
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %134, %130
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp sgt i64 %147, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %143
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  store i64 %157, i64* %160, align 8
  br label %161

161:                                              ; preds = %153, %143
  %162 = load i32, i32* %5, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = call i32 @Ext2SaveInode(i32 %162, %struct.TYPE_15__* %163, %struct.TYPE_13__* %165)
  %167 = load i32, i32* %9, align 4
  ret i32 %167
}

declare dso_local i32 @Ext2TruncateIndirectFast(i32, %struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @Ext2TruncateBlock(i32, %struct.TYPE_15__*, %struct.TYPE_16__*, i64, i64, i64, i64, i32*, i64*) #1

declare dso_local i32 @Ext2SaveInode(i32, %struct.TYPE_15__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
