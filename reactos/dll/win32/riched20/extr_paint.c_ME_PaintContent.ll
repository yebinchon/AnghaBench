; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_ME_PaintContent.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_ME_PaintContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_51__ = type { i64, i64, i64, i64, %struct.TYPE_58__*, %struct.TYPE_57__, %struct.TYPE_55__ }
%struct.TYPE_58__ = type { %struct.TYPE_52__*, %struct.TYPE_50__* }
%struct.TYPE_52__ = type { i64, %struct.TYPE_45__ }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32, i32, %struct.TYPE_52__*, %struct.TYPE_43__*, %struct.TYPE_40__*, %struct.TYPE_59__ }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i64 }
%struct.TYPE_40__ = type { %struct.TYPE_63__ }
%struct.TYPE_63__ = type { %struct.TYPE_62__ }
%struct.TYPE_62__ = type { %struct.TYPE_43__* }
%struct.TYPE_59__ = type { i32 }
%struct.TYPE_50__ = type { %struct.TYPE_52__* }
%struct.TYPE_57__ = type { i32 }
%struct.TYPE_55__ = type { i64 }
%struct.TYPE_49__ = type { i32, i32, i32, i64 }
%struct.TYPE_53__ = type { i32*, %struct.TYPE_48__*, %struct.TYPE_47__, %struct.TYPE_46__ }
%struct.TYPE_48__ = type { i32 }
%struct.TYPE_47__ = type { i32, i64, i32, i64 }
%struct.TYPE_46__ = type { i32, i64 }
%struct.TYPE_54__ = type { i32, %struct.TYPE_61__ }
%struct.TYPE_61__ = type { i32 }
%struct.TYPE_56__ = type { %struct.TYPE_60__ }
%struct.TYPE_60__ = type { %struct.TYPE_54__ }

@TRANSPARENT = common dso_local global i32 0, align 4
@diParagraph = common dso_local global i64 0, align 8
@diCell = common dso_local global i32 0, align 4
@MEPF_ROWEND = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_PaintContent(%struct.TYPE_51__* %0, i32 %1, %struct.TYPE_49__* %2) #0 {
  %4 = alloca %struct.TYPE_51__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_49__*, align 8
  %7 = alloca %struct.TYPE_52__*, align 8
  %8 = alloca %struct.TYPE_53__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_54__*, align 8
  %13 = alloca %struct.TYPE_49__, align 8
  store %struct.TYPE_51__* %0, %struct.TYPE_51__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_49__* %2, %struct.TYPE_49__** %6, align 8
  %14 = call i32* @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32* %14, i32** %11, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** %11, align 8
  %17 = call i32 @GetClipRgn(i32 %15, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @DeleteObject(i32* %20)
  store i32* null, i32** %11, align 8
  br label %22

22:                                               ; preds = %19, %3
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IntersectClipRect(i32 %23, i64 %26, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ME_InitContext(%struct.TYPE_53__* %8, %struct.TYPE_51__* %37, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @TRANSPARENT, align 4
  %42 = call i32 @SetBkMode(i32 %40, i32 %41)
  %43 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %44 = call i32 @ME_MoveCaret(%struct.TYPE_51__* %43)
  %45 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_58__*, %struct.TYPE_58__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_50__*, %struct.TYPE_50__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_52__*, %struct.TYPE_52__** %50, align 8
  store %struct.TYPE_52__* %51, %struct.TYPE_52__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %8, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %54, %58
  %60 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %8, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %8, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %64, %68
  %70 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %8, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %204, %22
  %73 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %74 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_58__*, %struct.TYPE_58__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_52__*, %struct.TYPE_52__** %77, align 8
  %79 = icmp ne %struct.TYPE_52__* %73, %78
  br i1 %79, label %80, label %210

80:                                               ; preds = %72
  %81 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @diParagraph, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %8, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %90, %96
  store i32 %97, i32* %9, align 4
  %98 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_43__*, %struct.TYPE_43__** %101, align 8
  %103 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_52__*, %struct.TYPE_52__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_43__*, %struct.TYPE_43__** %110, align 8
  %112 = icmp ne %struct.TYPE_43__* %102, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %80
  store %struct.TYPE_54__* null, %struct.TYPE_54__** %12, align 8
  %114 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_52__*, %struct.TYPE_52__** %117, align 8
  %119 = load i32, i32* @diCell, align 4
  %120 = call %struct.TYPE_56__* @ME_FindItemBack(%struct.TYPE_52__* %118, i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %121, i32 0, i32 0
  store %struct.TYPE_54__* %122, %struct.TYPE_54__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %8, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_54__*, %struct.TYPE_54__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %125, %129
  %131 = load %struct.TYPE_54__*, %struct.TYPE_54__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %130, %133
  store i32 %134, i32* %10, align 4
  br label %143

135:                                              ; preds = %80
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %136, %141
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %135, %113
  %144 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_43__*, %struct.TYPE_43__** %147, align 8
  %149 = icmp ne %struct.TYPE_43__* %148, null
  br i1 %149, label %150, label %189

150:                                              ; preds = %143
  %151 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @MEPF_ROWEND, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %189, label %159

159:                                              ; preds = %150
  %160 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_43__*, %struct.TYPE_43__** %163, align 8
  %165 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_40__*, %struct.TYPE_40__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_43__*, %struct.TYPE_43__** %172, align 8
  %174 = icmp ne %struct.TYPE_43__* %164, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %159
  %176 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_43__*, %struct.TYPE_43__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = sub nsw i64 %186, %184
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %9, align 4
  br label %189

189:                                              ; preds = %175, %159, %150, %143
  %190 = load i32, i32* %9, align 4
  %191 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %204

195:                                              ; preds = %189
  %196 = load i32, i32* %10, align 4
  %197 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp sgt i32 %196, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %203 = call i32 @ME_DrawParagraph(%struct.TYPE_53__* %8, %struct.TYPE_52__* %202)
  br label %204

204:                                              ; preds = %201, %195, %189
  %205 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_52__*, %struct.TYPE_52__** %208, align 8
  store %struct.TYPE_52__* %209, %struct.TYPE_52__** %7, align 8
  br label %72

210:                                              ; preds = %72
  %211 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %8, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %214, %217
  %219 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %8, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp slt i64 %218, %221
  br i1 %222, label %223, label %259

223:                                              ; preds = %210
  %224 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %8, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %227, %230
  %232 = trunc i64 %231 to i32
  %233 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %13, i32 0, i32 0
  store i32 %232, i32* %233, align 8
  %234 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %8, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %13, i32 0, i32 3
  store i64 %236, i64* %237, align 8
  %238 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %8, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = trunc i64 %240 to i32
  %242 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %13, i32 0, i32 1
  store i32 %241, i32* %242, align 4
  %243 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %8, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %13, i32 0, i32 2
  store i32 %245, i32* %246, align 8
  %247 = load %struct.TYPE_49__*, %struct.TYPE_49__** %6, align 8
  %248 = call i32 @IntersectRect(%struct.TYPE_49__* %13, %struct.TYPE_49__* %13, %struct.TYPE_49__* %247)
  %249 = call i32 @IsRectEmpty(%struct.TYPE_49__* %13)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %258, label %251

251:                                              ; preds = %223
  %252 = load i32, i32* %5, align 4
  %253 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %8, i32 0, i32 1
  %254 = load %struct.TYPE_48__*, %struct.TYPE_48__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @FillRect(i32 %252, %struct.TYPE_49__* %13, i32 %256)
  br label %258

258:                                              ; preds = %251, %223
  br label %259

259:                                              ; preds = %258, %210
  %260 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %262, %265
  br i1 %266, label %275, label %267

267:                                              ; preds = %259
  %268 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %271, i32 0, i32 3
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %270, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %267, %259
  %276 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %277 = load i32, i32* @FALSE, align 4
  %278 = call i32 @ME_SendRequestResize(%struct.TYPE_51__* %276, i32 %277)
  br label %279

279:                                              ; preds = %275, %267
  %280 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %283, i32 0, i32 1
  store i64 %282, i64* %284, align 8
  %285 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %288, i32 0, i32 3
  store i64 %287, i64* %289, align 8
  %290 = load i32, i32* %5, align 4
  %291 = load i32*, i32** %11, align 8
  %292 = call i32 @SelectClipRgn(i32 %290, i32* %291)
  %293 = load i32*, i32** %11, align 8
  %294 = icmp ne i32* %293, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %279
  %296 = load i32*, i32** %11, align 8
  %297 = call i32 @DeleteObject(i32* %296)
  br label %298

298:                                              ; preds = %295, %279
  %299 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %8, i32 0, i32 0
  store i32* null, i32** %299, align 8
  %300 = call i32 @ME_DestroyContext(%struct.TYPE_53__* %8)
  ret void
}

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @GetClipRgn(i32, i32*) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @IntersectClipRect(i32, i64, i32, i32, i32) #1

declare dso_local i32 @ME_InitContext(%struct.TYPE_53__*, %struct.TYPE_51__*, i32) #1

declare dso_local i32 @SetBkMode(i32, i32) #1

declare dso_local i32 @ME_MoveCaret(%struct.TYPE_51__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_56__* @ME_FindItemBack(%struct.TYPE_52__*, i32) #1

declare dso_local i32 @ME_DrawParagraph(%struct.TYPE_53__*, %struct.TYPE_52__*) #1

declare dso_local i32 @IntersectRect(%struct.TYPE_49__*, %struct.TYPE_49__*, %struct.TYPE_49__*) #1

declare dso_local i32 @IsRectEmpty(%struct.TYPE_49__*) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_49__*, i32) #1

declare dso_local i32 @ME_SendRequestResize(%struct.TYPE_51__*, i32) #1

declare dso_local i32 @SelectClipRgn(i32, i32*) #1

declare dso_local i32 @ME_DestroyContext(%struct.TYPE_53__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
