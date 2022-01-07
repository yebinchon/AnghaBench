; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_BlockChainStream_ReadAt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_BlockChainStream_ReadAt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"(%p)-> %i %p %i %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@STG_E_READFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BlockChainStream_ReadAt(%struct.TYPE_19__* %0, i64 %1, i32 %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_18__, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca %struct.TYPE_18__, align 8
  %22 = alloca %struct.TYPE_18__, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = bitcast %struct.TYPE_18__* %8 to { i64, i32 }*
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 0
  store i64 %1, i64* %26, align 8
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 1
  store i32 %2, i32* %27, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64* %5, i64** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sdiv i64 %29, %34
  store i64 %35, i64* %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = srem i64 %37, %42
  store i64 %43, i64* %14, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64*, i64** %12, align 8
  %51 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %44, i32 %47, i8* %48, i64 %49, i64* %50)
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call i64 @BlockChainStream_GetSectorOfOffset(%struct.TYPE_19__* %52, i64 %53)
  store i64 %54, i64* %16, align 8
  %55 = load i64*, i64** %12, align 8
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %57 = call { i64, i32 } @BlockChainStream_GetSize(%struct.TYPE_19__* %56)
  %58 = bitcast %struct.TYPE_18__* %21 to { i64, i32 }*
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %58, i32 0, i32 0
  %60 = extractvalue { i64, i32 } %57, 0
  store i64 %60, i64* %59, align 8
  %61 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %58, i32 0, i32 1
  %62 = extractvalue { i64, i32 } %57, 1
  store i32 %62, i32* %61, align 8
  %63 = bitcast %struct.TYPE_18__* %18 to i8*
  %64 = bitcast %struct.TYPE_18__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 16, i1 false)
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %66, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %6
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %72, %74
  %76 = load i64, i64* %10, align 8
  %77 = call i64 @min(i64 %75, i64 %76)
  store i64 %77, i64* %10, align 8
  br label %80

78:                                               ; preds = %6
  %79 = load i32, i32* @S_OK, align 4
  store i32 %79, i32* %7, align 4
  br label %188

80:                                               ; preds = %70
  %81 = load i8*, i8** %11, align 8
  %82 = bitcast i8* %81 to i32*
  store i32* %82, i32** %17, align 8
  br label %83

83:                                               ; preds = %185, %80
  %84 = load i64, i64* %10, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %186

86:                                               ; preds = %83
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %14, align 8
  %93 = sub nsw i64 %91, %92
  %94 = load i64, i64* %10, align 8
  %95 = call i64 @min(i64 %93, i64 %94)
  store i64 %95, i64* %15, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %15, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @BlockChainStream_GetBlockAtOffset(%struct.TYPE_19__* %96, i64 %97, %struct.TYPE_20__** %20, i64* %16, i32 %101)
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %19, align 4
  %104 = call i64 @FAILED(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %86
  %107 = load i32, i32* %19, align 4
  store i32 %107, i32* %7, align 4
  br label %188

108:                                              ; preds = %86
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %110 = icmp ne %struct.TYPE_20__* %109, null
  br i1 %110, label %131, label %111

111:                                              ; preds = %108
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  %115 = load i64, i64* %16, align 8
  %116 = call i64 @StorageImpl_GetBigBlockOffset(%struct.TYPE_21__* %114, i64 %115)
  %117 = load i64, i64* %14, align 8
  %118 = add nsw i64 %116, %117
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  store i64 %118, i64* %119, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %121, align 8
  %123 = load i32*, i32** %17, align 8
  %124 = load i64, i64* %15, align 8
  %125 = bitcast %struct.TYPE_18__* %22 to { i64, i32 }*
  %126 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %125, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @StorageImpl_ReadAt(%struct.TYPE_21__* %122, i64 %127, i32 %129, i32* %123, i64 %124, i64* %23)
  br label %168

131:                                              ; preds = %108
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %158, label %136

136:                                              ; preds = %131
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %138, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @StorageImpl_ReadBigBlock(%struct.TYPE_21__* %139, i32 %142, i64 %145, i64* %24)
  %147 = call i64 @FAILED(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %136
  %150 = load i64, i64* %24, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* @STG_E_READFAULT, align 4
  store i32 %153, i32* %7, align 4
  br label %188

154:                                              ; preds = %149, %136
  %155 = load i64, i64* @TRUE, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %154, %131
  %159 = load i32*, i32** %17, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %14, align 8
  %164 = add nsw i64 %162, %163
  %165 = load i64, i64* %15, align 8
  %166 = call i32 @memcpy(i32* %159, i64 %164, i64 %165)
  %167 = load i64, i64* %15, align 8
  store i64 %167, i64* %23, align 8
  br label %168

168:                                              ; preds = %158, %111
  %169 = load i64, i64* %13, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %13, align 8
  %171 = load i64, i64* %23, align 8
  %172 = load i32*, i32** %17, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 %171
  store i32* %173, i32** %17, align 8
  %174 = load i64, i64* %23, align 8
  %175 = load i64, i64* %10, align 8
  %176 = sub nsw i64 %175, %174
  store i64 %176, i64* %10, align 8
  %177 = load i64, i64* %23, align 8
  %178 = load i64*, i64** %12, align 8
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, %177
  store i64 %180, i64* %178, align 8
  store i64 0, i64* %14, align 8
  %181 = load i64, i64* %15, align 8
  %182 = load i64, i64* %23, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %168
  br label %186

185:                                              ; preds = %168
  br label %83

186:                                              ; preds = %184, %83
  %187 = load i32, i32* @S_OK, align 4
  store i32 %187, i32* %7, align 4
  br label %188

188:                                              ; preds = %186, %152, %106, %78
  %189 = load i32, i32* %7, align 4
  ret i32 %189
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_19__*, i32, i8*, i64, i64*) #1

declare dso_local i64 @BlockChainStream_GetSectorOfOffset(%struct.TYPE_19__*, i64) #1

declare dso_local { i64, i32 } @BlockChainStream_GetSize(%struct.TYPE_19__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @BlockChainStream_GetBlockAtOffset(%struct.TYPE_19__*, i64, %struct.TYPE_20__**, i64*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @StorageImpl_GetBigBlockOffset(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @StorageImpl_ReadAt(%struct.TYPE_21__*, i64, i32, i32*, i64, i64*) #1

declare dso_local i32 @StorageImpl_ReadBigBlock(%struct.TYPE_21__*, i32, i64, i64*) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
