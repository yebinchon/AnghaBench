; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_indirect.c_Ext2ExpandIndirect.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_indirect.c_Ext2ExpandIndirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64* }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_11__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@EXT2_BLOCK_TYPES = common dso_local global i64 0, align 8
@EXT2_NDIR_BLOCKS = common dso_local global i64 0, align 8
@BLOCK_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ext2ExpandIndirect(i32 %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2, i64 %3, i64 %4, %struct.TYPE_11__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %13, align 8
  %20 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %20, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* %11, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %16, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %30, i32* %7, align 4
  br label %176

31:                                               ; preds = %6
  store i64 0, i64* %15, align 8
  br label %32

32:                                               ; preds = %158, %31
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* @EXT2_BLOCK_TYPES, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i64, i64* %16, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i1 [ false, %32 ], [ %38, %36 ]
  br i1 %40, label %41, label %161

41:                                               ; preds = %39
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %15, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %42, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %41
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %15, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %19, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %19, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %15, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %11, align 8
  %66 = sub nsw i64 %65, %64
  store i64 %66, i64* %11, align 8
  br label %157

67:                                               ; preds = %41
  %68 = load i64, i64* %15, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i64, i64* %11, align 8
  store i64 %71, i64* %18, align 8
  store i64 %71, i64* %19, align 8
  br label %77

72:                                               ; preds = %67
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* @EXT2_NDIR_BLOCKS, align 8
  %75 = add nsw i64 %73, %74
  %76 = sub nsw i64 %75, 1
  store i64 %76, i64* %18, align 8
  br label %77

77:                                               ; preds = %72, %70
  %78 = load i64, i64* %17, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %77
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %18, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %80
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %18, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %17, align 8
  br label %110

97:                                               ; preds = %80
  %98 = load i64, i64* %18, align 8
  %99 = icmp sgt i64 %98, 1
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* %18, align 8
  %106 = sub nsw i64 %105, 1
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %17, align 8
  br label %109

109:                                              ; preds = %100, %97
  br label %110

110:                                              ; preds = %109, %89
  br label %111

111:                                              ; preds = %110, %77
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %115 = load i64, i64* %19, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* %15, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %111
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* %15, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %11, align 8
  %128 = sub nsw i64 %126, %127
  br label %130

129:                                              ; preds = %111
  br label %130

130:                                              ; preds = %129, %120
  %131 = phi i64 [ %128, %120 ], [ 1, %129 ]
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i64, i64* %18, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = ptrtoint i64* %137 to i32
  %139 = call i32 @Ext2ExpandBlock(i32 %112, %struct.TYPE_12__* %113, %struct.TYPE_13__* %114, i64 %115, i64 %116, i64 %117, i64 %131, i32 %138, i64* %17, i64* %16)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @NT_SUCCESS(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %130
  br label %161

144:                                              ; preds = %130
  store i64 0, i64* %11, align 8
  %145 = load i64, i64* %15, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i64 0, i64* %19, align 8
  br label %148

148:                                              ; preds = %147, %144
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = load i64*, i64** %150, align 8
  %152 = load i64, i64* %15, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %19, align 8
  %156 = add nsw i64 %155, %154
  store i64 %156, i64* %19, align 8
  br label %157

157:                                              ; preds = %148, %50
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %15, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %15, align 8
  br label %32

161:                                              ; preds = %143, %39
  %162 = load i64, i64* %12, align 8
  %163 = load i64, i64* %16, align 8
  %164 = sub nsw i64 %162, %163
  %165 = trunc i64 %164 to i32
  %166 = load i32, i32* @BLOCK_BITS, align 4
  %167 = shl i32 %165, %166
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = call i32 @Ext2SaveInode(i32 %170, %struct.TYPE_12__* %171, %struct.TYPE_14__* %173)
  %175 = load i32, i32* %14, align 4
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %161, %29
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local i32 @Ext2ExpandBlock(i32, %struct.TYPE_12__*, %struct.TYPE_13__*, i64, i64, i64, i64, i32, i64*, i64*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @Ext2SaveInode(i32, %struct.TYPE_12__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
