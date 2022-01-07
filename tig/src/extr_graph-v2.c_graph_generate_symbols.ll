; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_generate_symbols.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_generate_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_v2 = type { i32, i8*, i32, %struct.graph_row, %struct.graph_row, %struct.graph_row, %struct.graph_row }
%struct.graph_row = type { i32, %struct.graph_column* }
%struct.graph_column = type { i8*, %struct.graph_symbol }
%struct.graph_symbol = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.graph_canvas = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.graph_v2*, %struct.graph_canvas*)* @graph_generate_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_generate_symbols(%struct.graph_v2* %0, %struct.graph_canvas* %1) #0 {
  %3 = alloca %struct.graph_v2*, align 8
  %4 = alloca %struct.graph_canvas*, align 8
  %5 = alloca %struct.graph_row*, align 8
  %6 = alloca %struct.graph_row*, align 8
  %7 = alloca %struct.graph_row*, align 8
  %8 = alloca %struct.graph_row*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.graph_column*, align 8
  %14 = alloca %struct.graph_symbol*, align 8
  %15 = alloca i8*, align 8
  store %struct.graph_v2* %0, %struct.graph_v2** %3, align 8
  store %struct.graph_canvas* %1, %struct.graph_canvas** %4, align 8
  %16 = load %struct.graph_v2*, %struct.graph_v2** %3, align 8
  %17 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %16, i32 0, i32 6
  store %struct.graph_row* %17, %struct.graph_row** %5, align 8
  %18 = load %struct.graph_v2*, %struct.graph_v2** %3, align 8
  %19 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %18, i32 0, i32 5
  store %struct.graph_row* %19, %struct.graph_row** %6, align 8
  %20 = load %struct.graph_v2*, %struct.graph_v2** %3, align 8
  %21 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %20, i32 0, i32 4
  store %struct.graph_row* %21, %struct.graph_row** %7, align 8
  %22 = load %struct.graph_v2*, %struct.graph_v2** %3, align 8
  %23 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %22, i32 0, i32 3
  store %struct.graph_row* %23, %struct.graph_row** %8, align 8
  %24 = load %struct.graph_row*, %struct.graph_row** %8, align 8
  %25 = call i32 @commits_in_row(%struct.graph_row* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 1
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 1
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %249, %2
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %35 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %252

38:                                               ; preds = %32
  %39 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %40 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %39, i32 0, i32 1
  %41 = load %struct.graph_column*, %struct.graph_column** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %41, i64 %43
  store %struct.graph_column* %44, %struct.graph_column** %13, align 8
  %45 = load %struct.graph_column*, %struct.graph_column** %13, align 8
  %46 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %45, i32 0, i32 1
  store %struct.graph_symbol* %46, %struct.graph_symbol** %14, align 8
  %47 = load %struct.graph_row*, %struct.graph_row** %7, align 8
  %48 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %47, i32 0, i32 1
  %49 = load %struct.graph_column*, %struct.graph_column** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %49, i64 %51
  %53 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %15, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.graph_v2*, %struct.graph_v2** %3, align 8
  %57 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %55, %58
  %60 = zext i1 %59 to i32
  %61 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %62 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.graph_v2*, %struct.graph_v2** %3, align 8
  %65 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %38
  %69 = load %struct.graph_row*, %struct.graph_row** %7, align 8
  %70 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %69, i32 0, i32 1
  %71 = load %struct.graph_column*, %struct.graph_column** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %71, i64 %73
  %75 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %68, %38
  %80 = phi i1 [ false, %38 ], [ %78, %68 ]
  %81 = zext i1 %80 to i32
  %82 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %83 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %86 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %89 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %91 = load %struct.graph_row*, %struct.graph_row** %7, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i8* @continued_down(%struct.graph_row* %90, %struct.graph_row* %91, i32 %92)
  %94 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %95 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %94, i32 0, i32 20
  store i8* %93, i8** %95, align 8
  %96 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %97 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i8* @continued_down(%struct.graph_row* %96, %struct.graph_row* %97, i32 %98)
  %100 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %101 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %100, i32 0, i32 19
  store i8* %99, i8** %101, align 8
  %102 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.graph_v2*, %struct.graph_v2** %3, align 8
  %105 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @continued_right(%struct.graph_row* %102, i32 %103, i32 %106)
  %108 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %109 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %108, i32 0, i32 18
  store i8* %107, i8** %109, align 8
  %110 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.graph_v2*, %struct.graph_v2** %3, align 8
  %113 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i8* @continued_left(%struct.graph_row* %110, i32 %111, i32 %114)
  %116 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %117 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %116, i32 0, i32 17
  store i8* %115, i8** %117, align 8
  %118 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %121 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i8* @continued_left(%struct.graph_row* %118, i32 %119, i32 %122)
  %124 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %125 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %124, i32 0, i32 16
  store i8* %123, i8** %125, align 8
  %126 = load %struct.graph_row*, %struct.graph_row** %8, align 8
  %127 = load %struct.graph_row*, %struct.graph_row** %7, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @parent_down(%struct.graph_row* %126, %struct.graph_row* %127, i32 %128)
  %130 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %131 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %130, i32 0, i32 15
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.graph_v2*, %struct.graph_v2** %3, align 8
  %134 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %132, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %79
  %138 = load %struct.graph_row*, %struct.graph_row** %8, align 8
  %139 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %140 = load %struct.graph_row*, %struct.graph_row** %7, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i64 @parent_right(%struct.graph_row* %138, %struct.graph_row* %139, %struct.graph_row* %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br label %144

144:                                              ; preds = %137, %79
  %145 = phi i1 [ false, %79 ], [ %143, %137 ]
  %146 = zext i1 %145 to i32
  %147 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %148 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.graph_v2*, %struct.graph_v2** %3, align 8
  %151 = call i32 @below_commit(i32 %149, %struct.graph_v2* %150)
  %152 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %153 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %152, i32 0, i32 14
  store i32 %151, i32* %153, align 4
  %154 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.graph_v2*, %struct.graph_v2** %3, align 8
  %157 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.graph_v2*, %struct.graph_v2** %3, align 8
  %160 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @flanked(%struct.graph_row* %154, i32 %155, i32 %158, i8* %161)
  %163 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %164 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %163, i32 0, i32 13
  store i32 %162, i32* %164, align 8
  %165 = load %struct.graph_row*, %struct.graph_row** %7, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i8* @continued_right(%struct.graph_row* %165, i32 %166, i32 0)
  %168 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %169 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %168, i32 0, i32 12
  store i8* %167, i8** %169, align 8
  %170 = load %struct.graph_column*, %struct.graph_column** %13, align 8
  %171 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.graph_v2*, %struct.graph_v2** %3, align 8
  %174 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = icmp eq i8* %172, %175
  %177 = zext i1 %176 to i32
  %178 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %179 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 4
  %180 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %181 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %182 = load i32, i32* %12, align 4
  %183 = call i8* @shift_left(%struct.graph_row* %180, %struct.graph_row* %181, i32 %182)
  %184 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %185 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %184, i32 0, i32 9
  store i8* %183, i8** %185, align 8
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %186, 1
  %188 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %189 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %144
  %193 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %194 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %195 = load i32, i32* %12, align 4
  %196 = add nsw i32 %195, 1
  %197 = call i8* @shift_left(%struct.graph_row* %193, %struct.graph_row* %194, i32 %196)
  br label %199

198:                                              ; preds = %144
  br label %199

199:                                              ; preds = %198, %192
  %200 = phi i8* [ %197, %192 ], [ null, %198 ]
  %201 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %202 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %201, i32 0, i32 11
  store i8* %200, i8** %202, align 8
  %203 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %204 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %203, i32 0, i32 1
  %205 = load %struct.graph_column*, %struct.graph_column** %204, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %205, i64 %207
  %209 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %209, i32 0, i32 9
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %213 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %212, i32 0, i32 10
  store i8* %211, i8** %213, align 8
  %214 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %215 = load %struct.graph_row*, %struct.graph_row** %5, align 8
  %216 = load i32, i32* %12, align 4
  %217 = call i32 @new_column(%struct.graph_row* %214, %struct.graph_row* %215, i32 %216)
  %218 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %219 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %218, i32 0, i32 8
  store i32 %217, i32* %219, align 8
  %220 = load %struct.graph_row*, %struct.graph_row** %6, align 8
  %221 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %220, i32 0, i32 1
  %222 = load %struct.graph_column*, %struct.graph_column** %221, align 8
  %223 = load i32, i32* %12, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %222, i64 %224
  %226 = call i64 @graph_column_has_commit(%struct.graph_column* %225)
  %227 = icmp ne i64 %226, 0
  %228 = xor i1 %227, true
  %229 = zext i1 %228 to i32
  %230 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %231 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %230, i32 0, i32 6
  store i32 %229, i32* %231, align 8
  %232 = load %struct.graph_column*, %struct.graph_column** %13, align 8
  %233 = call i64 @graph_column_has_commit(%struct.graph_column* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %199
  %236 = load %struct.graph_column*, %struct.graph_column** %13, align 8
  %237 = getelementptr inbounds %struct.graph_column, %struct.graph_column* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  store i8* %238, i8** %15, align 8
  br label %239

239:                                              ; preds = %235, %199
  %240 = load %struct.graph_v2*, %struct.graph_v2** %3, align 8
  %241 = load i8*, i8** %15, align 8
  %242 = call i32 @get_color(%struct.graph_v2* %240, i8* %241)
  %243 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %244 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %243, i32 0, i32 7
  store i32 %242, i32* %244, align 4
  %245 = load %struct.graph_v2*, %struct.graph_v2** %3, align 8
  %246 = load %struct.graph_canvas*, %struct.graph_canvas** %4, align 8
  %247 = load %struct.graph_symbol*, %struct.graph_symbol** %14, align 8
  %248 = call i32 @graph_canvas_append_symbol(%struct.graph_v2* %245, %struct.graph_canvas* %246, %struct.graph_symbol* %247)
  br label %249

249:                                              ; preds = %239
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %12, align 4
  br label %32

252:                                              ; preds = %32
  %253 = load %struct.graph_v2*, %struct.graph_v2** %3, align 8
  %254 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %253, i32 0, i32 2
  %255 = load %struct.graph_v2*, %struct.graph_v2** %3, align 8
  %256 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %255, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 @colors_remove_id(i32* %254, i8* %257)
  ret void
}

declare dso_local i32 @commits_in_row(%struct.graph_row*) #1

declare dso_local i8* @continued_down(%struct.graph_row*, %struct.graph_row*, i32) #1

declare dso_local i8* @continued_right(%struct.graph_row*, i32, i32) #1

declare dso_local i8* @continued_left(%struct.graph_row*, i32, i32) #1

declare dso_local i32 @parent_down(%struct.graph_row*, %struct.graph_row*, i32) #1

declare dso_local i64 @parent_right(%struct.graph_row*, %struct.graph_row*, %struct.graph_row*, i32) #1

declare dso_local i32 @below_commit(i32, %struct.graph_v2*) #1

declare dso_local i32 @flanked(%struct.graph_row*, i32, i32, i8*) #1

declare dso_local i8* @shift_left(%struct.graph_row*, %struct.graph_row*, i32) #1

declare dso_local i32 @new_column(%struct.graph_row*, %struct.graph_row*, i32) #1

declare dso_local i64 @graph_column_has_commit(%struct.graph_column*) #1

declare dso_local i32 @get_color(%struct.graph_v2*, i8*) #1

declare dso_local i32 @graph_canvas_append_symbol(%struct.graph_v2*, %struct.graph_canvas*, %struct.graph_symbol*) #1

declare dso_local i32 @colors_remove_id(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
