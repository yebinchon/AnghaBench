; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_table.c_ME_SelectOrInsertNextCell.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_table.c_ME_SelectOrInsertNextCell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { %struct.TYPE_35__*, i32 }
%struct.TYPE_35__ = type { i64, %struct.TYPE_29__*, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64, %struct.TYPE_36__ }
%struct.TYPE_36__ = type { %struct.TYPE_32__, %struct.TYPE_37__, %struct.TYPE_34__ }
%struct.TYPE_32__ = type { i32, %struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_29__* }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64 }

@diRun = common dso_local global i64 0, align 8
@MEPF_ROWSTART = common dso_local global i32 0, align 4
@MEPF_ROWEND = common dso_local global i32 0, align 4
@diParagraph = common dso_local global i64 0, align 8
@MERF_ENDPARA = common dso_local global i32 0, align 4
@diParagraphOrEnd = common dso_local global i64 0, align 8
@MERF_TAB = common dso_local global i32 0, align 4
@diRunOrParagraphOrEnd = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_38__*, %struct.TYPE_29__*)* @ME_SelectOrInsertNextCell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ME_SelectOrInsertNextCell(%struct.TYPE_38__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca %struct.TYPE_38__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %3, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %4, align 8
  %8 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %9 = call i8* @ME_GetParagraph(%struct.TYPE_29__* %8)
  %10 = bitcast i8* %9 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %10, %struct.TYPE_29__** %5, align 8
  %11 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %12 = icmp ne %struct.TYPE_29__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @diRun, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ false, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.TYPE_29__*
  %24 = call i32 @assert(%struct.TYPE_29__* %23)
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %26 = call %struct.TYPE_29__* @ME_IsInTable(%struct.TYPE_29__* %25)
  %27 = call i32 @assert(%struct.TYPE_29__* %26)
  %28 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %254, label %32

32:                                               ; preds = %19
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MEPF_ROWSTART, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %49, align 8
  store %struct.TYPE_29__* %50, %struct.TYPE_29__** %7, align 8
  br label %77

51:                                               ; preds = %32
  %52 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MEPF_ROWEND, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %68, align 8
  store %struct.TYPE_29__* %69, %struct.TYPE_29__** %7, align 8
  br label %76

70:                                               ; preds = %51
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %74, align 8
  store %struct.TYPE_29__* %75, %struct.TYPE_29__** %7, align 8
  br label %76

76:                                               ; preds = %70, %60
  br label %77

77:                                               ; preds = %76, %41
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %79 = call i32 @assert(%struct.TYPE_29__* %78)
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %83, align 8
  %85 = icmp ne %struct.TYPE_33__* %84, null
  br i1 %85, label %86, label %104

86:                                               ; preds = %77
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_33__*, %struct.TYPE_33__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %86
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %101, align 8
  %103 = bitcast %struct.TYPE_33__* %102 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %103, %struct.TYPE_29__** %7, align 8
  br label %181

104:                                              ; preds = %86, %77
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %106 = load i64, i64* @diParagraph, align 8
  %107 = call %struct.TYPE_29__* @ME_FindItemFwd(%struct.TYPE_29__* %105, i64 %106)
  %108 = call %struct.TYPE_29__* @ME_GetTableRowEnd(%struct.TYPE_29__* %107)
  store %struct.TYPE_29__* %108, %struct.TYPE_29__** %5, align 8
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %112, align 8
  store %struct.TYPE_29__* %113, %struct.TYPE_29__** %5, align 8
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %115 = call i32 @assert(%struct.TYPE_29__* %114)
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @MEPF_ROWSTART, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %104
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %132, align 8
  store %struct.TYPE_29__* %133, %struct.TYPE_29__** %7, align 8
  br label %180

134:                                              ; preds = %104
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %138, align 8
  store %struct.TYPE_29__* %139, %struct.TYPE_29__** %5, align 8
  %140 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %142 = call %struct.TYPE_29__* @ME_GetTableRowStart(%struct.TYPE_29__* %141)
  %143 = call %struct.TYPE_29__* @ME_AppendTableRow(%struct.TYPE_38__* %140, %struct.TYPE_29__* %142)
  store %struct.TYPE_29__* %143, %struct.TYPE_29__** %5, align 8
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %147, align 8
  store %struct.TYPE_29__* %148, %struct.TYPE_29__** %5, align 8
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %150 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_35__*, %struct.TYPE_35__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %153, i32 0, i32 1
  store %struct.TYPE_29__* %149, %struct.TYPE_29__** %154, align 8
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %156 = load i64, i64* @diRun, align 8
  %157 = call %struct.TYPE_29__* @ME_FindItemFwd(%struct.TYPE_29__* %155, i64 %156)
  %158 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_35__*, %struct.TYPE_35__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %161, i32 0, i32 2
  store %struct.TYPE_29__* %157, %struct.TYPE_29__** %162, align 8
  %163 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_35__*, %struct.TYPE_35__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %166, i32 0, i32 0
  store i64 0, i64* %167, align 8
  %168 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_35__*, %struct.TYPE_35__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %170, i64 1
  %172 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_35__*, %struct.TYPE_35__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %174, i64 0
  %176 = bitcast %struct.TYPE_35__* %171 to i8*
  %177 = bitcast %struct.TYPE_35__* %175 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %176, i8* align 8 %177, i64 24, i1 false)
  %178 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %179 = call i32 @ME_WrapMarkedParagraphs(%struct.TYPE_38__* %178)
  br label %405

180:                                              ; preds = %124
  br label %181

181:                                              ; preds = %180, %97
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %183 = load i64, i64* @diRun, align 8
  %184 = call %struct.TYPE_29__* @ME_FindItemFwd(%struct.TYPE_29__* %182, i64 %183)
  %185 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_35__*, %struct.TYPE_35__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %187, i64 1
  %189 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %188, i32 0, i32 2
  store %struct.TYPE_29__* %184, %struct.TYPE_29__** %189, align 8
  %190 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_35__*, %struct.TYPE_35__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %192, i64 1
  %194 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %194, align 8
  %196 = call i8* @ME_GetParagraph(%struct.TYPE_29__* %195)
  %197 = bitcast i8* %196 to %struct.TYPE_29__*
  %198 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_35__*, %struct.TYPE_35__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %200, i64 1
  %202 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %201, i32 0, i32 1
  store %struct.TYPE_29__* %197, %struct.TYPE_29__** %202, align 8
  %203 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_35__*, %struct.TYPE_35__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %205, i64 1
  %207 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %206, i32 0, i32 0
  store i64 0, i64* %207, align 8
  %208 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_35__*, %struct.TYPE_35__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %210, i64 0
  %212 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %212, align 8
  %214 = call i32 @assert(%struct.TYPE_29__* %213)
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_33__*, %struct.TYPE_33__** %218, align 8
  %220 = bitcast %struct.TYPE_33__* %219 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %220, %struct.TYPE_29__** %7, align 8
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %222 = load i64, i64* @diRun, align 8
  %223 = call %struct.TYPE_29__* @ME_FindItemBack(%struct.TYPE_29__* %221, i64 %222)
  %224 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_35__*, %struct.TYPE_35__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %226, i64 0
  %228 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %227, i32 0, i32 2
  store %struct.TYPE_29__* %223, %struct.TYPE_29__** %228, align 8
  %229 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_35__*, %struct.TYPE_35__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %231, i64 0
  %233 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %233, align 8
  %235 = call i8* @ME_GetParagraph(%struct.TYPE_29__* %234)
  %236 = bitcast i8* %235 to %struct.TYPE_29__*
  %237 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_35__*, %struct.TYPE_35__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %239, i64 0
  %241 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %240, i32 0, i32 1
  store %struct.TYPE_29__* %236, %struct.TYPE_29__** %241, align 8
  %242 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_35__*, %struct.TYPE_35__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %244, i64 0
  %246 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %245, i32 0, i32 0
  store i64 0, i64* %246, align 8
  %247 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_35__*, %struct.TYPE_35__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %249, i64 1
  %251 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_29__*, %struct.TYPE_29__** %251, align 8
  %253 = call i32 @assert(%struct.TYPE_29__* %252)
  br label %405

254:                                              ; preds = %19
  %255 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @MERF_ENDPARA, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %254
  %264 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %265 = load i64, i64* @diParagraphOrEnd, align 8
  %266 = call %struct.TYPE_29__* @ME_FindItemFwd(%struct.TYPE_29__* %264, i64 %265)
  %267 = call %struct.TYPE_29__* @ME_IsInTable(%struct.TYPE_29__* %266)
  %268 = icmp ne %struct.TYPE_29__* %267, null
  br i1 %268, label %269, label %275

269:                                              ; preds = %263
  %270 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %271 = load i64, i64* @diRun, align 8
  %272 = call %struct.TYPE_29__* @ME_FindItemFwd(%struct.TYPE_29__* %270, i64 %271)
  store %struct.TYPE_29__* %272, %struct.TYPE_29__** %4, align 8
  %273 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %274 = call i32 @assert(%struct.TYPE_29__* %273)
  br label %275

275:                                              ; preds = %269, %263, %254
  store i32 0, i32* %6, align 4
  br label %276

276:                                              ; preds = %401, %275
  %277 = load i32, i32* %6, align 4
  %278 = icmp slt i32 %277, 2
  br i1 %278, label %279, label %404

279:                                              ; preds = %276
  br label %280

280:                                              ; preds = %367, %279
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @MERF_TAB, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  %289 = xor i1 %288, true
  br i1 %289, label %290, label %368

290:                                              ; preds = %280
  %291 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %292 = load i64, i64* @diRunOrParagraphOrEnd, align 8
  %293 = call %struct.TYPE_29__* @ME_FindItemFwd(%struct.TYPE_29__* %291, i64 %292)
  store %struct.TYPE_29__* %293, %struct.TYPE_29__** %4, align 8
  %294 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @diRun, align 8
  %298 = icmp ne i64 %296, %297
  br i1 %298, label %299, label %367

299:                                              ; preds = %290
  %300 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_29__* %300, %struct.TYPE_29__** %5, align 8
  %301 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %302 = call %struct.TYPE_29__* @ME_IsInTable(%struct.TYPE_29__* %301)
  %303 = icmp ne %struct.TYPE_29__* %302, null
  br i1 %303, label %304, label %327

304:                                              ; preds = %299
  %305 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %306 = load i64, i64* @diRun, align 8
  %307 = call %struct.TYPE_29__* @ME_FindItemFwd(%struct.TYPE_29__* %305, i64 %306)
  store %struct.TYPE_29__* %307, %struct.TYPE_29__** %4, align 8
  %308 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %309 = call i32 @assert(%struct.TYPE_29__* %308)
  %310 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %311 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_35__*, %struct.TYPE_35__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %313, i64 0
  %315 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %314, i32 0, i32 1
  store %struct.TYPE_29__* %310, %struct.TYPE_29__** %315, align 8
  %316 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %317 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_35__*, %struct.TYPE_35__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %319, i64 0
  %321 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %320, i32 0, i32 2
  store %struct.TYPE_29__* %316, %struct.TYPE_29__** %321, align 8
  %322 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_35__*, %struct.TYPE_35__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %324, i64 0
  %326 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %325, i32 0, i32 0
  store i64 0, i64* %326, align 8
  store i32 1, i32* %6, align 4
  br label %366

327:                                              ; preds = %299
  %328 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %329 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_29__*, %struct.TYPE_29__** %332, align 8
  %334 = call %struct.TYPE_29__* @ME_AppendTableRow(%struct.TYPE_38__* %328, %struct.TYPE_29__* %333)
  store %struct.TYPE_29__* %334, %struct.TYPE_29__** %5, align 8
  %335 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %336 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_35__*, %struct.TYPE_35__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %338, i64 0
  %340 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %339, i32 0, i32 1
  store %struct.TYPE_29__* %335, %struct.TYPE_29__** %340, align 8
  %341 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %342 = load i64, i64* @diRun, align 8
  %343 = call %struct.TYPE_29__* @ME_FindItemFwd(%struct.TYPE_29__* %341, i64 %342)
  %344 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_35__*, %struct.TYPE_35__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %346, i64 0
  %348 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %347, i32 0, i32 2
  store %struct.TYPE_29__* %343, %struct.TYPE_29__** %348, align 8
  %349 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_35__*, %struct.TYPE_35__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %351, i64 0
  %353 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %352, i32 0, i32 0
  store i64 0, i64* %353, align 8
  %354 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %354, i32 0, i32 0
  %356 = load %struct.TYPE_35__*, %struct.TYPE_35__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %356, i64 1
  %358 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %358, i32 0, i32 0
  %360 = load %struct.TYPE_35__*, %struct.TYPE_35__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %360, i64 0
  %362 = bitcast %struct.TYPE_35__* %357 to i8*
  %363 = bitcast %struct.TYPE_35__* %361 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %362, i8* align 8 %363, i64 24, i1 false)
  %364 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %365 = call i32 @ME_WrapMarkedParagraphs(%struct.TYPE_38__* %364)
  br label %405

366:                                              ; preds = %304
  br label %367

367:                                              ; preds = %366, %290
  br label %280

368:                                              ; preds = %280
  %369 = load i32, i32* %6, align 4
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %375

371:                                              ; preds = %368
  %372 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %373 = load i64, i64* @diRun, align 8
  %374 = call %struct.TYPE_29__* @ME_FindItemFwd(%struct.TYPE_29__* %372, i64 %373)
  store %struct.TYPE_29__* %374, %struct.TYPE_29__** %4, align 8
  br label %375

375:                                              ; preds = %371, %368
  %376 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %377 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %377, i32 0, i32 0
  %379 = load %struct.TYPE_35__*, %struct.TYPE_35__** %378, align 8
  %380 = load i32, i32* %6, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %382, i32 0, i32 2
  store %struct.TYPE_29__* %376, %struct.TYPE_29__** %383, align 8
  %384 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %385 = call i8* @ME_GetParagraph(%struct.TYPE_29__* %384)
  %386 = bitcast i8* %385 to %struct.TYPE_29__*
  %387 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %387, i32 0, i32 0
  %389 = load %struct.TYPE_35__*, %struct.TYPE_35__** %388, align 8
  %390 = load i32, i32* %6, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %392, i32 0, i32 1
  store %struct.TYPE_29__* %386, %struct.TYPE_29__** %393, align 8
  %394 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %394, i32 0, i32 0
  %396 = load %struct.TYPE_35__*, %struct.TYPE_35__** %395, align 8
  %397 = load i32, i32* %6, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %396, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %399, i32 0, i32 0
  store i64 0, i64* %400, align 8
  br label %401

401:                                              ; preds = %375
  %402 = load i32, i32* %6, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %6, align 4
  br label %276

404:                                              ; preds = %276
  br label %405

405:                                              ; preds = %134, %327, %404, %181
  ret void
}

declare dso_local i8* @ME_GetParagraph(%struct.TYPE_29__*) #1

declare dso_local i32 @assert(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @ME_IsInTable(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @ME_GetTableRowEnd(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @ME_FindItemFwd(%struct.TYPE_29__*, i64) #1

declare dso_local %struct.TYPE_29__* @ME_AppendTableRow(%struct.TYPE_38__*, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @ME_GetTableRowStart(%struct.TYPE_29__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ME_WrapMarkedParagraphs(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_29__* @ME_FindItemBack(%struct.TYPE_29__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
