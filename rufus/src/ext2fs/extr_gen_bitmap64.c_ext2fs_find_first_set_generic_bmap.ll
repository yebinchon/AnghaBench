; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_find_first_set_generic_bmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_find_first_set_generic_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.TYPE_7__*, i32)*, i64 (%struct.TYPE_7__*, i32, i32, i32*)* }

@EINVAL = common dso_local global i64 0, align 8
@EXT2FS_TEST_ERROR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_find_first_set_generic_bmap(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* @EINVAL, align 8
  store i64 %22, i64* %5, align 8
  br label %154

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @EXT2FS_IS_32_BITMAP(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  store i32 0, i32* %15, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, -4294967296
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = and i64 %34, -4294967296
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @EXT2FS_TEST_ERROR, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ext2fs_warn_bitmap2(i32 %38, i32 %39, i32 %40)
  %42 = load i64, i64* @EINVAL, align 8
  store i64 %42, i64* %5, align 8
  br label %154

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @ext2fs_find_first_set_generic_bitmap(i32 %44, i32 %45, i32 %46, i32* %15)
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %15, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %43
  %54 = load i64, i64* %14, align 8
  store i64 %54, i64* %5, align 8
  br label %154

55:                                               ; preds = %23
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @EXT2FS_IS_64_BITMAP(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* @EINVAL, align 8
  store i64 %60, i64* %5, align 8
  br label %154

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = ashr i32 %62, %65
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = ashr i32 %67, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %87, label %77

77:                                               ; preds = %61
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83, %77, %61
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %89 = load i32, i32* @EXT2FS_TEST_ERROR, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @warn_bitmap(%struct.TYPE_7__* %88, i32 %89, i32 %90)
  %92 = load i64, i64* @EINVAL, align 8
  store i64 %92, i64* %5, align 8
  br label %154

93:                                               ; preds = %83
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64 (%struct.TYPE_7__*, i32, i32, i32*)*, i64 (%struct.TYPE_7__*, i32, i32, i32*)** %97, align 8
  %99 = icmp ne i64 (%struct.TYPE_7__*, i32, i32, i32*)* %98, null
  br i1 %99, label %100, label %131

100:                                              ; preds = %93
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i64 (%struct.TYPE_7__*, i32, i32, i32*)*, i64 (%struct.TYPE_7__*, i32, i32, i32*)** %104, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i64 %105(%struct.TYPE_7__* %106, i32 %107, i32 %108, i32* %13)
  store i64 %109, i64* %14, align 8
  %110 = load i64, i64* %14, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %100
  %113 = load i64, i64* %14, align 8
  store i64 %113, i64* %5, align 8
  br label %154

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %147, %114
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = shl i32 %119, %118
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load i32, i32* %13, align 4
  br label %128

126:                                              ; preds = %115
  %127 = load i32, i32* %7, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = load i32*, i32** %9, align 8
  store i32 %129, i32* %130, align 4
  store i64 0, i64* %5, align 8
  br label %154

131:                                              ; preds = %93
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %149, %131
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp sle i32 %134, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %133
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i64 (%struct.TYPE_7__*, i32)*, i64 (%struct.TYPE_7__*, i32)** %141, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %144 = load i32, i32* %13, align 4
  %145 = call i64 %142(%struct.TYPE_7__* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  br label %115

148:                                              ; preds = %137
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %13, align 4
  br label %133

152:                                              ; preds = %133
  %153 = load i64, i64* @ENOENT, align 8
  store i64 %153, i64* %5, align 8
  br label %154

154:                                              ; preds = %152, %128, %112, %87, %59, %53, %37, %21
  %155 = load i64, i64* %5, align 8
  ret i64 %155
}

declare dso_local i64 @EXT2FS_IS_32_BITMAP(i32) #1

declare dso_local i32 @ext2fs_warn_bitmap2(i32, i32, i32) #1

declare dso_local i64 @ext2fs_find_first_set_generic_bitmap(i32, i32, i32, i32*) #1

declare dso_local i32 @EXT2FS_IS_64_BITMAP(i32) #1

declare dso_local i32 @warn_bitmap(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
