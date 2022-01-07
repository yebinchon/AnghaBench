; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_ME_WrapMarkedParagraphs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_ME_WrapMarkedParagraphs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32, i64, i64, %struct.TYPE_33__*, %struct.TYPE_30__, %struct.TYPE_37__*, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_37__* }
%struct.TYPE_30__ = type { i64, i64 }
%struct.TYPE_37__ = type { i64, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32, %struct.TYPE_34__, %struct.TYPE_37__*, %struct.TYPE_37__*, %struct.TYPE_37__*, i32 }
%struct.TYPE_34__ = type { i32, i64 }
%struct.TYPE_38__ = type { %struct.TYPE_34__, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64, i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@diParagraph = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ME_WrapMarkedParagraphs(%struct.TYPE_35__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_35__*, align 8
  %4 = alloca %struct.TYPE_37__*, align 8
  %5 = alloca %struct.TYPE_38__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_37__*, align 8
  %10 = alloca %struct.TYPE_37__*, align 8
  %11 = alloca %struct.TYPE_36__*, align 8
  %12 = alloca %struct.TYPE_37__*, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %3, align 8
  %13 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %9, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %10, align 8
  %16 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %19 = icmp ne %struct.TYPE_37__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %296

22:                                               ; preds = %1
  %23 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %24 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ITextHost_TxGetDC(i32 %26)
  %28 = call i32 @ME_InitContext(%struct.TYPE_38__* %5, %struct.TYPE_35__* %23, i32 %27)
  %29 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_37__*, %struct.TYPE_37__** %30, align 8
  store %struct.TYPE_37__* %31, %struct.TYPE_37__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %5, i32 0, i32 0
  %33 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %35, i32 0, i32 1
  %37 = bitcast %struct.TYPE_34__* %32 to i8*
  %38 = bitcast %struct.TYPE_34__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  br label %39

39:                                               ; preds = %214, %22
  %40 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %41 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_33__*, %struct.TYPE_33__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_37__*, %struct.TYPE_37__** %44, align 8
  %46 = icmp ne %struct.TYPE_37__* %40, %45
  br i1 %46, label %47, label %223

47:                                               ; preds = %39
  %48 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @diParagraph, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %8, align 4
  %60 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %61 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %62 = call i32 @ME_WrapTextParagraph(%struct.TYPE_35__* %60, %struct.TYPE_38__* %5, %struct.TYPE_37__* %61)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %47
  %67 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %76 = call i32 @get_total_width(%struct.TYPE_35__* %75)
  store i32 %76, i32* %6, align 4
  br label %85

77:                                               ; preds = %66, %47
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @max(i32 %78, i32 %83)
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %77, %74
  %86 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %95, i32 0, i32 4
  %97 = load %struct.TYPE_37__*, %struct.TYPE_37__** %96, align 8
  %98 = call i32 @ME_MarkRepaintEnd(%struct.TYPE_37__* %97, %struct.TYPE_37__** %9, %struct.TYPE_37__** %10)
  br label %99

99:                                               ; preds = %92, %85
  %100 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %101 = call i32 @ME_MarkRepaintEnd(%struct.TYPE_37__* %100, %struct.TYPE_37__** %9, %struct.TYPE_37__** %10)
  %102 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %103 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %104 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %105 = call i32 @adjust_para_y(%struct.TYPE_37__* %102, %struct.TYPE_38__* %5, %struct.TYPE_37__* %103, %struct.TYPE_37__* %104)
  %106 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_37__*, %struct.TYPE_37__** %109, align 8
  %111 = icmp ne %struct.TYPE_37__* %110, null
  br i1 %111, label %112, label %188

112:                                              ; preds = %99
  %113 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %5, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_37__*, %struct.TYPE_37__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %115, %125
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %187

129:                                              ; preds = %112
  %130 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %131, i32 0, i32 0
  store %struct.TYPE_36__* %132, %struct.TYPE_36__** %11, align 8
  br label %133

133:                                              ; preds = %160, %129
  %134 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_37__*, %struct.TYPE_37__** %135, align 8
  %137 = icmp ne %struct.TYPE_37__* %136, null
  br i1 %137, label %138, label %158

138:                                              ; preds = %133
  %139 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %140 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_37__*, %struct.TYPE_37__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 0
  %147 = icmp ne %struct.TYPE_36__* %139, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %138
  %149 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %150 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_37__*, %struct.TYPE_37__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %155, i32 0, i32 0
  %157 = icmp ne %struct.TYPE_36__* %149, %156
  br label %158

158:                                              ; preds = %148, %138, %133
  %159 = phi i1 [ false, %138 ], [ false, %133 ], [ %157, %148 ]
  br i1 %159, label %160, label %186

160:                                              ; preds = %158
  %161 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_37__*, %struct.TYPE_37__** %162, align 8
  %164 = call i32 @ME_MarkRepaintEnd(%struct.TYPE_37__* %163, %struct.TYPE_37__** %9, %struct.TYPE_37__** %10)
  %165 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %5, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_37__*, %struct.TYPE_37__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %173, i32 0, i32 0
  store i32 %167, i32* %174, align 8
  %175 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_37__*, %struct.TYPE_37__** %176, align 8
  %178 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %179 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %180 = call i32 @adjust_para_y(%struct.TYPE_37__* %177, %struct.TYPE_38__* %5, %struct.TYPE_37__* %178, %struct.TYPE_37__* %179)
  %181 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %181, i32 0, i32 3
  %183 = load %struct.TYPE_37__*, %struct.TYPE_37__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %184, i32 0, i32 0
  store %struct.TYPE_36__* %185, %struct.TYPE_36__** %11, align 8
  br label %133

186:                                              ; preds = %158
  br label %187

187:                                              ; preds = %186, %112
  br label %188

188:                                              ; preds = %187, %99
  %189 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_37__*, %struct.TYPE_37__** %192, align 8
  %194 = icmp ne %struct.TYPE_37__* %193, null
  br i1 %194, label %195, label %205

195:                                              ; preds = %188
  %196 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  store %struct.TYPE_37__* %196, %struct.TYPE_37__** %12, align 8
  %197 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_37__*, %struct.TYPE_37__** %200, align 8
  store %struct.TYPE_37__* %201, %struct.TYPE_37__** %4, align 8
  %202 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %203 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %204 = call i32 @remove_marked_para(%struct.TYPE_35__* %202, %struct.TYPE_37__* %203)
  br label %214

205:                                              ; preds = %188
  %206 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %207 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %208 = call i32 @remove_marked_para(%struct.TYPE_35__* %206, %struct.TYPE_37__* %207)
  %209 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_33__*, %struct.TYPE_33__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_37__*, %struct.TYPE_37__** %212, align 8
  store %struct.TYPE_37__* %213, %struct.TYPE_37__** %4, align 8
  br label %214

214:                                              ; preds = %205, %195
  %215 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %5, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  br label %39

223:                                              ; preds = %39
  %224 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %5, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %5, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = sub nsw i64 %226, %229
  %231 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %232, i32 0, i32 1
  store i64 %230, i64* %233, align 8
  %234 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %5, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %5, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = sub nsw i64 %236, %239
  %241 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %241, i32 0, i32 4
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %242, i32 0, i32 0
  store i64 %240, i64* %243, align 8
  %244 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %5, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %248, i32 0, i32 1
  store i64 %247, i64* %249, align 8
  %250 = load i32, i32* %6, align 4
  %251 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %251, i32 0, i32 0
  store i32 %250, i32* %252, align 8
  %253 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %253, i32 0, i32 3
  %255 = load %struct.TYPE_33__*, %struct.TYPE_33__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_37__*, %struct.TYPE_37__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %260, i32 0, i32 1
  store i64 0, i64* %261, align 8
  %262 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %5, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %265, i32 0, i32 3
  %267 = load %struct.TYPE_33__*, %struct.TYPE_33__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_37__*, %struct.TYPE_37__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %272, i32 0, i32 0
  store i32 %264, i32* %273, align 8
  %274 = call i32 @ME_DestroyContext(%struct.TYPE_38__* %5)
  %275 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %276 = icmp ne %struct.TYPE_37__* %275, null
  br i1 %276, label %285, label %277

277:                                              ; preds = %223
  %278 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = icmp slt i64 %280, %283
  br i1 %284, label %285, label %290

285:                                              ; preds = %277, %223
  %286 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %287 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %288 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %289 = call i32 @ME_InvalidateParagraphRange(%struct.TYPE_35__* %286, %struct.TYPE_37__* %287, %struct.TYPE_37__* %288)
  br label %290

290:                                              ; preds = %285, %277
  %291 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %292 = icmp ne %struct.TYPE_37__* %291, null
  %293 = xor i1 %292, true
  %294 = xor i1 %293, true
  %295 = zext i1 %294 to i32
  store i32 %295, i32* %2, align 4
  br label %296

296:                                              ; preds = %290, %20
  %297 = load i32, i32* %2, align 4
  ret i32 %297
}

declare dso_local i32 @ME_InitContext(%struct.TYPE_38__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @ITextHost_TxGetDC(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ME_WrapTextParagraph(%struct.TYPE_35__*, %struct.TYPE_38__*, %struct.TYPE_37__*) #1

declare dso_local i32 @get_total_width(%struct.TYPE_35__*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ME_MarkRepaintEnd(%struct.TYPE_37__*, %struct.TYPE_37__**, %struct.TYPE_37__**) #1

declare dso_local i32 @adjust_para_y(%struct.TYPE_37__*, %struct.TYPE_38__*, %struct.TYPE_37__*, %struct.TYPE_37__*) #1

declare dso_local i32 @remove_marked_para(%struct.TYPE_35__*, %struct.TYPE_37__*) #1

declare dso_local i32 @ME_DestroyContext(%struct.TYPE_38__*) #1

declare dso_local i32 @ME_InvalidateParagraphRange(%struct.TYPE_35__*, %struct.TYPE_37__*, %struct.TYPE_37__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
