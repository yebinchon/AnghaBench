; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_SmallBlockChainStream_GetNextFreeBlock.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_SmallBlockChainStream_GetNextFreeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i32, i64, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_19__ }

@BLOCK_END_OF_CHAIN = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@BLOCK_UNUSED = common dso_local global i64 0, align 8
@MAX_BIG_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*)* @SmallBlockChainStream_GetNextFreeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SmallBlockChainStream_GetNextFreeBlock(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_19__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_19__, align 8
  %13 = alloca %struct.TYPE_19__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_19__, align 8
  %18 = alloca %struct.TYPE_19__, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* @S_OK, align 4
  store i32 %27, i32* %8, align 4
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %136, %1
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @BLOCK_UNUSED, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %137

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  %36 = trunc i64 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = bitcast %struct.TYPE_19__* %3 to { i32, i64 }*
  %47 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %46, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @BlockChainStream_ReadAt(i32 %45, i32 %48, i64 %50, i32 4, i32* %4, i64* %5)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @SUCCEEDED(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %34
  %56 = load i64, i64* %5, align 8
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = call i32 @StorageUtl_ReadDWord(i32* %4, i32 0, i64* %7)
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @BLOCK_UNUSED, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i64, i64* %6, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %63, %58
  br label %136

67:                                               ; preds = %55, %34
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @BlockChainStream_GetCount(i32 %72)
  store i64 %73, i64* %14, align 8
  %74 = load i32, i32* @MAX_BIG_BLOCK_SIZE, align 4
  %75 = zext i32 %74 to i64
  %76 = call i8* @llvm.stacksave()
  store i8* %76, i8** %15, align 8
  %77 = alloca i32, i64 %75, align 16
  store i64 %75, i64* %16, align 8
  %78 = load i64, i64* %14, align 8
  %79 = add nsw i64 %78, 1
  %80 = trunc i64 %79 to i32
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %80, %85
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = bitcast %struct.TYPE_19__* %17 to { i32, i64 }*
  %94 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %93, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @BlockChainStream_Enlarge(i32 %92, i32 %95, i64 %97)
  %99 = load i64, i64* @BLOCK_UNUSED, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @memset(i32* %77, i64 %99, i32 %104)
  %106 = load i64, i64* %14, align 8
  %107 = trunc i64 %106 to i32
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %107, %112
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  store i32 %113, i32* %114, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = bitcast %struct.TYPE_19__* %18 to { i32, i64 }*
  %126 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %125, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @BlockChainStream_WriteAt(i32 %119, i32 %127, i64 %129, i32 %124, i32* %77, i64* %19)
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %132, align 8
  %134 = call i32 @StorageImpl_SaveFileHeader(%struct.TYPE_22__* %133)
  %135 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %135)
  br label %136

136:                                              ; preds = %67, %66
  br label %30

137:                                              ; preds = %30
  %138 = load i64, i64* %6, align 8
  %139 = add nsw i64 %138, 1
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  store i64 %139, i64* %143, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = sdiv i64 %149, %154
  store i64 %155, i64* %9, align 8
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* %9, align 8
  %158 = sdiv i64 %156, %157
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %11, align 8
  %160 = load i64, i64* %11, align 8
  %161 = trunc i64 %160 to i32
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = mul nsw i32 %161, %166
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  store i32 %167, i32* %168, align 8
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = call { i32, i64 } @BlockChainStream_GetSize(i32 %173)
  %175 = bitcast %struct.TYPE_19__* %20 to { i32, i64 }*
  %176 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %175, i32 0, i32 0
  %177 = extractvalue { i32, i64 } %174, 0
  store i32 %177, i32* %176, align 8
  %178 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %175, i32 0, i32 1
  %179 = extractvalue { i32, i64 } %174, 1
  store i64 %179, i64* %178, align 8
  %180 = bitcast %struct.TYPE_19__* %12 to i8*
  %181 = bitcast %struct.TYPE_19__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %180, i8* align 8 %181, i64 16, i1 false)
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp sgt i32 %183, %185
  br i1 %186, label %187, label %222

187:                                              ; preds = %137
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = bitcast %struct.TYPE_19__* %13 to { i32, i64 }*
  %194 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %193, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @BlockChainStream_SetSize(i32 %192, i32 %195, i64 %197)
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %200, align 8
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @StorageImpl_ReadDirEntry(%struct.TYPE_22__* %201, i32 %207, %struct.TYPE_21__* %10)
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %210 = bitcast %struct.TYPE_19__* %209 to i8*
  %211 = bitcast %struct.TYPE_19__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %210, i8* align 8 %211, i64 16, i1 false)
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %213, align 8
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @StorageImpl_WriteDirEntry(%struct.TYPE_22__* %214, i32 %220, %struct.TYPE_21__* %10)
  br label %222

222:                                              ; preds = %187, %137
  %223 = load i64, i64* %6, align 8
  ret i64 %223
}

declare dso_local i32 @BlockChainStream_ReadAt(i32, i32, i64, i32, i32*, i64*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @StorageUtl_ReadDWord(i32*, i32, i64*) #1

declare dso_local i64 @BlockChainStream_GetCount(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @BlockChainStream_Enlarge(i32, i32, i64) #1

declare dso_local i32 @memset(i32*, i64, i32) #1

declare dso_local i32 @BlockChainStream_WriteAt(i32, i32, i64, i32, i32*, i64*) #1

declare dso_local i32 @StorageImpl_SaveFileHeader(%struct.TYPE_22__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local { i32, i64 } @BlockChainStream_GetSize(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @BlockChainStream_SetSize(i32, i32, i64) #1

declare dso_local i32 @StorageImpl_ReadDirEntry(%struct.TYPE_22__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @StorageImpl_WriteDirEntry(%struct.TYPE_22__*, i32, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
