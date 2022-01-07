; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_rbtree.c_ngx_rbtree_delete.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_rbtree.c_ngx_rbtree_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_rbtree_delete(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__**, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  store %struct.TYPE_21__** %12, %struct.TYPE_21__*** %6, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %7, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %20 = icmp eq %struct.TYPE_21__* %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %9, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %8, align 8
  br label %58

26:                                               ; preds = %2
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %31 = icmp eq %struct.TYPE_21__* %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %34, align 8
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %9, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %36, %struct.TYPE_21__** %8, align 8
  br label %57

37:                                               ; preds = %26
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = call %struct.TYPE_21__* @ngx_rbtree_min(%struct.TYPE_21__* %40, %struct.TYPE_21__* %41)
  store %struct.TYPE_21__* %42, %struct.TYPE_21__** %8, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %47 = icmp ne %struct.TYPE_21__* %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %50, align 8
  store %struct.TYPE_21__* %51, %struct.TYPE_21__** %9, align 8
  br label %56

52:                                               ; preds = %37
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %54, align 8
  store %struct.TYPE_21__* %55, %struct.TYPE_21__** %9, align 8
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %32
  br label %58

58:                                               ; preds = %57, %21
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %60 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %60, align 8
  %62 = icmp eq %struct.TYPE_21__* %59, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %65 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  store %struct.TYPE_21__* %64, %struct.TYPE_21__** %65, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %67 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %66)
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %69, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 2
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %71, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %73, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  br label %412

76:                                               ; preds = %58
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %78 = call i64 @ngx_rbt_is_red(%struct.TYPE_21__* %77)
  store i64 %78, i64* %5, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  %85 = icmp eq %struct.TYPE_21__* %79, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %76
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  store %struct.TYPE_21__* %87, %struct.TYPE_21__** %91, align 8
  br label %98

92:                                               ; preds = %76
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 2
  store %struct.TYPE_21__* %93, %struct.TYPE_21__** %97, align 8
  br label %98

98:                                               ; preds = %92, %86
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %101 = icmp eq %struct.TYPE_21__* %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %104, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  store %struct.TYPE_21__* %105, %struct.TYPE_21__** %107, align 8
  br label %196

108:                                              ; preds = %98
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %110, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %113 = icmp eq %struct.TYPE_21__* %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  store %struct.TYPE_21__* %115, %struct.TYPE_21__** %117, align 8
  br label %124

118:                                              ; preds = %108
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  store %struct.TYPE_21__* %121, %struct.TYPE_21__** %123, align 8
  br label %124

124:                                              ; preds = %118, %114
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %126, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  store %struct.TYPE_21__* %127, %struct.TYPE_21__** %129, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 2
  store %struct.TYPE_21__* %132, %struct.TYPE_21__** %134, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %136, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  store %struct.TYPE_21__* %137, %struct.TYPE_21__** %139, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %142 = call i32 @ngx_rbt_copy_color(%struct.TYPE_21__* %140, %struct.TYPE_21__* %141)
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %144 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %144, align 8
  %146 = icmp eq %struct.TYPE_21__* %143, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %124
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %149 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  store %struct.TYPE_21__* %148, %struct.TYPE_21__** %149, align 8
  br label %171

150:                                              ; preds = %124
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %155, align 8
  %157 = icmp eq %struct.TYPE_21__* %151, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %150
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 1
  store %struct.TYPE_21__* %159, %struct.TYPE_21__** %163, align 8
  br label %170

164:                                              ; preds = %150
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 2
  store %struct.TYPE_21__* %165, %struct.TYPE_21__** %169, align 8
  br label %170

170:                                              ; preds = %164, %158
  br label %171

171:                                              ; preds = %170, %147
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %173, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %176 = icmp ne %struct.TYPE_21__* %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %171
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  store %struct.TYPE_21__* %178, %struct.TYPE_21__** %182, align 8
  br label %183

183:                                              ; preds = %177, %171
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %185, align 8
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %188 = icmp ne %struct.TYPE_21__* %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  store %struct.TYPE_21__* %190, %struct.TYPE_21__** %194, align 8
  br label %195

195:                                              ; preds = %189, %183
  br label %196

196:                                              ; preds = %195, %102
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %198, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 2
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %200, align 8
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 0
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %202, align 8
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 3
  store i64 0, i64* %204, align 8
  %205 = load i64, i64* %5, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %196
  br label %412

208:                                              ; preds = %196
  br label %209

209:                                              ; preds = %408, %208
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %211 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %211, align 8
  %213 = icmp ne %struct.TYPE_21__* %210, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %216 = call i64 @ngx_rbt_is_black(%struct.TYPE_21__* %215)
  %217 = icmp ne i64 %216, 0
  br label %218

218:                                              ; preds = %214, %209
  %219 = phi i1 [ false, %209 ], [ %217, %214 ]
  br i1 %219, label %220, label %409

220:                                              ; preds = %218
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %225, align 8
  %227 = icmp eq %struct.TYPE_21__* %221, %226
  br i1 %227, label %228, label %318

228:                                              ; preds = %220
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %232, align 8
  store %struct.TYPE_21__* %233, %struct.TYPE_21__** %10, align 8
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %235 = call i64 @ngx_rbt_is_red(%struct.TYPE_21__* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %255

237:                                              ; preds = %228
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %239 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %238)
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %241, align 8
  %243 = call i32 @ngx_rbt_red(%struct.TYPE_21__* %242)
  %244 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %247, align 8
  %249 = call i32 @ngx_rbtree_left_rotate(%struct.TYPE_21__** %244, %struct.TYPE_21__* %245, %struct.TYPE_21__* %248)
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %253, align 8
  store %struct.TYPE_21__* %254, %struct.TYPE_21__** %10, align 8
  br label %255

255:                                              ; preds = %237, %228
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %257, align 8
  %259 = call i64 @ngx_rbt_is_black(%struct.TYPE_21__* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %273

261:                                              ; preds = %255
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %263, align 8
  %265 = call i64 @ngx_rbt_is_black(%struct.TYPE_21__* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %261
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %269 = call i32 @ngx_rbt_red(%struct.TYPE_21__* %268)
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %271, align 8
  store %struct.TYPE_21__* %272, %struct.TYPE_21__** %9, align 8
  br label %317

273:                                              ; preds = %261, %255
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %275, align 8
  %277 = call i64 @ngx_rbt_is_black(%struct.TYPE_21__* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %295

279:                                              ; preds = %273
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %281, align 8
  %283 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %282)
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %285 = call i32 @ngx_rbt_red(%struct.TYPE_21__* %284)
  %286 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %289 = call i32 @ngx_rbtree_right_rotate(%struct.TYPE_21__** %286, %struct.TYPE_21__* %287, %struct.TYPE_21__* %288)
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 2
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %293, align 8
  store %struct.TYPE_21__* %294, %struct.TYPE_21__** %10, align 8
  br label %295

295:                                              ; preds = %279, %273
  %296 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %298, align 8
  %300 = call i32 @ngx_rbt_copy_color(%struct.TYPE_21__* %296, %struct.TYPE_21__* %299)
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %302, align 8
  %304 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %303)
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %305, i32 0, i32 2
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** %306, align 8
  %308 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %307)
  %309 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_21__*, %struct.TYPE_21__** %312, align 8
  %314 = call i32 @ngx_rbtree_left_rotate(%struct.TYPE_21__** %309, %struct.TYPE_21__* %310, %struct.TYPE_21__* %313)
  %315 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %315, align 8
  store %struct.TYPE_21__* %316, %struct.TYPE_21__** %9, align 8
  br label %317

317:                                              ; preds = %295, %267
  br label %408

318:                                              ; preds = %220
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_21__*, %struct.TYPE_21__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_21__*, %struct.TYPE_21__** %322, align 8
  store %struct.TYPE_21__* %323, %struct.TYPE_21__** %10, align 8
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %325 = call i64 @ngx_rbt_is_red(%struct.TYPE_21__* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %345

327:                                              ; preds = %318
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %329 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %328)
  %330 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %331 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_21__*, %struct.TYPE_21__** %331, align 8
  %333 = call i32 @ngx_rbt_red(%struct.TYPE_21__* %332)
  %334 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %337 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_21__*, %struct.TYPE_21__** %337, align 8
  %339 = call i32 @ngx_rbtree_right_rotate(%struct.TYPE_21__** %334, %struct.TYPE_21__* %335, %struct.TYPE_21__* %338)
  %340 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %340, i32 0, i32 0
  %342 = load %struct.TYPE_21__*, %struct.TYPE_21__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %342, i32 0, i32 1
  %344 = load %struct.TYPE_21__*, %struct.TYPE_21__** %343, align 8
  store %struct.TYPE_21__* %344, %struct.TYPE_21__** %10, align 8
  br label %345

345:                                              ; preds = %327, %318
  %346 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %347 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %346, i32 0, i32 1
  %348 = load %struct.TYPE_21__*, %struct.TYPE_21__** %347, align 8
  %349 = call i64 @ngx_rbt_is_black(%struct.TYPE_21__* %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %363

351:                                              ; preds = %345
  %352 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %353 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %352, i32 0, i32 2
  %354 = load %struct.TYPE_21__*, %struct.TYPE_21__** %353, align 8
  %355 = call i64 @ngx_rbt_is_black(%struct.TYPE_21__* %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %363

357:                                              ; preds = %351
  %358 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %359 = call i32 @ngx_rbt_red(%struct.TYPE_21__* %358)
  %360 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %361 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_21__*, %struct.TYPE_21__** %361, align 8
  store %struct.TYPE_21__* %362, %struct.TYPE_21__** %9, align 8
  br label %407

363:                                              ; preds = %351, %345
  %364 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %364, i32 0, i32 1
  %366 = load %struct.TYPE_21__*, %struct.TYPE_21__** %365, align 8
  %367 = call i64 @ngx_rbt_is_black(%struct.TYPE_21__* %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %385

369:                                              ; preds = %363
  %370 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %371 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %370, i32 0, i32 2
  %372 = load %struct.TYPE_21__*, %struct.TYPE_21__** %371, align 8
  %373 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %372)
  %374 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %375 = call i32 @ngx_rbt_red(%struct.TYPE_21__* %374)
  %376 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %377 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %378 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %379 = call i32 @ngx_rbtree_left_rotate(%struct.TYPE_21__** %376, %struct.TYPE_21__* %377, %struct.TYPE_21__* %378)
  %380 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %381 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %380, i32 0, i32 0
  %382 = load %struct.TYPE_21__*, %struct.TYPE_21__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %382, i32 0, i32 1
  %384 = load %struct.TYPE_21__*, %struct.TYPE_21__** %383, align 8
  store %struct.TYPE_21__* %384, %struct.TYPE_21__** %10, align 8
  br label %385

385:                                              ; preds = %369, %363
  %386 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %387 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %388 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %387, i32 0, i32 0
  %389 = load %struct.TYPE_21__*, %struct.TYPE_21__** %388, align 8
  %390 = call i32 @ngx_rbt_copy_color(%struct.TYPE_21__* %386, %struct.TYPE_21__* %389)
  %391 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %392 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %391, i32 0, i32 0
  %393 = load %struct.TYPE_21__*, %struct.TYPE_21__** %392, align 8
  %394 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %393)
  %395 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %396 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %395, i32 0, i32 1
  %397 = load %struct.TYPE_21__*, %struct.TYPE_21__** %396, align 8
  %398 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %397)
  %399 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %400 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %401 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %402 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %401, i32 0, i32 0
  %403 = load %struct.TYPE_21__*, %struct.TYPE_21__** %402, align 8
  %404 = call i32 @ngx_rbtree_right_rotate(%struct.TYPE_21__** %399, %struct.TYPE_21__* %400, %struct.TYPE_21__* %403)
  %405 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %406 = load %struct.TYPE_21__*, %struct.TYPE_21__** %405, align 8
  store %struct.TYPE_21__* %406, %struct.TYPE_21__** %9, align 8
  br label %407

407:                                              ; preds = %385, %357
  br label %408

408:                                              ; preds = %407, %317
  br label %209

409:                                              ; preds = %218
  %410 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %411 = call i32 @ngx_rbt_black(%struct.TYPE_21__* %410)
  br label %412

412:                                              ; preds = %409, %207, %63
  ret void
}

declare dso_local %struct.TYPE_21__* @ngx_rbtree_min(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_rbt_black(%struct.TYPE_21__*) #1

declare dso_local i64 @ngx_rbt_is_red(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_rbt_copy_color(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i64 @ngx_rbt_is_black(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_rbt_red(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_rbtree_left_rotate(%struct.TYPE_21__**, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_rbtree_right_rotate(%struct.TYPE_21__**, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
