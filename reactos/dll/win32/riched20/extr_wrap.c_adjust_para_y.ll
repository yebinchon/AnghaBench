; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_adjust_para_y.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_adjust_para_y.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_52__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32, i64 }
%struct.TYPE_51__ = type { %struct.TYPE_49__ }
%struct.TYPE_49__ = type { %struct.TYPE_45__, %struct.TYPE_50__ }
%struct.TYPE_45__ = type { i32, i32, %struct.TYPE_38__*, %struct.TYPE_44__*, %struct.TYPE_48__, i64, %struct.TYPE_40__ }
%struct.TYPE_38__ = type { %struct.TYPE_61__ }
%struct.TYPE_61__ = type { %struct.TYPE_53__ }
%struct.TYPE_53__ = type { i32, i32, %struct.TYPE_60__, %struct.TYPE_59__*, i64, %struct.TYPE_56__* }
%struct.TYPE_60__ = type { i32, i64 }
%struct.TYPE_59__ = type { %struct.TYPE_58__ }
%struct.TYPE_58__ = type { %struct.TYPE_57__ }
%struct.TYPE_57__ = type { %struct.TYPE_41__ }
%struct.TYPE_56__ = type { %struct.TYPE_55__ }
%struct.TYPE_55__ = type { %struct.TYPE_54__ }
%struct.TYPE_54__ = type { i32 }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i32, %struct.TYPE_38__* }
%struct.TYPE_48__ = type { i64 }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_50__ = type { i32, i32, %struct.TYPE_51__*, %struct.TYPE_41__, %struct.TYPE_47__, i64, %struct.TYPE_51__* }
%struct.TYPE_47__ = type { %struct.TYPE_46__, %struct.TYPE_39__ }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_39__ = type { i32 }

@MEPF_ROWSTART = common dso_local global i32 0, align 4
@diCell = common dso_local global i32 0, align 4
@diParagraph = common dso_local global i32 0, align 4
@MEPF_ROWEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_51__*, %struct.TYPE_52__*, %struct.TYPE_51__*, %struct.TYPE_51__*)* @adjust_para_y to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_para_y(%struct.TYPE_51__* %0, %struct.TYPE_52__* %1, %struct.TYPE_51__* %2, %struct.TYPE_51__* %3) #0 {
  %5 = alloca %struct.TYPE_51__*, align 8
  %6 = alloca %struct.TYPE_52__*, align 8
  %7 = alloca %struct.TYPE_51__*, align 8
  %8 = alloca %struct.TYPE_51__*, align 8
  %9 = alloca %struct.TYPE_51__*, align 8
  %10 = alloca %struct.TYPE_51__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_51__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_51__*, align 8
  %18 = alloca %struct.TYPE_53__*, align 8
  store %struct.TYPE_51__* %0, %struct.TYPE_51__** %5, align 8
  store %struct.TYPE_52__* %1, %struct.TYPE_52__** %6, align 8
  store %struct.TYPE_51__* %2, %struct.TYPE_51__** %7, align 8
  store %struct.TYPE_51__* %3, %struct.TYPE_51__** %8, align 8
  %19 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MEPF_ROWSTART, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %141

27:                                               ; preds = %4
  %28 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %29 = load i32, i32* @diCell, align 4
  %30 = call %struct.TYPE_51__* @ME_FindItemFwd(%struct.TYPE_51__* %28, i32 %29)
  store %struct.TYPE_51__* %30, %struct.TYPE_51__** %9, align 8
  store i32 0, i32* %11, align 4
  %31 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %35, i32 0, i32 0
  %37 = bitcast %struct.TYPE_41__* %34 to i8*
  %38 = bitcast %struct.TYPE_41__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  br label %39

39:                                               ; preds = %46, %27
  %40 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_51__*, %struct.TYPE_51__** %43, align 8
  %45 = icmp ne %struct.TYPE_51__* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %39
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @max(i32 %47, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_51__*, %struct.TYPE_51__** %60, align 8
  store %struct.TYPE_51__* %61, %struct.TYPE_51__** %9, align 8
  br label %39

62:                                               ; preds = %39
  %63 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %64 = load i32, i32* @diParagraph, align 4
  %65 = call %struct.TYPE_51__* @ME_FindItemFwd(%struct.TYPE_51__* %63, i32 %64)
  store %struct.TYPE_51__* %65, %struct.TYPE_51__** %10, align 8
  %66 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MEPF_ROWEND, align 4
  %72 = and i32 %70, %71
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %62
  %77 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @ME_twips2pointsY(%struct.TYPE_52__* %77, i32 %78)
  %80 = call i8* @max(i32 %79, i32 1)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %85, %76
  %83 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %84 = icmp ne %struct.TYPE_51__* %83, null
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 8
  %91 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_51__*, %struct.TYPE_51__** %94, align 8
  store %struct.TYPE_51__* %95, %struct.TYPE_51__** %9, align 8
  br label %82

96:                                               ; preds = %82
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, %97
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %96, %62
  %104 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %140

111:                                              ; preds = %103
  %112 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %12, align 4
  %118 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %119 = load i32, i32* @diCell, align 4
  %120 = call %struct.TYPE_51__* @ME_FindItemFwd(%struct.TYPE_51__* %118, i32 %119)
  store %struct.TYPE_51__* %120, %struct.TYPE_51__** %9, align 8
  %121 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i64 @ME_twips2pointsX(%struct.TYPE_52__* %121, i32 %122)
  %124 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, %123
  store i64 %130, i64* %128, align 8
  %131 = load %struct.TYPE_51__*, %struct.TYPE_51__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %138, i32 0, i32 1
  store i64 %136, i64* %139, align 8
  br label %140

140:                                              ; preds = %111, %103
  br label %478

141:                                              ; preds = %4
  %142 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @MEPF_ROWEND, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %322

150:                                              ; preds = %141
  store i32 0, i32* %16, align 4
  %151 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %152 = load i32, i32* @diCell, align 4
  %153 = call %struct.TYPE_51__* @ME_FindItemBack(%struct.TYPE_51__* %151, i32 %152)
  store %struct.TYPE_51__* %153, %struct.TYPE_51__** %17, align 8
  %154 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %159, %164
  %166 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %168, i32 0, i32 5
  store i64 %165, i64* %169, align 8
  %170 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_44__*, %struct.TYPE_44__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @MEPF_ROWSTART, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %214, label %182

182:                                              ; preds = %150
  %183 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %184 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_51__*, %struct.TYPE_51__** %186, align 8
  store %struct.TYPE_51__* %187, %struct.TYPE_51__** %17, align 8
  br label %188

188:                                              ; preds = %191, %182
  %189 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %190 = icmp ne %struct.TYPE_51__* %189, null
  br i1 %190, label %191, label %207

191:                                              ; preds = %188
  %192 = load i32, i32* %16, align 4
  %193 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %194 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i8* @max(i32 %192, i32 %199)
  %201 = ptrtoint i8* %200 to i32
  store i32 %201, i32* %16, align 4
  %202 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %203 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_51__*, %struct.TYPE_51__** %205, align 8
  store %struct.TYPE_51__* %206, %struct.TYPE_51__** %17, align 8
  br label %188

207:                                              ; preds = %188
  %208 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %209 = load i32, i32* %16, align 4
  %210 = call i32 @ME_twips2pointsY(%struct.TYPE_52__* %208, i32 %209)
  store i32 %210, i32* %16, align 4
  %211 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %212 = load i32, i32* @diCell, align 4
  %213 = call %struct.TYPE_51__* @ME_FindItemBack(%struct.TYPE_51__* %211, i32 %212)
  store %struct.TYPE_51__* %213, %struct.TYPE_51__** %17, align 8
  br label %214

214:                                              ; preds = %207, %150
  %215 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %216 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %14, align 4
  %220 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %221 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_51__*, %struct.TYPE_51__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %16, align 4
  %230 = add nsw i32 %228, %229
  store i32 %230, i32* %15, align 4
  %231 = load i32, i32* %15, align 4
  %232 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %234, i32 0, i32 1
  store i32 %231, i32* %235, align 4
  %236 = load i32, i32* %15, align 4
  %237 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %239, i32 0, i32 1
  store i32 %236, i32* %240, align 4
  %241 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_51__*, %struct.TYPE_51__** %244, align 8
  store %struct.TYPE_51__* %245, %struct.TYPE_51__** %17, align 8
  %246 = load i32, i32* %15, align 4
  %247 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %248 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %249, i32 0, i32 1
  store i32 %246, i32* %250, align 4
  br label %251

251:                                              ; preds = %258, %214
  %252 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %253 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %254, i32 0, i32 2
  %256 = load %struct.TYPE_51__*, %struct.TYPE_51__** %255, align 8
  %257 = icmp ne %struct.TYPE_51__* %256, null
  br i1 %257, label %258, label %269

258:                                              ; preds = %251
  %259 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %260 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_51__*, %struct.TYPE_51__** %262, align 8
  store %struct.TYPE_51__* %263, %struct.TYPE_51__** %17, align 8
  %264 = load i32, i32* %15, align 4
  %265 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %266 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %267, i32 0, i32 1
  store i32 %264, i32* %268, align 4
  br label %251

269:                                              ; preds = %251
  %270 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %271 = load i32, i32* @diParagraph, align 4
  %272 = call %struct.TYPE_51__* @ME_FindItemBack(%struct.TYPE_51__* %270, i32 %271)
  store %struct.TYPE_51__* %272, %struct.TYPE_51__** %13, align 8
  %273 = load i32, i32* %15, align 4
  %274 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %275 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %276, i32 0, i32 1
  store i32 %273, i32* %277, align 4
  %278 = load %struct.TYPE_51__*, %struct.TYPE_51__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %280, i32 0, i32 4
  %282 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %285, i32 0, i32 1
  store i64 %283, i64* %286, align 8
  %287 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %288 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* %15, align 4
  %294 = add nsw i32 %292, %293
  %295 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %296, i32 0, i32 0
  store i32 %294, i32* %297, align 8
  %298 = load i32, i32* %14, align 4
  %299 = load i32, i32* %15, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %321

301:                                              ; preds = %269
  %302 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %303 = call i32 @ME_MarkRepaintEnd(%struct.TYPE_51__* %302, %struct.TYPE_51__** %7, %struct.TYPE_51__** %8)
  %304 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %305 = load i32, i32* @diCell, align 4
  %306 = call %struct.TYPE_51__* @ME_FindItemBack(%struct.TYPE_51__* %304, i32 %305)
  store %struct.TYPE_51__* %306, %struct.TYPE_51__** %17, align 8
  br label %307

307:                                              ; preds = %310, %301
  %308 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %309 = icmp ne %struct.TYPE_51__* %308, null
  br i1 %309, label %310, label %320

310:                                              ; preds = %307
  %311 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %312 = load i32, i32* @diParagraph, align 4
  %313 = call %struct.TYPE_51__* @ME_FindItemBack(%struct.TYPE_51__* %311, i32 %312)
  %314 = call i32 @ME_MarkRepaintEnd(%struct.TYPE_51__* %313, %struct.TYPE_51__** %7, %struct.TYPE_51__** %8)
  %315 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %316 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %317, i32 0, i32 2
  %319 = load %struct.TYPE_51__*, %struct.TYPE_51__** %318, align 8
  store %struct.TYPE_51__* %319, %struct.TYPE_51__** %17, align 8
  br label %307

320:                                              ; preds = %307
  br label %321

321:                                              ; preds = %320, %269
  br label %477

322:                                              ; preds = %141
  %323 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %325, i32 0, i32 2
  %327 = load %struct.TYPE_38__*, %struct.TYPE_38__** %326, align 8
  %328 = icmp ne %struct.TYPE_38__* %327, null
  br i1 %328, label %329, label %440

329:                                              ; preds = %322
  %330 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %332, i32 0, i32 2
  %334 = load %struct.TYPE_38__*, %struct.TYPE_38__** %333, align 8
  %335 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %337, i32 0, i32 3
  %339 = load %struct.TYPE_44__*, %struct.TYPE_44__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_38__*, %struct.TYPE_38__** %342, align 8
  %344 = icmp ne %struct.TYPE_38__* %334, %343
  br i1 %344, label %345, label %440

345:                                              ; preds = %329
  %346 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %348, i32 0, i32 2
  %350 = load %struct.TYPE_38__*, %struct.TYPE_38__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %351, i32 0, i32 0
  store %struct.TYPE_53__* %352, %struct.TYPE_53__** %18, align 8
  %353 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = add nsw i32 %356, %361
  %363 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %364 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %363, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = sub nsw i32 %362, %366
  %368 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %369 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %368, i32 0, i32 0
  store i32 %367, i32* %369, align 8
  %370 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %371 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %370, i32 0, i32 5
  %372 = load %struct.TYPE_56__*, %struct.TYPE_56__** %371, align 8
  %373 = icmp ne %struct.TYPE_56__* %372, null
  br i1 %373, label %374, label %389

374:                                              ; preds = %345
  %375 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %376 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %379 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %378, i32 0, i32 5
  %380 = load %struct.TYPE_56__*, %struct.TYPE_56__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = call i8* @max(i32 %377, i32 %384)
  %386 = ptrtoint i8* %385 to i32
  %387 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %388 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %387, i32 0, i32 0
  store i32 %386, i32* %388, align 8
  br label %389

389:                                              ; preds = %374, %345
  %390 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %391 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %395 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %394, i32 0, i32 4
  %396 = load i64, i64* %395, align 8
  %397 = add nsw i64 %393, %396
  %398 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %399, i32 0, i32 1
  store i64 %397, i64* %400, align 8
  %401 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %402 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %401, i32 0, i32 2
  %403 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %406, i32 0, i32 0
  store i32 %404, i32* %407, align 8
  %408 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %409 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %408, i32 0, i32 3
  %410 = load %struct.TYPE_59__*, %struct.TYPE_59__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %412, i32 0, i32 0
  %414 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %414, i32 0, i32 0
  %416 = bitcast %struct.TYPE_41__* %413 to i8*
  %417 = bitcast %struct.TYPE_41__* %415 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %416, i8* align 8 %417, i64 16, i1 false)
  %418 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %420, i32 0, i32 3
  %422 = load %struct.TYPE_44__*, %struct.TYPE_44__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* @MEPF_ROWEND, align 4
  %428 = and i32 %426, %427
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %439, label %430

430:                                              ; preds = %389
  %431 = load %struct.TYPE_53__*, %struct.TYPE_53__** %18, align 8
  %432 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %435 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = add nsw i32 %437, %433
  store i32 %438, i32* %436, align 8
  br label %439

439:                                              ; preds = %430, %389
  br label %476

440:                                              ; preds = %329, %322
  %441 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %443, i32 0, i32 2
  %445 = load %struct.TYPE_38__*, %struct.TYPE_38__** %444, align 8
  %446 = icmp ne %struct.TYPE_38__* %445, null
  br i1 %446, label %447, label %461

447:                                              ; preds = %440
  %448 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %450, i32 0, i32 2
  %452 = load %struct.TYPE_38__*, %struct.TYPE_38__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %454, i32 0, i32 2
  %456 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %455, i32 0, i32 1
  %457 = load i64, i64* %456, align 8
  %458 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %459, i32 0, i32 1
  store i64 %457, i64* %460, align 8
  br label %465

461:                                              ; preds = %440
  %462 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %463 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %463, i32 0, i32 1
  store i64 0, i64* %464, align 8
  br label %465

465:                                              ; preds = %461, %447
  %466 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = load %struct.TYPE_52__*, %struct.TYPE_52__** %6, align 8
  %472 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = add nsw i32 %474, %470
  store i32 %475, i32* %473, align 8
  br label %476

476:                                              ; preds = %465, %439
  br label %477

477:                                              ; preds = %476, %321
  br label %478

478:                                              ; preds = %477, %140
  ret void
}

declare dso_local %struct.TYPE_51__* @ME_FindItemFwd(%struct.TYPE_51__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ME_twips2pointsY(%struct.TYPE_52__*, i32) #1

declare dso_local i64 @ME_twips2pointsX(%struct.TYPE_52__*, i32) #1

declare dso_local %struct.TYPE_51__* @ME_FindItemBack(%struct.TYPE_51__*, i32) #1

declare dso_local i32 @ME_MarkRepaintEnd(%struct.TYPE_51__*, %struct.TYPE_51__**, %struct.TYPE_51__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
