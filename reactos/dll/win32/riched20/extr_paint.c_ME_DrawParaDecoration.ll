; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_ME_DrawParaDecoration.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_ME_DrawParaDecoration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_24__, %struct.TYPE_23__*, %struct.TYPE_21__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_22__, i32, i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32 }

@PFM_BORDER = common dso_local global i32 0, align 4
@PFM_SPACEBEFORE = common dso_local global i32 0, align 4
@PFM_SPACEAFTER = common dso_local global i32 0, align 4
@PFM_TABLE = common dso_local global i32 0, align 4
@PFE_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported border flags %x\0A\00", align 1
@COLOR_WINDOWTEXT = common dso_local global i32 0, align 4
@pen_colors = common dso_local global i32* null, align 8
@border_details = common dso_local global %struct.TYPE_20__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, %struct.TYPE_28__*, i32, %struct.TYPE_26__*)* @ME_DrawParaDecoration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ME_DrawParaDecoration(%struct.TYPE_29__* %0, %struct.TYPE_28__* %1, i32 %2, %struct.TYPE_26__* %3) #0 {
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_26__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_27__, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_26__* %3, %struct.TYPE_26__** %8, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %22 = call i32 @SetRectEmpty(%struct.TYPE_26__* %21)
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PFM_BORDER, align 4
  %28 = load i32, i32* @PFM_SPACEBEFORE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PFM_SPACEAFTER, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %26, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  br label %818

35:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 15
  store i32 %41, i32* %9, align 4
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %35
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PFM_TABLE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PFE_TABLE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %56, %48, %35
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PFM_BORDER, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %64
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 15
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %75, %72, %64, %56
  %83 = phi i1 [ false, %72 ], [ false, %64 ], [ false, %56 ], [ %81, %75 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %125

87:                                               ; preds = %82
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 176
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %94, %87
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ME_GetParaBorderWidth(%struct.TYPE_29__* %101, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %100
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %113, %100
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %122, %115
  br label %125

125:                                              ; preds = %124, %82
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PFM_SPACEBEFORE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %172

133:                                              ; preds = %125
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  store i32 %137, i32* %138, align 4
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* %7, align 4
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 2
  store i32 %144, i32* %145, align 4
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @ME_twips2pointsY(%struct.TYPE_29__* %146, i32 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %155, %158
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %159, %160
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 3
  store i32 %161, i32* %162, align 4
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @FillRect(i32 %165, %struct.TYPE_26__* %13, i32 %170)
  br label %172

172:                                              ; preds = %133, %125
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @PFM_SPACEAFTER, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %224

180:                                              ; preds = %172
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  store i32 %184, i32* %185, align 4
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  store i32 %189, i32* %190, align 4
  %191 = load i32, i32* %7, align 4
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %191, %194
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 3
  store i32 %195, i32* %196, align 4
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = call i8* @ME_twips2pointsY(%struct.TYPE_29__* %197, i32 %201)
  %203 = ptrtoint i8* %202 to i32
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 4
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %207, %210
  %212 = load i32, i32* %12, align 4
  %213 = sub nsw i32 %211, %212
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 2
  store i32 %213, i32* %214, align 4
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @FillRect(i32 %217, %struct.TYPE_26__* %13, i32 %222)
  br label %224

224:                                              ; preds = %180, %172
  %225 = load i32, i32* %14, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %818

227:                                              ; preds = %224
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, 64
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %227
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @COLOR_WINDOWTEXT, align 4
  %241 = call i32 @ITextHost_TxGetSysColor(i32 %239, i32 %240)
  store i32 %241, i32* %17, align 4
  br label %253

242:                                              ; preds = %227
  %243 = load i32*, i32** @pen_colors, align 8
  %244 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = ashr i32 %247, 12
  %249 = and i32 %248, 15
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %243, i64 %250
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %17, align 4
  br label %253

253:                                              ; preds = %242, %234
  %254 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @max(i32 %263, i32 %268)
  %270 = add nsw i32 %257, %269
  store i32 %270, i32* %16, align 4
  %271 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %272 = load i32, i32* %9, align 4
  %273 = call i32 @ME_GetBorderPenWidth(%struct.TYPE_29__* %271, i32 %272)
  store i32 %273, i32* %15, align 4
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** @border_details, align 8
  %275 = load i32, i32* %9, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* %15, align 4
  %281 = load i32, i32* %17, align 4
  %282 = call i32* @CreatePen(i32 %279, i32 %280, i32 %281)
  store i32* %282, i32** %18, align 8
  %283 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32*, i32** %18, align 8
  %287 = call i32* @SelectObject(i32 %285, i32* %286)
  store i32* %287, i32** %19, align 8
  %288 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @MoveToEx(i32 %290, i32 0, i32 0, %struct.TYPE_27__* %20)
  %292 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = and i32 %295, 1
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %441

298:                                              ; preds = %253
  %299 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %7, align 4
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %306, %309
  %311 = call i32 @MoveToEx(i32 %301, i32 %305, i32 %310, %struct.TYPE_27__* null)
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %7, align 4
  %320 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %319, %322
  %324 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 4
  %327 = sub nsw i32 %323, %326
  %328 = call i32 @LineTo(i32 %314, i32 %318, i32 %327)
  %329 = load %struct.TYPE_20__*, %struct.TYPE_20__** @border_details, align 8
  %330 = load i32, i32* %9, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %435

336:                                              ; preds = %298
  %337 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = add nsw i32 %340, 1
  %342 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  store i32 %341, i32* %342, align 4
  %343 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* %10, align 4
  %346 = add nsw i32 %344, %345
  %347 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  store i32 %346, i32* %347, align 4
  %348 = load i32, i32* %7, align 4
  %349 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 4
  %352 = add nsw i32 %348, %351
  %353 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 2
  store i32 %352, i32* %353, align 4
  %354 = load i32, i32* %7, align 4
  %355 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = add nsw i32 %354, %357
  %359 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  %362 = sub nsw i32 %358, %361
  %363 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 3
  store i32 %362, i32* %363, align 4
  %364 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %367, i32 0, i32 2
  %369 = load %struct.TYPE_23__*, %struct.TYPE_23__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = call i32 @FillRect(i32 %366, %struct.TYPE_26__* %13, i32 %371)
  %373 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* %15, align 4
  %381 = add nsw i32 %379, %380
  %382 = add nsw i32 %381, 1
  %383 = load i32, i32* %7, align 4
  %384 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %385 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = add nsw i32 %383, %386
  %388 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = and i32 %391, 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %397

394:                                              ; preds = %336
  %395 = load i32, i32* %15, align 4
  %396 = add nsw i32 %395, 1
  br label %398

397:                                              ; preds = %336
  br label %398

398:                                              ; preds = %397, %394
  %399 = phi i32 [ %396, %394 ], [ 0, %397 ]
  %400 = add nsw i32 %387, %399
  %401 = call i32 @MoveToEx(i32 %375, i32 %382, i32 %400, %struct.TYPE_27__* null)
  %402 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* %15, align 4
  %410 = add nsw i32 %408, %409
  %411 = add nsw i32 %410, 1
  %412 = load i32, i32* %7, align 4
  %413 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = add nsw i32 %412, %415
  %417 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %418 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 4
  %420 = sub nsw i32 %416, %419
  %421 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %422 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = and i32 %424, 8
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %430

427:                                              ; preds = %398
  %428 = load i32, i32* %15, align 4
  %429 = add nsw i32 %428, 1
  br label %431

430:                                              ; preds = %398
  br label %431

431:                                              ; preds = %430, %427
  %432 = phi i32 [ %429, %427 ], [ 0, %430 ]
  %433 = sub nsw i32 %420, %432
  %434 = call i32 @LineTo(i32 %404, i32 %411, i32 %433)
  br label %435

435:                                              ; preds = %431, %298
  %436 = load i32, i32* %10, align 4
  %437 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %438 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = add nsw i32 %439, %436
  store i32 %440, i32* %438, align 4
  br label %441

441:                                              ; preds = %435, %253
  %442 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %443 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 4
  %446 = and i32 %445, 2
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %582

448:                                              ; preds = %441
  %449 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %450 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* %16, align 4
  %453 = sub nsw i32 %452, 1
  %454 = load i32, i32* %7, align 4
  %455 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %456 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 4
  %458 = add nsw i32 %454, %457
  %459 = call i32 @MoveToEx(i32 %451, i32 %453, i32 %458, %struct.TYPE_27__* null)
  %460 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = load i32, i32* %16, align 4
  %464 = sub nsw i32 %463, 1
  %465 = load i32, i32* %7, align 4
  %466 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %467 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 4
  %469 = add nsw i32 %465, %468
  %470 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %471 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %470, i32 0, i32 3
  %472 = load i32, i32* %471, align 4
  %473 = sub nsw i32 %469, %472
  %474 = call i32 @LineTo(i32 %462, i32 %464, i32 %473)
  %475 = load %struct.TYPE_20__*, %struct.TYPE_20__** @border_details, align 8
  %476 = load i32, i32* %9, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %475, i64 %477
  %479 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %576

482:                                              ; preds = %448
  %483 = load i32, i32* %16, align 4
  %484 = load i32, i32* %15, align 4
  %485 = sub nsw i32 %483, %484
  %486 = sub nsw i32 %485, 1
  %487 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  store i32 %486, i32* %487, align 4
  %488 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %489 = load i32, i32* %488, align 4
  %490 = load i32, i32* %15, align 4
  %491 = add nsw i32 %489, %490
  %492 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  store i32 %491, i32* %492, align 4
  %493 = load i32, i32* %7, align 4
  %494 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %495 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %494, i32 0, i32 2
  %496 = load i32, i32* %495, align 4
  %497 = add nsw i32 %493, %496
  %498 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 2
  store i32 %497, i32* %498, align 4
  %499 = load i32, i32* %7, align 4
  %500 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %501 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 4
  %503 = add nsw i32 %499, %502
  %504 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %505 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %504, i32 0, i32 3
  %506 = load i32, i32* %505, align 4
  %507 = sub nsw i32 %503, %506
  %508 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 3
  store i32 %507, i32* %508, align 4
  %509 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %510 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %513 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %512, i32 0, i32 2
  %514 = load %struct.TYPE_23__*, %struct.TYPE_23__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = call i32 @FillRect(i32 %511, %struct.TYPE_26__* %13, i32 %516)
  %518 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %519 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = load i32, i32* %16, align 4
  %522 = sub nsw i32 %521, 1
  %523 = load i32, i32* %15, align 4
  %524 = sub nsw i32 %522, %523
  %525 = sub nsw i32 %524, 1
  %526 = load i32, i32* %7, align 4
  %527 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %528 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %527, i32 0, i32 2
  %529 = load i32, i32* %528, align 4
  %530 = add nsw i32 %526, %529
  %531 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %532 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %531, i32 0, i32 1
  %533 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %532, i32 0, i32 1
  %534 = load i32, i32* %533, align 4
  %535 = and i32 %534, 4
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %540

537:                                              ; preds = %482
  %538 = load i32, i32* %15, align 4
  %539 = add nsw i32 %538, 1
  br label %541

540:                                              ; preds = %482
  br label %541

541:                                              ; preds = %540, %537
  %542 = phi i32 [ %539, %537 ], [ 0, %540 ]
  %543 = add nsw i32 %530, %542
  %544 = call i32 @MoveToEx(i32 %520, i32 %525, i32 %543, %struct.TYPE_27__* null)
  %545 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %546 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  %548 = load i32, i32* %16, align 4
  %549 = sub nsw i32 %548, 1
  %550 = load i32, i32* %15, align 4
  %551 = sub nsw i32 %549, %550
  %552 = sub nsw i32 %551, 1
  %553 = load i32, i32* %7, align 4
  %554 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %555 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 4
  %557 = add nsw i32 %553, %556
  %558 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %559 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %558, i32 0, i32 3
  %560 = load i32, i32* %559, align 4
  %561 = sub nsw i32 %557, %560
  %562 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %563 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %562, i32 0, i32 1
  %564 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 4
  %566 = and i32 %565, 8
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %541
  %569 = load i32, i32* %15, align 4
  %570 = add nsw i32 %569, 1
  br label %572

571:                                              ; preds = %541
  br label %572

572:                                              ; preds = %571, %568
  %573 = phi i32 [ %570, %568 ], [ 0, %571 ]
  %574 = sub nsw i32 %561, %573
  %575 = call i32 @LineTo(i32 %547, i32 %552, i32 %574)
  br label %576

576:                                              ; preds = %572, %448
  %577 = load i32, i32* %10, align 4
  %578 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %579 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %578, i32 0, i32 1
  %580 = load i32, i32* %579, align 4
  %581 = add nsw i32 %580, %577
  store i32 %581, i32* %579, align 4
  br label %582

582:                                              ; preds = %576, %441
  %583 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %584 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %583, i32 0, i32 1
  %585 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %584, i32 0, i32 1
  %586 = load i32, i32* %585, align 4
  %587 = and i32 %586, 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %682

589:                                              ; preds = %582
  %590 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %591 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 8
  %593 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %594 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %593, i32 0, i32 1
  %595 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 4
  %597 = load i32, i32* %7, align 4
  %598 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %599 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %598, i32 0, i32 2
  %600 = load i32, i32* %599, align 4
  %601 = add nsw i32 %597, %600
  %602 = call i32 @MoveToEx(i32 %592, i32 %596, i32 %601, %struct.TYPE_27__* null)
  %603 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %604 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 8
  %606 = load i32, i32* %16, align 4
  %607 = load i32, i32* %7, align 4
  %608 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %609 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %608, i32 0, i32 2
  %610 = load i32, i32* %609, align 4
  %611 = add nsw i32 %607, %610
  %612 = call i32 @LineTo(i32 %605, i32 %606, i32 %611)
  %613 = load %struct.TYPE_20__*, %struct.TYPE_20__** @border_details, align 8
  %614 = load i32, i32* %9, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %613, i64 %615
  %617 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %616, i32 0, i32 0
  %618 = load i64, i64* %617, align 8
  %619 = icmp ne i64 %618, 0
  br i1 %619, label %620, label %676

620:                                              ; preds = %589
  %621 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %622 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 8
  %624 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %625 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %624, i32 0, i32 1
  %626 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 4
  %628 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %629 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %628, i32 0, i32 1
  %630 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %629, i32 0, i32 1
  %631 = load i32, i32* %630, align 4
  %632 = and i32 %631, 1
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %634, label %637

634:                                              ; preds = %620
  %635 = load i32, i32* %15, align 4
  %636 = add nsw i32 %635, 1
  br label %638

637:                                              ; preds = %620
  br label %638

638:                                              ; preds = %637, %634
  %639 = phi i32 [ %636, %634 ], [ 0, %637 ]
  %640 = add nsw i32 %627, %639
  %641 = load i32, i32* %7, align 4
  %642 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %643 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %642, i32 0, i32 2
  %644 = load i32, i32* %643, align 4
  %645 = add nsw i32 %641, %644
  %646 = load i32, i32* %15, align 4
  %647 = add nsw i32 %645, %646
  %648 = add nsw i32 %647, 1
  %649 = call i32 @MoveToEx(i32 %623, i32 %640, i32 %648, %struct.TYPE_27__* null)
  %650 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %651 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %650, i32 0, i32 0
  %652 = load i32, i32* %651, align 8
  %653 = load i32, i32* %16, align 4
  %654 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %655 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %654, i32 0, i32 1
  %656 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %655, i32 0, i32 1
  %657 = load i32, i32* %656, align 4
  %658 = and i32 %657, 2
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %660, label %663

660:                                              ; preds = %638
  %661 = load i32, i32* %15, align 4
  %662 = add nsw i32 %661, 1
  br label %664

663:                                              ; preds = %638
  br label %664

664:                                              ; preds = %663, %660
  %665 = phi i32 [ %662, %660 ], [ 0, %663 ]
  %666 = sub nsw i32 %653, %665
  %667 = load i32, i32* %7, align 4
  %668 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %669 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %668, i32 0, i32 2
  %670 = load i32, i32* %669, align 4
  %671 = add nsw i32 %667, %670
  %672 = load i32, i32* %15, align 4
  %673 = add nsw i32 %671, %672
  %674 = add nsw i32 %673, 1
  %675 = call i32 @LineTo(i32 %652, i32 %666, i32 %674)
  br label %676

676:                                              ; preds = %664, %589
  %677 = load i32, i32* %10, align 4
  %678 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %679 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %678, i32 0, i32 2
  %680 = load i32, i32* %679, align 4
  %681 = add nsw i32 %680, %677
  store i32 %681, i32* %679, align 4
  br label %682

682:                                              ; preds = %676, %582
  %683 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %684 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %683, i32 0, i32 1
  %685 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %684, i32 0, i32 1
  %686 = load i32, i32* %685, align 4
  %687 = and i32 %686, 8
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %689, label %802

689:                                              ; preds = %682
  %690 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %691 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %690, i32 0, i32 0
  %692 = load i32, i32* %691, align 8
  %693 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %694 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %693, i32 0, i32 1
  %695 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %694, i32 0, i32 0
  %696 = load i32, i32* %695, align 4
  %697 = load i32, i32* %7, align 4
  %698 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %699 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %698, i32 0, i32 0
  %700 = load i32, i32* %699, align 4
  %701 = add nsw i32 %697, %700
  %702 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %703 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %702, i32 0, i32 3
  %704 = load i32, i32* %703, align 4
  %705 = sub nsw i32 %701, %704
  %706 = sub nsw i32 %705, 1
  %707 = call i32 @MoveToEx(i32 %692, i32 %696, i32 %706, %struct.TYPE_27__* null)
  %708 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %709 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %708, i32 0, i32 0
  %710 = load i32, i32* %709, align 8
  %711 = load i32, i32* %16, align 4
  %712 = load i32, i32* %7, align 4
  %713 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %714 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %713, i32 0, i32 0
  %715 = load i32, i32* %714, align 4
  %716 = add nsw i32 %712, %715
  %717 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %718 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %717, i32 0, i32 3
  %719 = load i32, i32* %718, align 4
  %720 = sub nsw i32 %716, %719
  %721 = sub nsw i32 %720, 1
  %722 = call i32 @LineTo(i32 %710, i32 %711, i32 %721)
  %723 = load %struct.TYPE_20__*, %struct.TYPE_20__** @border_details, align 8
  %724 = load i32, i32* %9, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %723, i64 %725
  %727 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %726, i32 0, i32 0
  %728 = load i64, i64* %727, align 8
  %729 = icmp ne i64 %728, 0
  br i1 %729, label %730, label %796

730:                                              ; preds = %689
  %731 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %732 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %731, i32 0, i32 0
  %733 = load i32, i32* %732, align 8
  %734 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %735 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %734, i32 0, i32 1
  %736 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %735, i32 0, i32 0
  %737 = load i32, i32* %736, align 4
  %738 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %739 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %738, i32 0, i32 1
  %740 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %739, i32 0, i32 1
  %741 = load i32, i32* %740, align 4
  %742 = and i32 %741, 1
  %743 = icmp ne i32 %742, 0
  br i1 %743, label %744, label %747

744:                                              ; preds = %730
  %745 = load i32, i32* %15, align 4
  %746 = add nsw i32 %745, 1
  br label %748

747:                                              ; preds = %730
  br label %748

748:                                              ; preds = %747, %744
  %749 = phi i32 [ %746, %744 ], [ 0, %747 ]
  %750 = add nsw i32 %737, %749
  %751 = load i32, i32* %7, align 4
  %752 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %753 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %752, i32 0, i32 0
  %754 = load i32, i32* %753, align 4
  %755 = add nsw i32 %751, %754
  %756 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %757 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %756, i32 0, i32 3
  %758 = load i32, i32* %757, align 4
  %759 = sub nsw i32 %755, %758
  %760 = sub nsw i32 %759, 1
  %761 = load i32, i32* %15, align 4
  %762 = sub nsw i32 %760, %761
  %763 = sub nsw i32 %762, 1
  %764 = call i32 @MoveToEx(i32 %733, i32 %750, i32 %763, %struct.TYPE_27__* null)
  %765 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %766 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %765, i32 0, i32 0
  %767 = load i32, i32* %766, align 8
  %768 = load i32, i32* %16, align 4
  %769 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %770 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %769, i32 0, i32 1
  %771 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %770, i32 0, i32 1
  %772 = load i32, i32* %771, align 4
  %773 = and i32 %772, 2
  %774 = icmp ne i32 %773, 0
  br i1 %774, label %775, label %778

775:                                              ; preds = %748
  %776 = load i32, i32* %15, align 4
  %777 = add nsw i32 %776, 1
  br label %779

778:                                              ; preds = %748
  br label %779

779:                                              ; preds = %778, %775
  %780 = phi i32 [ %777, %775 ], [ 0, %778 ]
  %781 = sub nsw i32 %768, %780
  %782 = load i32, i32* %7, align 4
  %783 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %784 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %783, i32 0, i32 0
  %785 = load i32, i32* %784, align 4
  %786 = add nsw i32 %782, %785
  %787 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %788 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %787, i32 0, i32 3
  %789 = load i32, i32* %788, align 4
  %790 = sub nsw i32 %786, %789
  %791 = sub nsw i32 %790, 1
  %792 = load i32, i32* %15, align 4
  %793 = sub nsw i32 %791, %792
  %794 = sub nsw i32 %793, 1
  %795 = call i32 @LineTo(i32 %767, i32 %781, i32 %794)
  br label %796

796:                                              ; preds = %779, %689
  %797 = load i32, i32* %10, align 4
  %798 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %799 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %798, i32 0, i32 3
  %800 = load i32, i32* %799, align 4
  %801 = add nsw i32 %800, %797
  store i32 %801, i32* %799, align 4
  br label %802

802:                                              ; preds = %796, %682
  %803 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %804 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %803, i32 0, i32 0
  %805 = load i32, i32* %804, align 8
  %806 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  %807 = load i32, i32* %806, align 4
  %808 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %809 = load i32, i32* %808, align 4
  %810 = call i32 @MoveToEx(i32 %805, i32 %807, i32 %809, %struct.TYPE_27__* null)
  %811 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %812 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %811, i32 0, i32 0
  %813 = load i32, i32* %812, align 8
  %814 = load i32*, i32** %19, align 8
  %815 = call i32* @SelectObject(i32 %813, i32* %814)
  %816 = load i32*, i32** %18, align 8
  %817 = call i32 @DeleteObject(i32* %816)
  br label %818

818:                                              ; preds = %34, %802, %224
  ret void
}

declare dso_local i32 @SetRectEmpty(%struct.TYPE_26__*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @ME_GetParaBorderWidth(%struct.TYPE_29__*, i32) #1

declare dso_local i8* @ME_twips2pointsY(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @ITextHost_TxGetSysColor(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ME_GetBorderPenWidth(%struct.TYPE_29__*, i32) #1

declare dso_local i32* @CreatePen(i32, i32, i32) #1

declare dso_local i32* @SelectObject(i32, i32*) #1

declare dso_local i32 @MoveToEx(i32, i32, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @LineTo(i32, i32, i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
