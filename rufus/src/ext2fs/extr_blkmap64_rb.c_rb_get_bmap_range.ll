; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_get_bmap_range.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_get_bmap_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.ext2fs_rb_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rb_node* }
%struct.bmap_rb_extent = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i64, i8*)* @rb_get_bmap_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_get_bmap_range(%struct.TYPE_4__* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rb_node*, align 8
  %11 = alloca %struct.rb_node*, align 8
  %12 = alloca %struct.rb_node**, align 8
  %13 = alloca %struct.ext2fs_rb_private*, align 8
  %14 = alloca %struct.bmap_rb_extent*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.rb_node* null, %struct.rb_node** %10, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ext2fs_rb_private*
  store %struct.ext2fs_rb_private* %22, %struct.ext2fs_rb_private** %13, align 8
  %23 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %13, align 8
  %24 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.rb_node** %25, %struct.rb_node*** %12, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub nsw i64 %29, %28
  store i64 %30, i64* %7, align 8
  %31 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %13, align 8
  %32 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %31, i32 0, i32 0
  %33 = call i64 @ext2fs_rb_empty_root(%struct.TYPE_5__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %183

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %71, %36
  %38 = load %struct.rb_node**, %struct.rb_node*** %12, align 8
  %39 = load %struct.rb_node*, %struct.rb_node** %38, align 8
  %40 = icmp ne %struct.rb_node* %39, null
  br i1 %40, label %41, label %72

41:                                               ; preds = %37
  %42 = load %struct.rb_node**, %struct.rb_node*** %12, align 8
  %43 = load %struct.rb_node*, %struct.rb_node** %42, align 8
  store %struct.rb_node* %43, %struct.rb_node** %10, align 8
  %44 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %45 = call %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node* %44)
  store %struct.bmap_rb_extent* %45, %struct.bmap_rb_extent** %14, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %14, align 8
  %48 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load %struct.rb_node**, %struct.rb_node*** %12, align 8
  %53 = load %struct.rb_node*, %struct.rb_node** %52, align 8
  %54 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %53, i32 0, i32 1
  store %struct.rb_node** %54, %struct.rb_node*** %12, align 8
  br label %71

55:                                               ; preds = %41
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %14, align 8
  %58 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %14, align 8
  %61 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = icmp sge i64 %56, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load %struct.rb_node**, %struct.rb_node*** %12, align 8
  %67 = load %struct.rb_node*, %struct.rb_node** %66, align 8
  %68 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %67, i32 0, i32 0
  store %struct.rb_node** %68, %struct.rb_node*** %12, align 8
  br label %70

69:                                               ; preds = %55
  br label %72

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %51
  br label %37

72:                                               ; preds = %69, %37
  %73 = load i8*, i8** %9, align 8
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 7
  %76 = lshr i64 %75, 3
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memset(i8* %73, i32 0, i32 %77)
  br label %79

79:                                               ; preds = %180, %72
  %80 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %81 = icmp ne %struct.rb_node* %80, null
  br i1 %81, label %82, label %182

82:                                               ; preds = %79
  %83 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %84 = call %struct.rb_node* @ext2fs_rb_next(%struct.rb_node* %83)
  store %struct.rb_node* %84, %struct.rb_node** %11, align 8
  %85 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %86 = call %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node* %85)
  store %struct.bmap_rb_extent* %86, %struct.bmap_rb_extent** %14, align 8
  %87 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %14, align 8
  %88 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %16, align 8
  %90 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %14, align 8
  %91 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %15, align 8
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %94, %95
  %97 = icmp uge i64 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %82
  br label %182

99:                                               ; preds = %82
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* %7, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = load i64, i64* %16, align 8
  %105 = load i64, i64* %15, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i64, i64* %7, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %180

110:                                              ; preds = %103
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* %16, align 8
  %113 = sub nsw i64 %111, %112
  %114 = load i64, i64* %15, align 8
  %115 = sub nsw i64 %114, %113
  store i64 %115, i64* %15, align 8
  %116 = load i64, i64* %7, align 8
  store i64 %116, i64* %16, align 8
  br label %117

117:                                              ; preds = %110, %99
  %118 = load i64, i64* %16, align 8
  %119 = load i64, i64* %15, align 8
  %120 = add nsw i64 %118, %119
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* %8, align 8
  %123 = add i64 %121, %122
  %124 = icmp ugt i64 %120, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* %8, align 8
  %128 = add i64 %126, %127
  %129 = load i64, i64* %16, align 8
  %130 = sub i64 %128, %129
  store i64 %130, i64* %15, align 8
  br label %131

131:                                              ; preds = %125, %117
  br label %132

132:                                              ; preds = %169, %144, %131
  %133 = load i64, i64* %15, align 8
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %135, label %179

135:                                              ; preds = %132
  %136 = load i64, i64* %15, align 8
  %137 = icmp sge i64 %136, 8
  br i1 %137, label %138, label %169

138:                                              ; preds = %135
  %139 = load i64, i64* %16, align 8
  %140 = load i64, i64* %7, align 8
  %141 = sub nsw i64 %139, %140
  %142 = srem i64 %141, 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %169

144:                                              ; preds = %138
  %145 = load i64, i64* %15, align 8
  %146 = ashr i64 %145, 3
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %17, align 4
  %148 = load i64, i64* %16, align 8
  %149 = load i64, i64* %7, align 8
  %150 = sub nsw i64 %148, %149
  %151 = ashr i64 %150, 3
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %18, align 4
  %153 = load i8*, i8** %9, align 8
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i32, i32* %17, align 4
  %158 = call i32 @memset(i8* %156, i32 255, i32 %157)
  %159 = load i32, i32* %17, align 4
  %160 = shl i32 %159, 3
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* %16, align 8
  %163 = add nsw i64 %162, %161
  store i64 %163, i64* %16, align 8
  %164 = load i32, i32* %17, align 4
  %165 = shl i32 %164, 3
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* %15, align 8
  %168 = sub nsw i64 %167, %166
  store i64 %168, i64* %15, align 8
  br label %132

169:                                              ; preds = %138, %135
  %170 = load i64, i64* %16, align 8
  %171 = load i64, i64* %7, align 8
  %172 = sub nsw i64 %170, %171
  %173 = load i8*, i8** %9, align 8
  %174 = call i32 @ext2fs_fast_set_bit64(i64 %172, i8* %173)
  %175 = load i64, i64* %16, align 8
  %176 = add nsw i64 %175, 1
  store i64 %176, i64* %16, align 8
  %177 = load i64, i64* %15, align 8
  %178 = add nsw i64 %177, -1
  store i64 %178, i64* %15, align 8
  br label %132

179:                                              ; preds = %132
  br label %180

180:                                              ; preds = %179, %109
  %181 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  store %struct.rb_node* %181, %struct.rb_node** %10, align 8
  br label %79

182:                                              ; preds = %98, %79
  store i32 0, i32* %5, align 4
  br label %183

183:                                              ; preds = %182, %35
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i64 @ext2fs_rb_empty_root(%struct.TYPE_5__*) #1

declare dso_local %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.rb_node* @ext2fs_rb_next(%struct.rb_node*) #1

declare dso_local i32 @ext2fs_fast_set_bit64(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
