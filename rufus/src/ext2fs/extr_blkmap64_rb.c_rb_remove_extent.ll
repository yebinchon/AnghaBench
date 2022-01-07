; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_remove_extent.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_remove_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_rb_private = type { %struct.rb_root }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.bmap_rb_extent = type { i64, i64, %struct.rb_node }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.ext2fs_rb_private*)* @rb_remove_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_remove_extent(i64 %0, i64 %1, %struct.ext2fs_rb_private* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ext2fs_rb_private*, align 8
  %8 = alloca %struct.rb_root*, align 8
  %9 = alloca %struct.rb_node*, align 8
  %10 = alloca %struct.rb_node**, align 8
  %11 = alloca %struct.rb_node*, align 8
  %12 = alloca %struct.bmap_rb_extent*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ext2fs_rb_private* %2, %struct.ext2fs_rb_private** %7, align 8
  %16 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %7, align 8
  %17 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %16, i32 0, i32 0
  store %struct.rb_root* %17, %struct.rb_root** %8, align 8
  store %struct.rb_node* null, %struct.rb_node** %9, align 8
  %18 = load %struct.rb_root*, %struct.rb_root** %8, align 8
  %19 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %18, i32 0, i32 0
  store %struct.rb_node** %19, %struct.rb_node*** %10, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.rb_root*, %struct.rb_root** %8, align 8
  %21 = call i64 @ext2fs_rb_empty_root(%struct.rb_root* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %222

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %153, %53, %39, %24
  %26 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %27 = load %struct.rb_node*, %struct.rb_node** %26, align 8
  %28 = icmp ne %struct.rb_node* %27, null
  br i1 %28, label %29, label %154

29:                                               ; preds = %25
  %30 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %31 = load %struct.rb_node*, %struct.rb_node** %30, align 8
  store %struct.rb_node* %31, %struct.rb_node** %9, align 8
  %32 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %33 = call %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node* %32)
  store %struct.bmap_rb_extent* %33, %struct.bmap_rb_extent** %12, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %36 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %41 = load %struct.rb_node*, %struct.rb_node** %40, align 8
  %42 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %41, i32 0, i32 1
  store %struct.rb_node** %42, %struct.rb_node*** %10, align 8
  br label %25

43:                                               ; preds = %29
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %46 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %49 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = icmp sge i64 %44, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %55 = load %struct.rb_node*, %struct.rb_node** %54, align 8
  %56 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %55, i32 0, i32 0
  store %struct.rb_node** %56, %struct.rb_node*** %10, align 8
  br label %25

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %61 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %100

64:                                               ; preds = %58
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = add nsw i64 %65, %66
  %68 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %69 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %72 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = icmp slt i64 %67, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %64
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = add nsw i64 %77, %78
  store i64 %79, i64* %13, align 8
  %80 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %81 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %84 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = load i64, i64* %13, align 8
  %88 = sub nsw i64 %86, %87
  store i64 %88, i64* %14, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %91 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %89, %92
  %94 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %95 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %7, align 8
  %99 = call i32 @rb_insert_extent(i64 %96, i64 %97, %struct.ext2fs_rb_private* %98)
  store i32 1, i32* %4, align 4
  br label %222

100:                                              ; preds = %64, %58
  %101 = load i64, i64* %5, align 8
  %102 = load i64, i64* %6, align 8
  %103 = add nsw i64 %101, %102
  %104 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %105 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %108 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = icmp sge i64 %103, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %100
  %113 = load i64, i64* %5, align 8
  %114 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %115 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %113, %116
  %118 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %119 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  store i32 1, i32* %15, align 4
  br label %120

120:                                              ; preds = %112, %100
  %121 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %122 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 0, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %120
  %126 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %127 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %126, i32 0, i32 2
  %128 = call %struct.rb_node* @ext2fs_rb_next(%struct.rb_node* %127)
  store %struct.rb_node* %128, %struct.rb_node** %9, align 8
  %129 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %130 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %129, i32 0, i32 2
  %131 = load %struct.rb_root*, %struct.rb_root** %8, align 8
  %132 = call i32 @ext2fs_rb_erase(%struct.rb_node* %130, %struct.rb_root* %131)
  %133 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %7, align 8
  %134 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %135 = call i32 @rb_free_extent(%struct.ext2fs_rb_private* %133, %struct.bmap_rb_extent* %134)
  br label %154

136:                                              ; preds = %120
  %137 = load i64, i64* %5, align 8
  %138 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %139 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %137, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %136
  %143 = load i64, i64* %6, align 8
  %144 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %145 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, %143
  store i64 %147, i64* %145, align 8
  %148 = load i64, i64* %6, align 8
  %149 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %150 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %151, %148
  store i64 %152, i64* %150, align 8
  store i32 1, i32* %4, align 4
  br label %222

153:                                              ; preds = %136
  br label %25

154:                                              ; preds = %125, %25
  br label %155

155:                                              ; preds = %218, %154
  %156 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %157 = icmp ne %struct.rb_node* %156, null
  br i1 %157, label %158, label %220

158:                                              ; preds = %155
  %159 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %160 = call %struct.rb_node* @ext2fs_rb_next(%struct.rb_node* %159)
  store %struct.rb_node* %160, %struct.rb_node** %11, align 8
  %161 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %162 = call %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node* %161)
  store %struct.bmap_rb_extent* %162, %struct.bmap_rb_extent** %12, align 8
  %163 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %164 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %167 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %165, %168
  %170 = load i64, i64* %5, align 8
  %171 = icmp sle i64 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %158
  br label %218

173:                                              ; preds = %158
  %174 = load i64, i64* %5, align 8
  %175 = load i64, i64* %6, align 8
  %176 = add nsw i64 %174, %175
  %177 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %178 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp slt i64 %176, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  br label %220

182:                                              ; preds = %173
  %183 = load i64, i64* %5, align 8
  %184 = load i64, i64* %6, align 8
  %185 = add nsw i64 %183, %184
  %186 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %187 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %190 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %188, %191
  %193 = icmp sge i64 %185, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %182
  %195 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %196 = load %struct.rb_root*, %struct.rb_root** %8, align 8
  %197 = call i32 @ext2fs_rb_erase(%struct.rb_node* %195, %struct.rb_root* %196)
  %198 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %7, align 8
  %199 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %200 = call i32 @rb_free_extent(%struct.ext2fs_rb_private* %198, %struct.bmap_rb_extent* %199)
  store i32 1, i32* %15, align 4
  br label %218

201:                                              ; preds = %182
  %202 = load i64, i64* %5, align 8
  %203 = load i64, i64* %6, align 8
  %204 = add nsw i64 %202, %203
  %205 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %206 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %204, %207
  %209 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %210 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = sub nsw i64 %211, %208
  store i64 %212, i64* %210, align 8
  %213 = load i64, i64* %5, align 8
  %214 = load i64, i64* %6, align 8
  %215 = add nsw i64 %213, %214
  %216 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %12, align 8
  %217 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %216, i32 0, i32 0
  store i64 %215, i64* %217, align 8
  store i32 1, i32* %15, align 4
  br label %220

218:                                              ; preds = %194, %172
  %219 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  store %struct.rb_node* %219, %struct.rb_node** %9, align 8
  br label %155

220:                                              ; preds = %201, %181, %155
  %221 = load i32, i32* %15, align 4
  store i32 %221, i32* %4, align 4
  br label %222

222:                                              ; preds = %220, %142, %76, %23
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i64 @ext2fs_rb_empty_root(%struct.rb_root*) #1

declare dso_local %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node*) #1

declare dso_local i32 @rb_insert_extent(i64, i64, %struct.ext2fs_rb_private*) #1

declare dso_local %struct.rb_node* @ext2fs_rb_next(%struct.rb_node*) #1

declare dso_local i32 @ext2fs_rb_erase(%struct.rb_node*, %struct.rb_root*) #1

declare dso_local i32 @rb_free_extent(%struct.ext2fs_rb_private*, %struct.bmap_rb_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
