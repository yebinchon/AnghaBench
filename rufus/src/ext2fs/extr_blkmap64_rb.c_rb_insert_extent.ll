; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_insert_extent.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_rb.c_rb_insert_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_rb_private = type { %struct.bmap_rb_extent*, i32, i32*, %struct.rb_root }
%struct.bmap_rb_extent = type { i64, i64, %struct.rb_node }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.ext2fs_rb_private*)* @rb_insert_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_insert_extent(i64 %0, i64 %1, %struct.ext2fs_rb_private* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ext2fs_rb_private*, align 8
  %8 = alloca %struct.rb_root*, align 8
  %9 = alloca %struct.rb_node*, align 8
  %10 = alloca %struct.rb_node**, align 8
  %11 = alloca %struct.rb_node*, align 8
  %12 = alloca %struct.rb_node*, align 8
  %13 = alloca %struct.rb_node*, align 8
  %14 = alloca %struct.bmap_rb_extent*, align 8
  %15 = alloca %struct.bmap_rb_extent*, align 8
  %16 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ext2fs_rb_private* %2, %struct.ext2fs_rb_private** %7, align 8
  %17 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %7, align 8
  %18 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %17, i32 0, i32 3
  store %struct.rb_root* %18, %struct.rb_root** %8, align 8
  store %struct.rb_node* null, %struct.rb_node** %9, align 8
  %19 = load %struct.rb_root*, %struct.rb_root** %8, align 8
  %20 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %19, i32 0, i32 0
  store %struct.rb_node** %20, %struct.rb_node*** %10, align 8
  store i32 0, i32* %16, align 4
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %253

24:                                               ; preds = %3
  %25 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %7, align 8
  %26 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %7, align 8
  %28 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %27, i32 0, i32 0
  %29 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %28, align 8
  store %struct.bmap_rb_extent* %29, %struct.bmap_rb_extent** %15, align 8
  %30 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %31 = icmp ne %struct.bmap_rb_extent* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %24
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %35 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %41 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %44 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = icmp sle i64 %39, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %84

49:                                               ; preds = %38, %32
  br label %50

50:                                               ; preds = %49, %24
  br label %51

51:                                               ; preds = %124, %50
  %52 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %53 = load %struct.rb_node*, %struct.rb_node** %52, align 8
  %54 = icmp ne %struct.rb_node* %53, null
  br i1 %54, label %55, label %125

55:                                               ; preds = %51
  %56 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %57 = load %struct.rb_node*, %struct.rb_node** %56, align 8
  store %struct.rb_node* %57, %struct.rb_node** %9, align 8
  %58 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %59 = call %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node* %58)
  store %struct.bmap_rb_extent* %59, %struct.bmap_rb_extent** %15, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %62 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %67 = load %struct.rb_node*, %struct.rb_node** %66, align 8
  %68 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %67, i32 0, i32 1
  store %struct.rb_node** %68, %struct.rb_node*** %10, align 8
  br label %124

69:                                               ; preds = %55
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %72 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %75 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = icmp sgt i64 %70, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %81 = load %struct.rb_node*, %struct.rb_node** %80, align 8
  %82 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %81, i32 0, i32 0
  store %struct.rb_node** %82, %struct.rb_node*** %10, align 8
  br label %123

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %83, %48
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = add nsw i64 %85, %86
  %88 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %89 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %92 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = icmp sle i64 %87, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  store i32 1, i32* %4, align 4
  br label %253

97:                                               ; preds = %84
  %98 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %99 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %102 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = load i64, i64* %5, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  store i32 0, i32* %16, align 4
  br label %109

108:                                              ; preds = %97
  store i32 1, i32* %16, align 4
  br label %109

109:                                              ; preds = %108, %107
  %110 = load i64, i64* %5, align 8
  %111 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %112 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %110, %113
  %115 = load i64, i64* %6, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* %6, align 8
  %117 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %118 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %5, align 8
  %120 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  store %struct.bmap_rb_extent* %120, %struct.bmap_rb_extent** %14, align 8
  %121 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %122 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %121, i32 0, i32 2
  store %struct.rb_node* %122, %struct.rb_node** %11, align 8
  br label %174

123:                                              ; preds = %79
  br label %124

124:                                              ; preds = %123, %65
  br label %51

125:                                              ; preds = %51
  %126 = load i64, i64* %5, align 8
  %127 = load i64, i64* %6, align 8
  %128 = call i32 @rb_get_new_extent(%struct.bmap_rb_extent** %14, i64 %126, i64 %127)
  %129 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %14, align 8
  %130 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %129, i32 0, i32 2
  store %struct.rb_node* %130, %struct.rb_node** %11, align 8
  %131 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  %132 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %133 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %134 = call i32 @ext2fs_rb_link_node(%struct.rb_node* %131, %struct.rb_node* %132, %struct.rb_node** %133)
  %135 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  %136 = load %struct.rb_root*, %struct.rb_root** %8, align 8
  %137 = call i32 @ext2fs_rb_insert_color(%struct.rb_node* %135, %struct.rb_root* %136)
  %138 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %14, align 8
  %139 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %7, align 8
  %140 = getelementptr inbounds %struct.ext2fs_rb_private, %struct.ext2fs_rb_private* %139, i32 0, i32 0
  store %struct.bmap_rb_extent* %138, %struct.bmap_rb_extent** %140, align 8
  %141 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  %142 = call %struct.rb_node* @ext2fs_rb_prev(%struct.rb_node* %141)
  store %struct.rb_node* %142, %struct.rb_node** %12, align 8
  %143 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %144 = icmp ne %struct.rb_node* %143, null
  br i1 %144, label %145, label %173

145:                                              ; preds = %125
  %146 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %147 = call %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node* %146)
  store %struct.bmap_rb_extent* %147, %struct.bmap_rb_extent** %15, align 8
  %148 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %149 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %152 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %150, %153
  %155 = load i64, i64* %5, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %172

157:                                              ; preds = %145
  %158 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %159 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %5, align 8
  %161 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %162 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %6, align 8
  %165 = add nsw i64 %164, %163
  store i64 %165, i64* %6, align 8
  %166 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %167 = load %struct.rb_root*, %struct.rb_root** %8, align 8
  %168 = call i32 @ext2fs_rb_erase(%struct.rb_node* %166, %struct.rb_root* %167)
  %169 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %7, align 8
  %170 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %171 = call i32 @rb_free_extent(%struct.ext2fs_rb_private* %169, %struct.bmap_rb_extent* %170)
  br label %172

172:                                              ; preds = %157, %145
  br label %173

173:                                              ; preds = %172, %125
  br label %174

174:                                              ; preds = %173, %109
  %175 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  %176 = call %struct.rb_node* @ext2fs_rb_next(%struct.rb_node* %175)
  store %struct.rb_node* %176, %struct.rb_node** %12, align 8
  br label %177

177:                                              ; preds = %243, %174
  %178 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %179 = icmp ne %struct.rb_node* %178, null
  br i1 %179, label %180, label %245

180:                                              ; preds = %177
  %181 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %182 = call %struct.rb_node* @ext2fs_rb_next(%struct.rb_node* %181)
  store %struct.rb_node* %182, %struct.rb_node** %13, align 8
  %183 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %184 = call %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node* %183)
  store %struct.bmap_rb_extent* %184, %struct.bmap_rb_extent** %15, align 8
  %185 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %186 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %189 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %187, %190
  %192 = load i64, i64* %5, align 8
  %193 = icmp sle i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %180
  br label %243

195:                                              ; preds = %180
  %196 = load i64, i64* %5, align 8
  %197 = load i64, i64* %6, align 8
  %198 = add nsw i64 %196, %197
  %199 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %200 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp slt i64 %198, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %195
  br label %245

204:                                              ; preds = %195
  %205 = load i64, i64* %5, align 8
  %206 = load i64, i64* %6, align 8
  %207 = add nsw i64 %205, %206
  %208 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %209 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %212 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %210, %213
  %215 = icmp sge i64 %207, %214
  br i1 %215, label %216, label %223

216:                                              ; preds = %204
  %217 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %218 = load %struct.rb_root*, %struct.rb_root** %8, align 8
  %219 = call i32 @ext2fs_rb_erase(%struct.rb_node* %217, %struct.rb_root* %218)
  %220 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %7, align 8
  %221 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %222 = call i32 @rb_free_extent(%struct.ext2fs_rb_private* %220, %struct.bmap_rb_extent* %221)
  br label %243

223:                                              ; preds = %204
  %224 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %225 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %228 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %226, %229
  %231 = load i64, i64* %5, align 8
  %232 = load i64, i64* %6, align 8
  %233 = add nsw i64 %231, %232
  %234 = sub nsw i64 %230, %233
  %235 = load i64, i64* %6, align 8
  %236 = add nsw i64 %235, %234
  store i64 %236, i64* %6, align 8
  %237 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %238 = load %struct.rb_root*, %struct.rb_root** %8, align 8
  %239 = call i32 @ext2fs_rb_erase(%struct.rb_node* %237, %struct.rb_root* %238)
  %240 = load %struct.ext2fs_rb_private*, %struct.ext2fs_rb_private** %7, align 8
  %241 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %15, align 8
  %242 = call i32 @rb_free_extent(%struct.ext2fs_rb_private* %240, %struct.bmap_rb_extent* %241)
  br label %245

243:                                              ; preds = %216, %194
  %244 = load %struct.rb_node*, %struct.rb_node** %13, align 8
  store %struct.rb_node* %244, %struct.rb_node** %12, align 8
  br label %177

245:                                              ; preds = %223, %203, %177
  %246 = load i64, i64* %5, align 8
  %247 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %14, align 8
  %248 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %247, i32 0, i32 0
  store i64 %246, i64* %248, align 8
  %249 = load i64, i64* %6, align 8
  %250 = load %struct.bmap_rb_extent*, %struct.bmap_rb_extent** %14, align 8
  %251 = getelementptr inbounds %struct.bmap_rb_extent, %struct.bmap_rb_extent* %250, i32 0, i32 1
  store i64 %249, i64* %251, align 8
  %252 = load i32, i32* %16, align 4
  store i32 %252, i32* %4, align 4
  br label %253

253:                                              ; preds = %245, %96, %23
  %254 = load i32, i32* %4, align 4
  ret i32 %254
}

declare dso_local %struct.bmap_rb_extent* @node_to_extent(%struct.rb_node*) #1

declare dso_local i32 @rb_get_new_extent(%struct.bmap_rb_extent**, i64, i64) #1

declare dso_local i32 @ext2fs_rb_link_node(%struct.rb_node*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @ext2fs_rb_insert_color(%struct.rb_node*, %struct.rb_root*) #1

declare dso_local %struct.rb_node* @ext2fs_rb_prev(%struct.rb_node*) #1

declare dso_local i32 @ext2fs_rb_erase(%struct.rb_node*, %struct.rb_root*) #1

declare dso_local i32 @rb_free_extent(%struct.ext2fs_rb_private*, %struct.bmap_rb_extent*) #1

declare dso_local %struct.rb_node* @ext2fs_rb_next(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
