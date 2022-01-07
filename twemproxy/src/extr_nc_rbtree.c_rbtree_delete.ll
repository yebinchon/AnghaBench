; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_rbtree.c_rbtree_delete.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_rbtree.c_rbtree_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbtree = type { %struct.rbnode*, %struct.rbnode* }
%struct.rbnode = type { %struct.rbnode*, %struct.rbnode*, %struct.rbnode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rbtree_delete(%struct.rbtree* %0, %struct.rbnode* %1) #0 {
  %3 = alloca %struct.rbtree*, align 8
  %4 = alloca %struct.rbnode*, align 8
  %5 = alloca %struct.rbnode**, align 8
  %6 = alloca %struct.rbnode*, align 8
  %7 = alloca %struct.rbnode*, align 8
  %8 = alloca %struct.rbnode*, align 8
  %9 = alloca %struct.rbnode*, align 8
  %10 = alloca i64, align 8
  store %struct.rbtree* %0, %struct.rbtree** %3, align 8
  store %struct.rbnode* %1, %struct.rbnode** %4, align 8
  %11 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %12 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %11, i32 0, i32 1
  store %struct.rbnode** %12, %struct.rbnode*** %5, align 8
  %13 = load %struct.rbtree*, %struct.rbtree** %3, align 8
  %14 = getelementptr inbounds %struct.rbtree, %struct.rbtree* %13, i32 0, i32 0
  %15 = load %struct.rbnode*, %struct.rbnode** %14, align 8
  store %struct.rbnode* %15, %struct.rbnode** %6, align 8
  %16 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %17 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %16, i32 0, i32 1
  %18 = load %struct.rbnode*, %struct.rbnode** %17, align 8
  %19 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %20 = icmp eq %struct.rbnode* %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %23 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %22, i32 0, i32 2
  %24 = load %struct.rbnode*, %struct.rbnode** %23, align 8
  store %struct.rbnode* %24, %struct.rbnode** %8, align 8
  %25 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  store %struct.rbnode* %25, %struct.rbnode** %7, align 8
  br label %47

26:                                               ; preds = %2
  %27 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %28 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %27, i32 0, i32 2
  %29 = load %struct.rbnode*, %struct.rbnode** %28, align 8
  %30 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %31 = icmp eq %struct.rbnode* %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %34 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %33, i32 0, i32 1
  %35 = load %struct.rbnode*, %struct.rbnode** %34, align 8
  store %struct.rbnode* %35, %struct.rbnode** %8, align 8
  %36 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  store %struct.rbnode* %36, %struct.rbnode** %7, align 8
  br label %46

37:                                               ; preds = %26
  %38 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %39 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %38, i32 0, i32 2
  %40 = load %struct.rbnode*, %struct.rbnode** %39, align 8
  %41 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %42 = call %struct.rbnode* @rbtree_node_min(%struct.rbnode* %40, %struct.rbnode* %41)
  store %struct.rbnode* %42, %struct.rbnode** %7, align 8
  %43 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %44 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %43, i32 0, i32 2
  %45 = load %struct.rbnode*, %struct.rbnode** %44, align 8
  store %struct.rbnode* %45, %struct.rbnode** %8, align 8
  br label %46

46:                                               ; preds = %37, %32
  br label %47

47:                                               ; preds = %46, %21
  %48 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %49 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %50 = load %struct.rbnode*, %struct.rbnode** %49, align 8
  %51 = icmp eq %struct.rbnode* %48, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %54 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  store %struct.rbnode* %53, %struct.rbnode** %54, align 8
  %55 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %56 = call i32 @rbtree_black(%struct.rbnode* %55)
  %57 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %58 = call i32 @rbtree_node_init(%struct.rbnode* %57)
  br label %389

59:                                               ; preds = %47
  %60 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %61 = call i64 @rbtree_is_red(%struct.rbnode* %60)
  store i64 %61, i64* %10, align 8
  %62 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %63 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %64 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %63, i32 0, i32 0
  %65 = load %struct.rbnode*, %struct.rbnode** %64, align 8
  %66 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %65, i32 0, i32 1
  %67 = load %struct.rbnode*, %struct.rbnode** %66, align 8
  %68 = icmp eq %struct.rbnode* %62, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %59
  %70 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %71 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %72 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %71, i32 0, i32 0
  %73 = load %struct.rbnode*, %struct.rbnode** %72, align 8
  %74 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %73, i32 0, i32 1
  store %struct.rbnode* %70, %struct.rbnode** %74, align 8
  br label %81

75:                                               ; preds = %59
  %76 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %77 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %78 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %77, i32 0, i32 0
  %79 = load %struct.rbnode*, %struct.rbnode** %78, align 8
  %80 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %79, i32 0, i32 2
  store %struct.rbnode* %76, %struct.rbnode** %80, align 8
  br label %81

81:                                               ; preds = %75, %69
  %82 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %83 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %84 = icmp eq %struct.rbnode* %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %87 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %86, i32 0, i32 0
  %88 = load %struct.rbnode*, %struct.rbnode** %87, align 8
  %89 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %90 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %89, i32 0, i32 0
  store %struct.rbnode* %88, %struct.rbnode** %90, align 8
  br label %179

91:                                               ; preds = %81
  %92 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %93 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %92, i32 0, i32 0
  %94 = load %struct.rbnode*, %struct.rbnode** %93, align 8
  %95 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %96 = icmp eq %struct.rbnode* %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %99 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %100 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %99, i32 0, i32 0
  store %struct.rbnode* %98, %struct.rbnode** %100, align 8
  br label %107

101:                                              ; preds = %91
  %102 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %103 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %102, i32 0, i32 0
  %104 = load %struct.rbnode*, %struct.rbnode** %103, align 8
  %105 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %106 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %105, i32 0, i32 0
  store %struct.rbnode* %104, %struct.rbnode** %106, align 8
  br label %107

107:                                              ; preds = %101, %97
  %108 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %109 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %108, i32 0, i32 1
  %110 = load %struct.rbnode*, %struct.rbnode** %109, align 8
  %111 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %112 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %111, i32 0, i32 1
  store %struct.rbnode* %110, %struct.rbnode** %112, align 8
  %113 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %114 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %113, i32 0, i32 2
  %115 = load %struct.rbnode*, %struct.rbnode** %114, align 8
  %116 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %117 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %116, i32 0, i32 2
  store %struct.rbnode* %115, %struct.rbnode** %117, align 8
  %118 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %119 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %118, i32 0, i32 0
  %120 = load %struct.rbnode*, %struct.rbnode** %119, align 8
  %121 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %122 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %121, i32 0, i32 0
  store %struct.rbnode* %120, %struct.rbnode** %122, align 8
  %123 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %124 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %125 = call i32 @rbtree_copy_color(%struct.rbnode* %123, %struct.rbnode* %124)
  %126 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %127 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %128 = load %struct.rbnode*, %struct.rbnode** %127, align 8
  %129 = icmp eq %struct.rbnode* %126, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %107
  %131 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %132 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  store %struct.rbnode* %131, %struct.rbnode** %132, align 8
  br label %154

133:                                              ; preds = %107
  %134 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %135 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %136 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %135, i32 0, i32 0
  %137 = load %struct.rbnode*, %struct.rbnode** %136, align 8
  %138 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %137, i32 0, i32 1
  %139 = load %struct.rbnode*, %struct.rbnode** %138, align 8
  %140 = icmp eq %struct.rbnode* %134, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %133
  %142 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %143 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %144 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %143, i32 0, i32 0
  %145 = load %struct.rbnode*, %struct.rbnode** %144, align 8
  %146 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %145, i32 0, i32 1
  store %struct.rbnode* %142, %struct.rbnode** %146, align 8
  br label %153

147:                                              ; preds = %133
  %148 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %149 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %150 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %149, i32 0, i32 0
  %151 = load %struct.rbnode*, %struct.rbnode** %150, align 8
  %152 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %151, i32 0, i32 2
  store %struct.rbnode* %148, %struct.rbnode** %152, align 8
  br label %153

153:                                              ; preds = %147, %141
  br label %154

154:                                              ; preds = %153, %130
  %155 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %156 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %155, i32 0, i32 1
  %157 = load %struct.rbnode*, %struct.rbnode** %156, align 8
  %158 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %159 = icmp ne %struct.rbnode* %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %162 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %163 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %162, i32 0, i32 1
  %164 = load %struct.rbnode*, %struct.rbnode** %163, align 8
  %165 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %164, i32 0, i32 0
  store %struct.rbnode* %161, %struct.rbnode** %165, align 8
  br label %166

166:                                              ; preds = %160, %154
  %167 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %168 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %167, i32 0, i32 2
  %169 = load %struct.rbnode*, %struct.rbnode** %168, align 8
  %170 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %171 = icmp ne %struct.rbnode* %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %166
  %173 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %174 = load %struct.rbnode*, %struct.rbnode** %7, align 8
  %175 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %174, i32 0, i32 2
  %176 = load %struct.rbnode*, %struct.rbnode** %175, align 8
  %177 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %176, i32 0, i32 0
  store %struct.rbnode* %173, %struct.rbnode** %177, align 8
  br label %178

178:                                              ; preds = %172, %166
  br label %179

179:                                              ; preds = %178, %85
  %180 = load %struct.rbnode*, %struct.rbnode** %4, align 8
  %181 = call i32 @rbtree_node_init(%struct.rbnode* %180)
  %182 = load i64, i64* %10, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %389

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %385, %185
  %187 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %188 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %189 = load %struct.rbnode*, %struct.rbnode** %188, align 8
  %190 = icmp ne %struct.rbnode* %187, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %193 = call i64 @rbtree_is_black(%struct.rbnode* %192)
  %194 = icmp ne i64 %193, 0
  br label %195

195:                                              ; preds = %191, %186
  %196 = phi i1 [ false, %186 ], [ %194, %191 ]
  br i1 %196, label %197, label %386

197:                                              ; preds = %195
  %198 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %199 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %200 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %199, i32 0, i32 0
  %201 = load %struct.rbnode*, %struct.rbnode** %200, align 8
  %202 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %201, i32 0, i32 1
  %203 = load %struct.rbnode*, %struct.rbnode** %202, align 8
  %204 = icmp eq %struct.rbnode* %198, %203
  br i1 %204, label %205, label %295

205:                                              ; preds = %197
  %206 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %207 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %206, i32 0, i32 0
  %208 = load %struct.rbnode*, %struct.rbnode** %207, align 8
  %209 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %208, i32 0, i32 2
  %210 = load %struct.rbnode*, %struct.rbnode** %209, align 8
  store %struct.rbnode* %210, %struct.rbnode** %9, align 8
  %211 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %212 = call i64 @rbtree_is_red(%struct.rbnode* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %232

214:                                              ; preds = %205
  %215 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %216 = call i32 @rbtree_black(%struct.rbnode* %215)
  %217 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %218 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %217, i32 0, i32 0
  %219 = load %struct.rbnode*, %struct.rbnode** %218, align 8
  %220 = call i32 @rbtree_red(%struct.rbnode* %219)
  %221 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %222 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %223 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %224 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %223, i32 0, i32 0
  %225 = load %struct.rbnode*, %struct.rbnode** %224, align 8
  %226 = call i32 @rbtree_left_rotate(%struct.rbnode** %221, %struct.rbnode* %222, %struct.rbnode* %225)
  %227 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %228 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %227, i32 0, i32 0
  %229 = load %struct.rbnode*, %struct.rbnode** %228, align 8
  %230 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %229, i32 0, i32 2
  %231 = load %struct.rbnode*, %struct.rbnode** %230, align 8
  store %struct.rbnode* %231, %struct.rbnode** %9, align 8
  br label %232

232:                                              ; preds = %214, %205
  %233 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %234 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %233, i32 0, i32 1
  %235 = load %struct.rbnode*, %struct.rbnode** %234, align 8
  %236 = call i64 @rbtree_is_black(%struct.rbnode* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %232
  %239 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %240 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %239, i32 0, i32 2
  %241 = load %struct.rbnode*, %struct.rbnode** %240, align 8
  %242 = call i64 @rbtree_is_black(%struct.rbnode* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %238
  %245 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %246 = call i32 @rbtree_red(%struct.rbnode* %245)
  %247 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %248 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %247, i32 0, i32 0
  %249 = load %struct.rbnode*, %struct.rbnode** %248, align 8
  store %struct.rbnode* %249, %struct.rbnode** %8, align 8
  br label %294

250:                                              ; preds = %238, %232
  %251 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %252 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %251, i32 0, i32 2
  %253 = load %struct.rbnode*, %struct.rbnode** %252, align 8
  %254 = call i64 @rbtree_is_black(%struct.rbnode* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %272

256:                                              ; preds = %250
  %257 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %258 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %257, i32 0, i32 1
  %259 = load %struct.rbnode*, %struct.rbnode** %258, align 8
  %260 = call i32 @rbtree_black(%struct.rbnode* %259)
  %261 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %262 = call i32 @rbtree_red(%struct.rbnode* %261)
  %263 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %264 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %265 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %266 = call i32 @rbtree_right_rotate(%struct.rbnode** %263, %struct.rbnode* %264, %struct.rbnode* %265)
  %267 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %268 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %267, i32 0, i32 0
  %269 = load %struct.rbnode*, %struct.rbnode** %268, align 8
  %270 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %269, i32 0, i32 2
  %271 = load %struct.rbnode*, %struct.rbnode** %270, align 8
  store %struct.rbnode* %271, %struct.rbnode** %9, align 8
  br label %272

272:                                              ; preds = %256, %250
  %273 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %274 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %275 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %274, i32 0, i32 0
  %276 = load %struct.rbnode*, %struct.rbnode** %275, align 8
  %277 = call i32 @rbtree_copy_color(%struct.rbnode* %273, %struct.rbnode* %276)
  %278 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %279 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %278, i32 0, i32 0
  %280 = load %struct.rbnode*, %struct.rbnode** %279, align 8
  %281 = call i32 @rbtree_black(%struct.rbnode* %280)
  %282 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %283 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %282, i32 0, i32 2
  %284 = load %struct.rbnode*, %struct.rbnode** %283, align 8
  %285 = call i32 @rbtree_black(%struct.rbnode* %284)
  %286 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %287 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %288 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %289 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %288, i32 0, i32 0
  %290 = load %struct.rbnode*, %struct.rbnode** %289, align 8
  %291 = call i32 @rbtree_left_rotate(%struct.rbnode** %286, %struct.rbnode* %287, %struct.rbnode* %290)
  %292 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %293 = load %struct.rbnode*, %struct.rbnode** %292, align 8
  store %struct.rbnode* %293, %struct.rbnode** %8, align 8
  br label %294

294:                                              ; preds = %272, %244
  br label %385

295:                                              ; preds = %197
  %296 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %297 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %296, i32 0, i32 0
  %298 = load %struct.rbnode*, %struct.rbnode** %297, align 8
  %299 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %298, i32 0, i32 1
  %300 = load %struct.rbnode*, %struct.rbnode** %299, align 8
  store %struct.rbnode* %300, %struct.rbnode** %9, align 8
  %301 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %302 = call i64 @rbtree_is_red(%struct.rbnode* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %322

304:                                              ; preds = %295
  %305 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %306 = call i32 @rbtree_black(%struct.rbnode* %305)
  %307 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %308 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %307, i32 0, i32 0
  %309 = load %struct.rbnode*, %struct.rbnode** %308, align 8
  %310 = call i32 @rbtree_red(%struct.rbnode* %309)
  %311 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %312 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %313 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %314 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %313, i32 0, i32 0
  %315 = load %struct.rbnode*, %struct.rbnode** %314, align 8
  %316 = call i32 @rbtree_right_rotate(%struct.rbnode** %311, %struct.rbnode* %312, %struct.rbnode* %315)
  %317 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %318 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %317, i32 0, i32 0
  %319 = load %struct.rbnode*, %struct.rbnode** %318, align 8
  %320 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %319, i32 0, i32 1
  %321 = load %struct.rbnode*, %struct.rbnode** %320, align 8
  store %struct.rbnode* %321, %struct.rbnode** %9, align 8
  br label %322

322:                                              ; preds = %304, %295
  %323 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %324 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %323, i32 0, i32 1
  %325 = load %struct.rbnode*, %struct.rbnode** %324, align 8
  %326 = call i64 @rbtree_is_black(%struct.rbnode* %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %340

328:                                              ; preds = %322
  %329 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %330 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %329, i32 0, i32 2
  %331 = load %struct.rbnode*, %struct.rbnode** %330, align 8
  %332 = call i64 @rbtree_is_black(%struct.rbnode* %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %340

334:                                              ; preds = %328
  %335 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %336 = call i32 @rbtree_red(%struct.rbnode* %335)
  %337 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %338 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %337, i32 0, i32 0
  %339 = load %struct.rbnode*, %struct.rbnode** %338, align 8
  store %struct.rbnode* %339, %struct.rbnode** %8, align 8
  br label %384

340:                                              ; preds = %328, %322
  %341 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %342 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %341, i32 0, i32 1
  %343 = load %struct.rbnode*, %struct.rbnode** %342, align 8
  %344 = call i64 @rbtree_is_black(%struct.rbnode* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %362

346:                                              ; preds = %340
  %347 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %348 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %347, i32 0, i32 2
  %349 = load %struct.rbnode*, %struct.rbnode** %348, align 8
  %350 = call i32 @rbtree_black(%struct.rbnode* %349)
  %351 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %352 = call i32 @rbtree_red(%struct.rbnode* %351)
  %353 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %354 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %355 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %356 = call i32 @rbtree_left_rotate(%struct.rbnode** %353, %struct.rbnode* %354, %struct.rbnode* %355)
  %357 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %358 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %357, i32 0, i32 0
  %359 = load %struct.rbnode*, %struct.rbnode** %358, align 8
  %360 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %359, i32 0, i32 1
  %361 = load %struct.rbnode*, %struct.rbnode** %360, align 8
  store %struct.rbnode* %361, %struct.rbnode** %9, align 8
  br label %362

362:                                              ; preds = %346, %340
  %363 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %364 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %365 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %364, i32 0, i32 0
  %366 = load %struct.rbnode*, %struct.rbnode** %365, align 8
  %367 = call i32 @rbtree_copy_color(%struct.rbnode* %363, %struct.rbnode* %366)
  %368 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %369 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %368, i32 0, i32 0
  %370 = load %struct.rbnode*, %struct.rbnode** %369, align 8
  %371 = call i32 @rbtree_black(%struct.rbnode* %370)
  %372 = load %struct.rbnode*, %struct.rbnode** %9, align 8
  %373 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %372, i32 0, i32 1
  %374 = load %struct.rbnode*, %struct.rbnode** %373, align 8
  %375 = call i32 @rbtree_black(%struct.rbnode* %374)
  %376 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %377 = load %struct.rbnode*, %struct.rbnode** %6, align 8
  %378 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %379 = getelementptr inbounds %struct.rbnode, %struct.rbnode* %378, i32 0, i32 0
  %380 = load %struct.rbnode*, %struct.rbnode** %379, align 8
  %381 = call i32 @rbtree_right_rotate(%struct.rbnode** %376, %struct.rbnode* %377, %struct.rbnode* %380)
  %382 = load %struct.rbnode**, %struct.rbnode*** %5, align 8
  %383 = load %struct.rbnode*, %struct.rbnode** %382, align 8
  store %struct.rbnode* %383, %struct.rbnode** %8, align 8
  br label %384

384:                                              ; preds = %362, %334
  br label %385

385:                                              ; preds = %384, %294
  br label %186

386:                                              ; preds = %195
  %387 = load %struct.rbnode*, %struct.rbnode** %8, align 8
  %388 = call i32 @rbtree_black(%struct.rbnode* %387)
  br label %389

389:                                              ; preds = %386, %184, %52
  ret void
}

declare dso_local %struct.rbnode* @rbtree_node_min(%struct.rbnode*, %struct.rbnode*) #1

declare dso_local i32 @rbtree_black(%struct.rbnode*) #1

declare dso_local i32 @rbtree_node_init(%struct.rbnode*) #1

declare dso_local i64 @rbtree_is_red(%struct.rbnode*) #1

declare dso_local i32 @rbtree_copy_color(%struct.rbnode*, %struct.rbnode*) #1

declare dso_local i64 @rbtree_is_black(%struct.rbnode*) #1

declare dso_local i32 @rbtree_red(%struct.rbnode*) #1

declare dso_local i32 @rbtree_left_rotate(%struct.rbnode**, %struct.rbnode*, %struct.rbnode*) #1

declare dso_local i32 @rbtree_right_rotate(%struct.rbnode**, %struct.rbnode*, %struct.rbnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
