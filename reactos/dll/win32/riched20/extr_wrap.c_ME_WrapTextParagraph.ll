; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_ME_WrapTextParagraph.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_ME_WrapTextParagraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32 }
%struct.TYPE_40__ = type { %struct.TYPE_47__* }
%struct.TYPE_47__ = type { i64, i32 }
%struct.TYPE_39__ = type { i64, %struct.TYPE_48__, %struct.TYPE_39__* }
%struct.TYPE_48__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32, i64, i64, %struct.TYPE_50__, %struct.TYPE_39__*, %struct.TYPE_46__, i64 }
%struct.TYPE_50__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_51__ = type { i32, i32, i32, i32, i64, %struct.TYPE_49__, %struct.TYPE_39__*, i32*, %struct.TYPE_39__*, %struct.TYPE_40__* }
%struct.TYPE_49__ = type { i64 }
%struct.TYPE_44__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i64 }

@diParagraph = common dso_local global i64 0, align 8
@MEPF_REWRAP = common dso_local global i32 0, align 4
@MEPF_ROWEND = common dso_local global i32 0, align 4
@PFM_TABLE = common dso_local global i32 0, align 4
@PFE_TABLE = common dso_local global i32 0, align 4
@PFM_SPACEBEFORE = common dso_local global i32 0, align 4
@PFM_BORDER = common dso_local global i32 0, align 4
@diStartRow = common dso_local global i64 0, align 8
@diRun = common dso_local global i64 0, align 8
@PFM_SPACEAFTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_38__*, %struct.TYPE_40__*, %struct.TYPE_39__*)* @ME_WrapTextParagraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ME_WrapTextParagraph(%struct.TYPE_38__* %0, %struct.TYPE_40__* %1, %struct.TYPE_39__* %2) #0 {
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca %struct.TYPE_40__*, align 8
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca %struct.TYPE_39__*, align 8
  %8 = alloca %struct.TYPE_51__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_50__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %4, align 8
  store %struct.TYPE_40__* %1, %struct.TYPE_40__** %5, align 8
  store %struct.TYPE_39__* %2, %struct.TYPE_39__** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @diParagraph, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MEPF_REWRAP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %423

29:                                               ; preds = %3
  %30 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %31 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %32 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %33 = call i32 @ME_PrepareParagraphForWrapping(%struct.TYPE_38__* %30, %struct.TYPE_40__* %31, %struct.TYPE_39__* %32)
  %34 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %35 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %36, i32 0, i32 0
  %38 = call i32 @para_num_init(%struct.TYPE_40__* %34, %struct.TYPE_41__* %37)
  %39 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_47__*, %struct.TYPE_47__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %29
  %46 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %47 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %48 = call i32 @itemize_para(%struct.TYPE_40__* %46, %struct.TYPE_39__* %47)
  %49 = call i64 @SUCCEEDED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %53 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %54 = call i32 @shape_para(%struct.TYPE_40__* %52, %struct.TYPE_39__* %53)
  br label %55

55:                                               ; preds = %51, %45
  br label %56

56:                                               ; preds = %55, %29
  %57 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %59, i32 0, i32 3
  store %struct.TYPE_50__* %60, %struct.TYPE_50__** %11, align 8
  %61 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 9
  store %struct.TYPE_40__* %61, %struct.TYPE_40__** %62, align 8
  %63 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 8
  store %struct.TYPE_39__* %63, %struct.TYPE_39__** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 7
  store i32* null, i32** %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MEPF_ROWEND, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %56
  %76 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 3
  store i32 0, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 2
  store i32 0, i32* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 1
  store i32 0, i32* %78, align 4
  br label %160

79:                                               ; preds = %56
  %80 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %12, align 4
  %83 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %79
  %90 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %91 = call %struct.TYPE_44__* @ME_GetTableRowEnd(%struct.TYPE_39__* %90)
  %92 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %89, %79
  %102 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %103, %106
  %108 = call i8* @ME_twips2pointsX(%struct.TYPE_40__* %102, i32 %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 2
  store i32 %109, i32* %110, align 8
  %111 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i8* @ME_twips2pointsX(%struct.TYPE_40__* %111, i32 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  %116 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %116, i32 0, i32 9
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %101
  %121 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 0
  store i32 %122, i32* %123, align 8
  %124 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %125 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @ME_twips2pointsX(%struct.TYPE_40__* %124, i32 %127)
  %129 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @max(i8* %128, i32 %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %136
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %120, %101
  %141 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %142 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @ME_twips2pointsX(%struct.TYPE_40__* %141, i32 %144)
  %146 = ptrtoint i8* %145 to i32
  %147 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 3
  store i32 %146, i32* %147, align 4
  %148 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %140
  %152 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 1
  store i32 0, i32* %152, align 4
  br label %153

153:                                              ; preds = %151, %140
  %154 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 2
  store i32 0, i32* %158, align 8
  br label %159

159:                                              ; preds = %157, %153
  br label %160

160:                                              ; preds = %159, %75
  %161 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_47__*, %struct.TYPE_47__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %193

167:                                              ; preds = %160
  %168 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @PFM_TABLE, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %193

174:                                              ; preds = %167
  %175 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @PFE_TABLE, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %174
  %182 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %183 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %185, 2
  %187 = call i8* @ME_twips2pointsX(%struct.TYPE_40__* %182, i32 %186)
  %188 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr i8, i8* %187, i64 %190
  %192 = ptrtoint i8* %191 to i32
  store i32 %192, i32* %188, align 4
  br label %193

193:                                              ; preds = %181, %174, %167, %160
  %194 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 4
  store i64 0, i64* %194, align 8
  %195 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %195, i32 0, i32 0
  store i64 0, i64* %196, align 8
  %197 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @PFM_SPACEBEFORE, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %193
  %204 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %205 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %205, i32 0, i32 8
  %207 = load i32, i32* %206, align 8
  %208 = call i64 @ME_twips2pointsY(%struct.TYPE_40__* %204, i32 %207)
  %209 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, %208
  store i64 %212, i64* %210, align 8
  br label %213

213:                                              ; preds = %203, %193
  %214 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @PFM_TABLE, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %213
  %221 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @PFE_TABLE, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %282, label %227

227:                                              ; preds = %220, %213
  %228 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @PFM_BORDER, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %282

234:                                              ; preds = %227
  %235 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %236 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @ME_GetParaBorderWidth(%struct.TYPE_40__* %235, i32 %241)
  store i32 %242, i32* %9, align 4
  %243 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 8
  %246 = and i32 %245, 1
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %257

248:                                              ; preds = %234
  %249 = load i32, i32* %9, align 4
  %250 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, %249
  store i32 %252, i32* %250, align 4
  %253 = load i32, i32* %9, align 4
  %254 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = add nsw i32 %255, %253
  store i32 %256, i32* %254, align 8
  br label %257

257:                                              ; preds = %248, %234
  %258 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 8
  %261 = and i32 %260, 2
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %257
  %264 = load i32, i32* %9, align 4
  %265 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = sub nsw i32 %266, %264
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %263, %257
  %269 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %270 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 8
  %272 = and i32 %271, 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %281

274:                                              ; preds = %268
  %275 = load i32, i32* %9, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 5
  %278 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = add nsw i64 %279, %276
  store i64 %280, i64* %278, align 8
  br label %281

281:                                              ; preds = %274, %268
  br label %282

282:                                              ; preds = %281, %227, %220
  %283 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %284 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %285, i32 0, i32 0
  %287 = call i32 @ME_GetParaLineSpace(%struct.TYPE_40__* %283, %struct.TYPE_41__* %286)
  store i32 %287, i32* %10, align 4
  %288 = call i32 @ME_BeginRow(%struct.TYPE_51__* %8)
  %289 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %289, i32 0, i32 2
  %291 = load %struct.TYPE_39__*, %struct.TYPE_39__** %290, align 8
  store %struct.TYPE_39__* %291, %struct.TYPE_39__** %7, align 8
  br label %292

292:                                              ; preds = %336, %282
  %293 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %294 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %296, i32 0, i32 4
  %298 = load %struct.TYPE_39__*, %struct.TYPE_39__** %297, align 8
  %299 = icmp ne %struct.TYPE_39__* %293, %298
  br i1 %299, label %300, label %337

300:                                              ; preds = %292
  %301 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @diStartRow, align 8
  %305 = icmp ne i64 %303, %304
  %306 = zext i1 %305 to i32
  %307 = call i32 @assert(i32 %306)
  %308 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @diRun, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %300
  %314 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %315 = call %struct.TYPE_39__* @ME_WrapHandleRun(%struct.TYPE_51__* %8, %struct.TYPE_39__* %314)
  store %struct.TYPE_39__* %315, %struct.TYPE_39__** %7, align 8
  br label %320

316:                                              ; preds = %300
  %317 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %317, i32 0, i32 2
  %319 = load %struct.TYPE_39__*, %struct.TYPE_39__** %318, align 8
  store %struct.TYPE_39__* %319, %struct.TYPE_39__** %7, align 8
  br label %320

320:                                              ; preds = %316, %313
  %321 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 4
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %336

324:                                              ; preds = %320
  %325 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 6
  %327 = load %struct.TYPE_39__*, %struct.TYPE_39__** %326, align 8
  %328 = icmp eq %struct.TYPE_39__* %325, %327
  br i1 %328, label %329, label %336

329:                                              ; preds = %324
  %330 = load i32, i32* %10, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 5
  %333 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = add nsw i64 %334, %331
  store i64 %335, i64* %333, align 8
  br label %336

336:                                              ; preds = %329, %324, %320
  br label %292

337:                                              ; preds = %292
  %338 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %339 = call i32 @ME_WrapEndParagraph(%struct.TYPE_51__* %8, %struct.TYPE_39__* %338)
  %340 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %341 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @PFM_TABLE, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %353

346:                                              ; preds = %337
  %347 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %348 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %347, i32 0, i32 5
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* @PFE_TABLE, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %373, label %353

353:                                              ; preds = %346, %337
  %354 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %355 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %354, i32 0, i32 4
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @PFM_BORDER, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %373

360:                                              ; preds = %353
  %361 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %362 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %361, i32 0, i32 6
  %363 = load i32, i32* %362, align 8
  %364 = and i32 %363, 8
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %373

366:                                              ; preds = %360
  %367 = load i32, i32* %9, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 5
  %370 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = add nsw i64 %371, %368
  store i64 %372, i64* %370, align 8
  br label %373

373:                                              ; preds = %366, %360, %353, %346
  %374 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %376, i32 0, i32 3
  %378 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %377, i32 0, i32 4
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* @PFM_SPACEAFTER, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %393

383:                                              ; preds = %373
  %384 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %385 = load %struct.TYPE_50__*, %struct.TYPE_50__** %11, align 8
  %386 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %385, i32 0, i32 7
  %387 = load i32, i32* %386, align 4
  %388 = call i64 @ME_twips2pointsY(%struct.TYPE_40__* %384, i32 %387)
  %389 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 5
  %390 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = add nsw i64 %391, %388
  store i64 %392, i64* %390, align 8
  br label %393

393:                                              ; preds = %383, %373
  %394 = load i32, i32* @MEPF_REWRAP, align 4
  %395 = xor i32 %394, -1
  %396 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = and i32 %400, %395
  store i32 %401, i32* %399, align 8
  %402 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 5
  %403 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %407, i32 0, i32 2
  store i64 %404, i64* %408, align 8
  %409 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 4
  %410 = load i64, i64* %409, align 8
  %411 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %413, i32 0, i32 1
  store i64 %410, i64* %414, align 8
  %415 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %8, i32 0, i32 4
  %416 = load i64, i64* %415, align 8
  %417 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %418 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = sext i32 %419 to i64
  %421 = add nsw i64 %420, %416
  %422 = trunc i64 %421 to i32
  store i32 %422, i32* %418, align 4
  br label %423

423:                                              ; preds = %393, %28
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ME_PrepareParagraphForWrapping(%struct.TYPE_38__*, %struct.TYPE_40__*, %struct.TYPE_39__*) #1

declare dso_local i32 @para_num_init(%struct.TYPE_40__*, %struct.TYPE_41__*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @itemize_para(%struct.TYPE_40__*, %struct.TYPE_39__*) #1

declare dso_local i32 @shape_para(%struct.TYPE_40__*, %struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_44__* @ME_GetTableRowEnd(%struct.TYPE_39__*) #1

declare dso_local i8* @ME_twips2pointsX(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @max(i8*, i32) #1

declare dso_local i64 @ME_twips2pointsY(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @ME_GetParaBorderWidth(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @ME_GetParaLineSpace(%struct.TYPE_40__*, %struct.TYPE_41__*) #1

declare dso_local i32 @ME_BeginRow(%struct.TYPE_51__*) #1

declare dso_local %struct.TYPE_39__* @ME_WrapHandleRun(%struct.TYPE_51__*, %struct.TYPE_39__*) #1

declare dso_local i32 @ME_WrapEndParagraph(%struct.TYPE_51__*, %struct.TYPE_39__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
