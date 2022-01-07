; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_RTFSpecialCharHook.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_RTFSpecialCharHook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, i32, i8, i32, %struct.TYPE_28__*, i32, %struct.TYPE_34__*, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_29__*, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_37__*, i32, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__, %struct.TYPE_30__ }
%struct.TYPE_31__ = type { i32, %struct.TYPE_36__, i32, %struct.TYPE_37__*, %struct.TYPE_37__* }
%struct.TYPE_36__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_37__*, i32, i32 }
%struct.TYPE_34__ = type { i32, i32, i32, i32, i32, %struct.TYPE_34__*, %struct.TYPE_37__*, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32, i32 }

@MEPF_ROWEND = common dso_local global i32 0, align 4
@PFM_TABLE = common dso_local global i32 0, align 4
@PFE_TABLE = common dso_local global i32 0, align 4
@diCell = common dso_local global i32 0, align 4
@diRun = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MAX_TAB_STOPS = common dso_local global i32 0, align 4
@rtfText = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_RTFSpecialCharHook(%struct.TYPE_33__* %0) #0 {
  %2 = alloca %struct.TYPE_33__*, align 8
  %3 = alloca %struct.TYPE_34__*, align 8
  %4 = alloca %struct.TYPE_37__*, align 8
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.TYPE_37__*, align 8
  %9 = alloca %struct.TYPE_37__*, align 8
  %10 = alloca %struct.TYPE_37__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_35__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca %struct.TYPE_37__*, align 8
  %19 = alloca %struct.TYPE_36__*, align 8
  %20 = alloca i8, align 1
  %21 = alloca %struct.TYPE_37__*, align 8
  %22 = alloca %struct.TYPE_36__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %2, align 8
  %23 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %23, i32 0, i32 6
  %25 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  store %struct.TYPE_34__* %25, %struct.TYPE_34__** %3, align 8
  %26 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %639 [
    i32 132, label %29
    i32 133, label %38
    i32 131, label %145
    i32 129, label %154
    i32 128, label %584
    i32 130, label %584
  ]

29:                                               ; preds = %1
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %639

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %1, %37
  %39 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %40 = icmp ne %struct.TYPE_34__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  br label %639

42:                                               ; preds = %38
  %43 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %44 = call i32 @RTFFlushOutputBuffer(%struct.TYPE_33__* %43)
  %45 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %97, label %51

51:                                               ; preds = %42
  %52 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 6
  %54 = load %struct.TYPE_37__*, %struct.TYPE_37__** %53, align 8
  %55 = icmp ne %struct.TYPE_37__* %54, null
  br i1 %55, label %56, label %96

56:                                               ; preds = %51
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %91, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %62, i32 0, i32 6
  %64 = load %struct.TYPE_37__*, %struct.TYPE_37__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MEPF_ROWEND, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %61
  %73 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %73, i32 0, i32 6
  %75 = load %struct.TYPE_37__*, %struct.TYPE_37__** %74, align 8
  store %struct.TYPE_37__* %75, %struct.TYPE_37__** %4, align 8
  %76 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_37__*, %struct.TYPE_37__** %79, align 8
  store %struct.TYPE_37__* %80, %struct.TYPE_37__** %4, align 8
  %81 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %82, align 8
  %84 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %85 = call %struct.TYPE_37__* @ME_InsertTableRowStartAtParagraph(%struct.TYPE_28__* %83, %struct.TYPE_37__* %84)
  store %struct.TYPE_37__* %85, %struct.TYPE_37__** %4, align 8
  %86 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %87 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %87, i32 0, i32 6
  store %struct.TYPE_37__* %86, %struct.TYPE_37__** %88, align 8
  %89 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %72, %61, %56
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %93, align 8
  %95 = call %struct.TYPE_37__* @ME_InsertTableCellFromCursor(%struct.TYPE_28__* %94)
  br label %96

96:                                               ; preds = %91, %51
  br label %144

97:                                               ; preds = %42
  %98 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_37__*, %struct.TYPE_37__** %104, align 8
  store %struct.TYPE_37__* %105, %struct.TYPE_37__** %5, align 8
  %106 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 1
  store %struct.TYPE_36__* %109, %struct.TYPE_36__** %6, align 8
  %110 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @PFM_TABLE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %143

116:                                              ; preds = %97
  %117 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @PFE_TABLE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %116
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %123
  store i8 9, i8* %7, align 1
  %132 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %133, align 8
  %135 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @ME_InsertTextFromCursor(%struct.TYPE_28__* %134, i32 0, i8* %7, i32 1, i32 %137)
  %139 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %131, %123, %116, %97
  br label %144

144:                                              ; preds = %143, %96
  br label %639

145:                                              ; preds = %1
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i32 0, i32 4
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %639

153:                                              ; preds = %145
  br label %154

154:                                              ; preds = %1, %153
  %155 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %156 = icmp ne %struct.TYPE_34__* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  br label %639

158:                                              ; preds = %154
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %160 = call i32 @RTFFlushOutputBuffer(%struct.TYPE_33__* %159)
  %161 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %498, label %167

167:                                              ; preds = %158
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %168, i32 0, i32 6
  %170 = load %struct.TYPE_37__*, %struct.TYPE_37__** %169, align 8
  %171 = icmp ne %struct.TYPE_37__* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  br label %639

173:                                              ; preds = %167
  %174 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %210, label %178

178:                                              ; preds = %173
  %179 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %179, i32 0, i32 6
  %181 = load %struct.TYPE_37__*, %struct.TYPE_37__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @MEPF_ROWEND, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %210

189:                                              ; preds = %178
  %190 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %190, i32 0, i32 6
  %192 = load %struct.TYPE_37__*, %struct.TYPE_37__** %191, align 8
  store %struct.TYPE_37__* %192, %struct.TYPE_37__** %8, align 8
  %193 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %195, i32 0, i32 4
  %197 = load %struct.TYPE_37__*, %struct.TYPE_37__** %196, align 8
  store %struct.TYPE_37__* %197, %struct.TYPE_37__** %8, align 8
  %198 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %199, align 8
  %201 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %202 = call %struct.TYPE_37__* @ME_InsertTableRowStartAtParagraph(%struct.TYPE_28__* %200, %struct.TYPE_37__* %201)
  store %struct.TYPE_37__* %202, %struct.TYPE_37__** %8, align 8
  %203 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %204 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %204, i32 0, i32 6
  store %struct.TYPE_37__* %203, %struct.TYPE_37__** %205, align 8
  %206 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %189, %178, %173
  %211 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %211, i32 0, i32 6
  %213 = load %struct.TYPE_37__*, %struct.TYPE_37__** %212, align 8
  store %struct.TYPE_37__* %213, %struct.TYPE_37__** %8, align 8
  %214 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %215 = load i32, i32* @diCell, align 4
  %216 = call %struct.TYPE_37__* @ME_FindItemFwd(%struct.TYPE_37__* %214, i32 %215)
  store %struct.TYPE_37__* %216, %struct.TYPE_37__** %9, align 8
  %217 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %218 = icmp ne %struct.TYPE_37__* %217, null
  br i1 %218, label %219, label %227

219:                                              ; preds = %210
  %220 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  %226 = xor i1 %225, true
  br label %227

227:                                              ; preds = %219, %210
  %228 = phi i1 [ false, %210 ], [ %226, %219 ]
  %229 = zext i1 %228 to i32
  %230 = call i32 @assert(i32 %229)
  %231 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp slt i32 %233, 1
  br i1 %234, label %235, label %276

235:                                              ; preds = %227
  store i32 2000, i32* %12, align 4
  store i32 2000, i32* %13, align 4
  %236 = load i32, i32* %13, align 4
  %237 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %239, i32 0, i32 0
  store i32 %236, i32* %240, align 8
  br label %241

241:                                              ; preds = %248, %235
  %242 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_37__*, %struct.TYPE_37__** %245, align 8
  %247 = icmp ne %struct.TYPE_37__* %246, null
  br i1 %247, label %248, label %261

248:                                              ; preds = %241
  %249 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_37__*, %struct.TYPE_37__** %252, align 8
  store %struct.TYPE_37__* %253, %struct.TYPE_37__** %9, align 8
  %254 = load i32, i32* %13, align 4
  %255 = add nsw i32 %254, 2000
  store i32 %255, i32* %13, align 4
  %256 = load i32, i32* %13, align 4
  %257 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %259, i32 0, i32 0
  store i32 %256, i32* %260, align 8
  br label %241

261:                                              ; preds = %241
  %262 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %262, i32 0, i32 4
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %263, align 8
  %265 = call %struct.TYPE_37__* @ME_InsertTableCellFromCursor(%struct.TYPE_28__* %264)
  store %struct.TYPE_37__* %265, %struct.TYPE_37__** %8, align 8
  %266 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %268, i32 0, i32 3
  %270 = load %struct.TYPE_37__*, %struct.TYPE_37__** %269, align 8
  store %struct.TYPE_37__* %270, %struct.TYPE_37__** %9, align 8
  %271 = load i32, i32* %13, align 4
  %272 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %274, i32 0, i32 0
  store i32 %271, i32* %275, align 8
  br label %341

276:                                              ; preds = %227
  store i32 0, i32* %11, align 4
  br label %277

277:                                              ; preds = %324, %276
  %278 = load i32, i32* %11, align 4
  %279 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = icmp slt i32 %278, %281
  br i1 %282, label %283, label %327

283:                                              ; preds = %277
  %284 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %284, i32 0, i32 7
  %286 = load %struct.TYPE_35__*, %struct.TYPE_35__** %285, align 8
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %286, i64 %288
  store %struct.TYPE_35__* %289, %struct.TYPE_35__** %14, align 8
  %290 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %291 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %295, i32 0, i32 0
  store i32 %292, i32* %296, align 8
  %297 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %298 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %300, i32 0, i32 2
  %302 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %303 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @ME_ApplyBorderProperties(%struct.TYPE_33__* %297, i32* %301, i32 %304)
  %306 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %307 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_37__*, %struct.TYPE_37__** %309, align 8
  store %struct.TYPE_37__* %310, %struct.TYPE_37__** %9, align 8
  %311 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %312 = icmp ne %struct.TYPE_37__* %311, null
  br i1 %312, label %323, label %313

313:                                              ; preds = %283
  %314 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %314, i32 0, i32 4
  %316 = load %struct.TYPE_28__*, %struct.TYPE_28__** %315, align 8
  %317 = call %struct.TYPE_37__* @ME_InsertTableCellFromCursor(%struct.TYPE_28__* %316)
  store %struct.TYPE_37__* %317, %struct.TYPE_37__** %8, align 8
  %318 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %320, i32 0, i32 3
  %322 = load %struct.TYPE_37__*, %struct.TYPE_37__** %321, align 8
  store %struct.TYPE_37__* %322, %struct.TYPE_37__** %9, align 8
  br label %323

323:                                              ; preds = %313, %283
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %11, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %11, align 4
  br label %277

327:                                              ; preds = %277
  %328 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %328, i32 0, i32 7
  %330 = load %struct.TYPE_35__*, %struct.TYPE_35__** %329, align 8
  %331 = load i32, i32* %11, align 4
  %332 = sub nsw i32 %331, 1
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %330, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %338 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %339, i32 0, i32 0
  store i32 %336, i32* %340, align 8
  br label %341

341:                                              ; preds = %327, %261
  %342 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %343 = load i32, i32* @diRun, align 4
  %344 = call %struct.TYPE_37__* @ME_FindItemFwd(%struct.TYPE_37__* %342, i32 %343)
  store %struct.TYPE_37__* %344, %struct.TYPE_37__** %10, align 8
  %345 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %346 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %345, i32 0, i32 4
  %347 = load %struct.TYPE_28__*, %struct.TYPE_28__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_29__*, %struct.TYPE_29__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %349, i64 0
  %351 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %350, i32 0, i32 2
  %352 = load %struct.TYPE_37__*, %struct.TYPE_37__** %351, align 8
  %353 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %354 = icmp ne %struct.TYPE_37__* %352, %353
  br i1 %354, label %365, label %355

355:                                              ; preds = %341
  %356 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %357 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %356, i32 0, i32 4
  %358 = load %struct.TYPE_28__*, %struct.TYPE_28__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %358, i32 0, i32 0
  %360 = load %struct.TYPE_29__*, %struct.TYPE_29__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %360, i64 0
  %362 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %418

365:                                              ; preds = %355, %341
  %366 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %367 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %368 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %367, i32 0, i32 4
  %369 = load %struct.TYPE_28__*, %struct.TYPE_28__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %369, i32 0, i32 0
  %371 = load %struct.TYPE_29__*, %struct.TYPE_29__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %371, i64 1
  %373 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %372, i32 0, i32 2
  store %struct.TYPE_37__* %366, %struct.TYPE_37__** %373, align 8
  %374 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %375 = call %struct.TYPE_37__* @ME_GetParagraph(%struct.TYPE_37__* %374)
  %376 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %377 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %376, i32 0, i32 4
  %378 = load %struct.TYPE_28__*, %struct.TYPE_28__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_29__*, %struct.TYPE_29__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %380, i64 1
  %382 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %381, i32 0, i32 0
  store %struct.TYPE_37__* %375, %struct.TYPE_37__** %382, align 8
  %383 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %384 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %383, i32 0, i32 4
  %385 = load %struct.TYPE_28__*, %struct.TYPE_28__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_29__*, %struct.TYPE_29__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %387, i64 1
  %389 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %388, i32 0, i32 1
  store i32 0, i32* %389, align 8
  %390 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %391 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %390, i32 0, i32 4
  %392 = load %struct.TYPE_28__*, %struct.TYPE_28__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %392, i32 0, i32 0
  %394 = load %struct.TYPE_29__*, %struct.TYPE_29__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %394, i64 1
  %396 = call i32 @ME_GetCursorOfs(%struct.TYPE_29__* %395)
  store i32 %396, i32* %15, align 4
  %397 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %398 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %397, i32 0, i32 4
  %399 = load %struct.TYPE_28__*, %struct.TYPE_28__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %399, i32 0, i32 0
  %401 = load %struct.TYPE_29__*, %struct.TYPE_29__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %401, i64 0
  %403 = call i32 @ME_GetCursorOfs(%struct.TYPE_29__* %402)
  %404 = load i32, i32* %15, align 4
  %405 = sub nsw i32 %403, %404
  store i32 %405, i32* %16, align 4
  %406 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %407 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %406, i32 0, i32 4
  %408 = load %struct.TYPE_28__*, %struct.TYPE_28__** %407, align 8
  %409 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %410 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %409, i32 0, i32 4
  %411 = load %struct.TYPE_28__*, %struct.TYPE_28__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %411, i32 0, i32 0
  %413 = load %struct.TYPE_29__*, %struct.TYPE_29__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %413, i64 1
  %415 = load i32, i32* %16, align 4
  %416 = load i32, i32* @TRUE, align 4
  %417 = call i32 @ME_InternalDeleteText(%struct.TYPE_28__* %408, %struct.TYPE_29__* %414, i32 %415, i32 %416)
  br label %418

418:                                              ; preds = %365, %355
  %419 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %420 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %419, i32 0, i32 4
  %421 = load %struct.TYPE_28__*, %struct.TYPE_28__** %420, align 8
  %422 = call %struct.TYPE_37__* @ME_InsertTableRowEndFromCursor(%struct.TYPE_28__* %421)
  store %struct.TYPE_37__* %422, %struct.TYPE_37__** %8, align 8
  %423 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %424 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %423, i32 0, i32 6
  %425 = load %struct.TYPE_34__*, %struct.TYPE_34__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %425, i32 0, i32 4
  %427 = load i32, i32* %426, align 8
  %428 = call i32 @abs(i32 %427) #3
  %429 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %430 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %432, i32 0, i32 4
  store i32 %428, i32* %433, align 4
  %434 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %435 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %434, i32 0, i32 6
  %436 = load %struct.TYPE_34__*, %struct.TYPE_34__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %440 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %442, i32 0, i32 3
  store i32 %438, i32* %443, align 4
  %444 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %445 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %446 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %447, i32 0, i32 2
  %449 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %450 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = call i32 @ME_ApplyBorderProperties(%struct.TYPE_33__* %444, i32* %448, i32 %451)
  %453 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %454 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = add nsw i32 %455, -1
  store i32 %456, i32* %454, align 4
  %457 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %458 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %489, label %461

461:                                              ; preds = %418
  %462 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %463 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %462, i32 0, i32 7
  %464 = load i32, i32* %463, align 8
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %470

466:                                              ; preds = %461
  %467 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %468 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %469 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %468, i32 0, i32 6
  store %struct.TYPE_37__* %467, %struct.TYPE_37__** %469, align 8
  br label %488

470:                                              ; preds = %461
  br label %471

471:                                              ; preds = %476, %470
  %472 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %473 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %472, i32 0, i32 6
  %474 = load %struct.TYPE_34__*, %struct.TYPE_34__** %473, align 8
  %475 = icmp ne %struct.TYPE_34__* %474, null
  br i1 %475, label %476, label %487

476:                                              ; preds = %471
  %477 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %478 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %477, i32 0, i32 6
  %479 = load %struct.TYPE_34__*, %struct.TYPE_34__** %478, align 8
  store %struct.TYPE_34__* %479, %struct.TYPE_34__** %3, align 8
  %480 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %481 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %480, i32 0, i32 5
  %482 = load %struct.TYPE_34__*, %struct.TYPE_34__** %481, align 8
  %483 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %484 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %483, i32 0, i32 6
  store %struct.TYPE_34__* %482, %struct.TYPE_34__** %484, align 8
  %485 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %486 = call i32 @heap_free(%struct.TYPE_34__* %485)
  br label %471

487:                                              ; preds = %471
  br label %488

488:                                              ; preds = %487, %466
  br label %497

489:                                              ; preds = %418
  %490 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %491 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %490, i32 0, i32 5
  %492 = load %struct.TYPE_34__*, %struct.TYPE_34__** %491, align 8
  %493 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %494 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %493, i32 0, i32 6
  store %struct.TYPE_34__* %492, %struct.TYPE_34__** %494, align 8
  %495 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %496 = call i32 @heap_free(%struct.TYPE_34__* %495)
  br label %497

497:                                              ; preds = %489, %488
  br label %583

498:                                              ; preds = %158
  store i8 13, i8* %17, align 1
  %499 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %500 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %499, i32 0, i32 4
  %501 = load %struct.TYPE_28__*, %struct.TYPE_28__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %501, i32 0, i32 0
  %503 = load %struct.TYPE_29__*, %struct.TYPE_29__** %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %503, i64 0
  %505 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %504, i32 0, i32 0
  %506 = load %struct.TYPE_37__*, %struct.TYPE_37__** %505, align 8
  store %struct.TYPE_37__* %506, %struct.TYPE_37__** %18, align 8
  %507 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %508 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %508, i32 0, i32 0
  %510 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %509, i32 0, i32 1
  store %struct.TYPE_36__* %510, %struct.TYPE_36__** %19, align 8
  %511 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %512 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %511, i32 0, i32 6
  %513 = load %struct.TYPE_34__*, %struct.TYPE_34__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %513, i32 0, i32 4
  %515 = load i32, i32* %514, align 8
  %516 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %517 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %516, i32 0, i32 4
  store i32 %515, i32* %517, align 4
  %518 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %519 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %518, i32 0, i32 6
  %520 = load %struct.TYPE_34__*, %struct.TYPE_34__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %520, i32 0, i32 3
  %522 = load i32, i32* %521, align 4
  %523 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %524 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %523, i32 0, i32 3
  store i32 %522, i32* %524, align 4
  %525 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %526 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %527 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %527, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %528, i32 0, i32 2
  %530 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %531 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %530, i32 0, i32 2
  %532 = load i32, i32* %531, align 8
  %533 = call i32 @ME_ApplyBorderProperties(%struct.TYPE_33__* %525, i32* %529, i32 %532)
  br label %534

534:                                              ; preds = %542, %498
  %535 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %536 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %539 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %538, i32 0, i32 1
  %540 = load i32, i32* %539, align 4
  %541 = icmp slt i32 %537, %540
  br i1 %541, label %542, label %554

542:                                              ; preds = %534
  store i8 9, i8* %20, align 1
  %543 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %544 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %543, i32 0, i32 4
  %545 = load %struct.TYPE_28__*, %struct.TYPE_28__** %544, align 8
  %546 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %547 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %546, i32 0, i32 5
  %548 = load i32, i32* %547, align 8
  %549 = call i32 @ME_InsertTextFromCursor(%struct.TYPE_28__* %545, i32 0, i8* %20, i32 1, i32 %548)
  %550 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %551 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 8
  %553 = add nsw i32 %552, 1
  store i32 %553, i32* %551, align 8
  br label %534

554:                                              ; preds = %534
  %555 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %556 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %555, i32 0, i32 1
  %557 = load i32, i32* %556, align 4
  %558 = load i32, i32* @MAX_TAB_STOPS, align 4
  %559 = call i32 @min(i32 %557, i32 %558)
  %560 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %561 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %560, i32 0, i32 2
  store i32 %559, i32* %561, align 4
  %562 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %563 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %562, i32 0, i32 1
  %564 = load i32, i32* %563, align 4
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %573, label %566

566:                                              ; preds = %554
  %567 = load i32, i32* @PFE_TABLE, align 4
  %568 = xor i32 %567, -1
  %569 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %570 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %569, i32 0, i32 1
  %571 = load i32, i32* %570, align 4
  %572 = and i32 %571, %568
  store i32 %572, i32* %570, align 4
  br label %573

573:                                              ; preds = %566, %554
  %574 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %575 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %574, i32 0, i32 4
  %576 = load %struct.TYPE_28__*, %struct.TYPE_28__** %575, align 8
  %577 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %578 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %577, i32 0, i32 5
  %579 = load i32, i32* %578, align 8
  %580 = call i32 @ME_InsertTextFromCursor(%struct.TYPE_28__* %576, i32 0, i8* %17, i32 1, i32 %579)
  %581 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %582 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %581, i32 0, i32 0
  store i32 0, i32* %582, align 8
  br label %583

583:                                              ; preds = %573, %497
  br label %639

584:                                              ; preds = %1, %1
  %585 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %586 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %585, i32 0, i32 4
  %587 = load %struct.TYPE_28__*, %struct.TYPE_28__** %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %587, i32 0, i32 1
  %589 = load i32, i32* %588, align 8
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %591, label %638

591:                                              ; preds = %584
  %592 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %593 = call i32 @RTFFlushOutputBuffer(%struct.TYPE_33__* %592)
  %594 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %595 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %594, i32 0, i32 4
  %596 = load %struct.TYPE_28__*, %struct.TYPE_28__** %595, align 8
  %597 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %596, i32 0, i32 0
  %598 = load %struct.TYPE_29__*, %struct.TYPE_29__** %597, align 8
  %599 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %598, i64 0
  %600 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %599, i32 0, i32 0
  %601 = load %struct.TYPE_37__*, %struct.TYPE_37__** %600, align 8
  store %struct.TYPE_37__* %601, %struct.TYPE_37__** %21, align 8
  %602 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %603 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %602, i32 0, i32 0
  %604 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %603, i32 0, i32 0
  %605 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %604, i32 0, i32 1
  store %struct.TYPE_36__* %605, %struct.TYPE_36__** %22, align 8
  %606 = load %struct.TYPE_36__*, %struct.TYPE_36__** %22, align 8
  %607 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %606, i32 0, i32 0
  %608 = load i32, i32* %607, align 4
  %609 = load i32, i32* @PFM_TABLE, align 4
  %610 = and i32 %608, %609
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %625

612:                                              ; preds = %591
  %613 = load %struct.TYPE_36__*, %struct.TYPE_36__** %22, align 8
  %614 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %613, i32 0, i32 1
  %615 = load i32, i32* %614, align 4
  %616 = load i32, i32* @PFE_TABLE, align 4
  %617 = and i32 %615, %616
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %619, label %625

619:                                              ; preds = %612
  %620 = load i32, i32* @rtfText, align 4
  %621 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %622 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %621, i32 0, i32 3
  store i32 %620, i32* %622, align 4
  %623 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %624 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %623, i32 0, i32 2
  store i8 32, i8* %624, align 8
  br label %637

625:                                              ; preds = %612, %591
  %626 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %627 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %626, i32 0, i32 0
  %628 = load i32, i32* %627, align 8
  %629 = icmp eq i32 %628, 130
  br i1 %629, label %630, label %636

630:                                              ; preds = %625
  %631 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %632 = icmp ne %struct.TYPE_34__* %631, null
  br i1 %632, label %633, label %636

633:                                              ; preds = %630
  %634 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %635 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %634, i32 0, i32 0
  store i32 0, i32* %635, align 8
  br label %636

636:                                              ; preds = %633, %630, %625
  br label %637

637:                                              ; preds = %636, %619
  br label %638

638:                                              ; preds = %637, %584
  br label %639

639:                                              ; preds = %1, %638, %583, %172, %157, %152, %144, %41, %36
  ret void
}

declare dso_local i32 @RTFFlushOutputBuffer(%struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_37__* @ME_InsertTableRowStartAtParagraph(%struct.TYPE_28__*, %struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_37__* @ME_InsertTableCellFromCursor(%struct.TYPE_28__*) #1

declare dso_local i32 @ME_InsertTextFromCursor(%struct.TYPE_28__*, i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_37__* @ME_FindItemFwd(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ME_ApplyBorderProperties(%struct.TYPE_33__*, i32*, i32) #1

declare dso_local %struct.TYPE_37__* @ME_GetParagraph(%struct.TYPE_37__*) #1

declare dso_local i32 @ME_GetCursorOfs(%struct.TYPE_29__*) #1

declare dso_local i32 @ME_InternalDeleteText(%struct.TYPE_28__*, %struct.TYPE_29__*, i32, i32) #1

declare dso_local %struct.TYPE_37__* @ME_InsertTableRowEndFromCursor(%struct.TYPE_28__*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @heap_free(%struct.TYPE_34__*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
