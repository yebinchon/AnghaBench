; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_sortedDumpPage.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_sortedDumpPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"nCell=%d iPtr=%d flags=%d {\00", align 1
@SEGMENT_BTREE_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%2X:\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"##\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@LSM_OK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"      Page %d: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sortedDumpPage(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__, align 4
  %10 = alloca %struct.TYPE_14__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %28 = bitcast %struct.TYPE_15__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 12, i1 false)
  %29 = load i32*, i32** %7, align 8
  %30 = call i8* @fsPageData(i32* %29, i32* %16)
  store i8* %30, i8** %15, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @pageGetNRec(i8* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i8*, i8** %15, align 8
  %35 = load i32, i32* %16, align 4
  %36 = call i64 @pageGetPtr(i8* %34, i32 %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %13, align 4
  %38 = load i8*, i8** %15, align 8
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @pageGetFlags(i8* %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lsmStringInit(%struct.TYPE_14__* %10, i32 %43)
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 (%struct.TYPE_14__*, i8*, ...) @lsmStringAppendf(%struct.TYPE_14__* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @SEGMENT_BTREE_FLAG, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %53, %4
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %208, %54
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %211

59:                                               ; preds = %55
  store i32* null, i32** %17, align 8
  store i32 0, i32* %20, align 4
  store i8* null, i8** %21, align 8
  store i32 0, i32* %22, align 4
  %60 = load i8*, i8** %15, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i8* @pageGetCell(i8* %60, i32 %61, i32 %62)
  store i8* %63, i8** %24, align 8
  %64 = load i8*, i8** %24, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %24, align 8
  %66 = load i8, i8* %64, align 1
  %67 = sext i8 %66 to i32
  store i32 %67, i32* %26, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @SEGMENT_BTREE_FLAG, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %26, align 4
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %72, %59
  %76 = phi i1 [ true, %59 ], [ %74, %72 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i8*, i8** %24, align 8
  %80 = call i32 @lsmVarintGet32(i8* %79, i32* %25)
  %81 = load i8*, i8** %24, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %24, align 8
  %84 = load i32, i32* %26, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %75
  %87 = load i8*, i8** %24, align 8
  %88 = call i32 @lsmVarintGet64(i8* %87, i32* %27)
  %89 = load i8*, i8** %24, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %24, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %27, align 4
  %97 = call i32 @lsmFsDbPageGet(i32 %94, i32* %95, i32 %96, i32** %17)
  %98 = load i32*, i32** %6, align 8
  %99 = load i32*, i32** %17, align 8
  %100 = call i8* @pageGetKey(i32* %98, i32* %99, i32 0, i32* %23, i32* %20, %struct.TYPE_15__* %9)
  store i8* %100, i8** %19, align 8
  br label %133

101:                                              ; preds = %75
  %102 = load i8*, i8** %24, align 8
  %103 = call i32 @lsmVarintGet32(i8* %102, i32* %20)
  %104 = load i8*, i8** %24, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %24, align 8
  %107 = load i32, i32* %26, align 4
  %108 = call i64 @rtIsWrite(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %101
  %111 = load i8*, i8** %24, align 8
  %112 = call i32 @lsmVarintGet32(i8* %111, i32* %22)
  %113 = load i8*, i8** %24, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %24, align 8
  br label %116

116:                                              ; preds = %110, %101
  %117 = load i32*, i32** %7, align 8
  %118 = load i8*, i8** %24, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* %22, align 4
  %126 = add nsw i32 %124, %125
  %127 = call i32 @sortedReadData(i32 0, i32* %117, i32 %123, i32 %126, i8** %19, %struct.TYPE_15__* %9)
  %128 = load i8*, i8** %19, align 8
  %129 = load i32, i32* %20, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8* %131, i8** %21, align 8
  %132 = load i32, i32* %26, align 4
  store i32 %132, i32* %23, align 4
  br label %133

133:                                              ; preds = %116, %86
  %134 = load i32, i32* %11, align 4
  %135 = icmp eq i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %138 = load i32, i32* %23, align 4
  %139 = call i32 (%struct.TYPE_14__*, i8*, ...) @lsmStringAppendf(%struct.TYPE_14__* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %137, i32 %138)
  store i32 0, i32* %18, align 4
  br label %140

140:                                              ; preds = %163, %133
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* %20, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %166

144:                                              ; preds = %140
  %145 = load i8*, i8** %19, align 8
  %146 = load i32, i32* %18, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = call i64 @isalnum(i8 signext %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %144
  %153 = load i8*, i8** %19, align 8
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  br label %160

159:                                              ; preds = %144
  br label %160

160:                                              ; preds = %159, %152
  %161 = phi i32 [ %158, %152 ], [ 46, %159 ]
  %162 = call i32 (%struct.TYPE_14__*, i8*, ...) @lsmStringAppendf(%struct.TYPE_14__* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %18, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %18, align 4
  br label %140

166:                                              ; preds = %140
  %167 = load i32, i32* %22, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %201

169:                                              ; preds = %166
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %201

172:                                              ; preds = %169
  %173 = call i32 (%struct.TYPE_14__*, i8*, ...) @lsmStringAppendf(%struct.TYPE_14__* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %18, align 4
  br label %174

174:                                              ; preds = %197, %172
  %175 = load i32, i32* %18, align 4
  %176 = load i32, i32* %22, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %200

178:                                              ; preds = %174
  %179 = load i8*, i8** %21, align 8
  %180 = load i32, i32* %18, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = call i64 @isalnum(i8 signext %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %178
  %187 = load i8*, i8** %21, align 8
  %188 = load i32, i32* %18, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  br label %194

193:                                              ; preds = %178
  br label %194

194:                                              ; preds = %193, %186
  %195 = phi i32 [ %192, %186 ], [ 46, %193 ]
  %196 = call i32 (%struct.TYPE_14__*, i8*, ...) @lsmStringAppendf(%struct.TYPE_14__* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %194
  %198 = load i32, i32* %18, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %18, align 4
  br label %174

200:                                              ; preds = %174
  br label %201

201:                                              ; preds = %200, %169, %166
  %202 = load i32, i32* %25, align 4
  %203 = load i32, i32* %13, align 4
  %204 = add nsw i32 %202, %203
  %205 = call i32 (%struct.TYPE_14__*, i8*, ...) @lsmStringAppendf(%struct.TYPE_14__* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %204)
  %206 = load i32*, i32** %17, align 8
  %207 = call i32 @lsmFsPageRelease(i32* %206)
  br label %208

208:                                              ; preds = %201
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %11, align 4
  br label %55

211:                                              ; preds = %55
  %212 = call i32 @lsmStringAppend(%struct.TYPE_14__* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %214 = load i32, i32* @LSM_OK, align 4
  %215 = load i32*, i32** %7, align 8
  %216 = call i32 @lsmFsPageNumber(i32* %215)
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @lsmLogMessage(%struct.TYPE_13__* %213, i32 %214, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %216, i32 %218)
  %220 = call i32 @lsmStringClear(%struct.TYPE_14__* %10)
  %221 = call i32 @sortedBlobFree(%struct.TYPE_15__* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @fsPageData(i32*, i32*) #2

declare dso_local i32 @pageGetNRec(i8*, i32) #2

declare dso_local i64 @pageGetPtr(i8*, i32) #2

declare dso_local i32 @pageGetFlags(i8*, i32) #2

declare dso_local i32 @lsmStringInit(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @lsmStringAppendf(%struct.TYPE_14__*, i8*, ...) #2

declare dso_local i8* @pageGetCell(i8*, i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @lsmVarintGet32(i8*, i32*) #2

declare dso_local i32 @lsmVarintGet64(i8*, i32*) #2

declare dso_local i32 @lsmFsDbPageGet(i32, i32*, i32, i32**) #2

declare dso_local i8* @pageGetKey(i32*, i32*, i32, i32*, i32*, %struct.TYPE_15__*) #2

declare dso_local i64 @rtIsWrite(i32) #2

declare dso_local i32 @sortedReadData(i32, i32*, i32, i32, i8**, %struct.TYPE_15__*) #2

declare dso_local i64 @isalnum(i8 signext) #2

declare dso_local i32 @lsmFsPageRelease(i32*) #2

declare dso_local i32 @lsmStringAppend(%struct.TYPE_14__*, i8*, i32) #2

declare dso_local i32 @lsmLogMessage(%struct.TYPE_13__*, i32, i8*, i32, i32) #2

declare dso_local i32 @lsmFsPageNumber(i32*) #2

declare dso_local i32 @lsmStringClear(%struct.TYPE_14__*) #2

declare dso_local i32 @sortedBlobFree(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
