; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_SmallBlockChainStream_ReadAt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_SmallBlockChainStream_ReadAt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }

@S_OK = common dso_local global i32 0, align 4
@BLOCK_END_OF_CHAIN = common dso_local global i64 0, align 8
@STG_E_DOCFILECORRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SmallBlockChainStream_ReadAt(%struct.TYPE_15__* %0, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %1, i64 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_14__, align 8
  %20 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64* %4, i64** %10, align 8
  %21 = load i32, i32* @S_OK, align 4
  store i32 %21, i32* %11, align 4
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sdiv i64 %24, %29
  store i64 %30, i64* %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = srem i64 %33, %38
  store i64 %39, i64* %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i64*, i64** %10, align 8
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  call void @SmallBlockChainStream_GetSize(%struct.TYPE_14__* sret %20, %struct.TYPE_15__* %47)
  %48 = bitcast %struct.TYPE_14__* %19 to i8*
  %49 = bitcast %struct.TYPE_14__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 24, i1 false)
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %51, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %5
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %57, %59
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @min(i64 %60, i64 %61)
  store i64 %62, i64* %8, align 8
  br label %65

63:                                               ; preds = %5
  %64 = load i32, i32* @S_OK, align 4
  store i32 %64, i32* %6, align 4
  br label %174

65:                                               ; preds = %55
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %67 = call i64 @SmallBlockChainStream_GetHeadOfChain(%struct.TYPE_15__* %66)
  store i64 %67, i64* %16, align 8
  br label %68

68:                                               ; preds = %86, %65
  %69 = load i64, i64* %13, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %74 = icmp ne i64 %72, %73
  br label %75

75:                                               ; preds = %71, %68
  %76 = phi i1 [ false, %68 ], [ %74, %71 ]
  br i1 %76, label %77, label %89

77:                                               ; preds = %75
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = load i64, i64* %16, align 8
  %80 = call i32 @SmallBlockChainStream_GetNextBlockInChain(%struct.TYPE_15__* %78, i64 %79, i64* %16)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i64 @FAILED(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %6, align 4
  br label %174

86:                                               ; preds = %77
  %87 = load i64, i64* %13, align 8
  %88 = add nsw i64 %87, -1
  store i64 %88, i64* %13, align 8
  br label %68

89:                                               ; preds = %75
  %90 = load i8*, i8** %9, align 8
  %91 = bitcast i8* %90 to i32*
  store i32* %91, i32** %18, align 8
  br label %92

92:                                               ; preds = %152, %89
  %93 = load i64, i64* %8, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i64, i64* %16, align 8
  %97 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %98 = icmp ne i64 %96, %97
  br label %99

99:                                               ; preds = %95, %92
  %100 = phi i1 [ false, %92 ], [ %98, %95 ]
  br i1 %100, label %101, label %172

101:                                              ; preds = %99
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %14, align 8
  %108 = sub nsw i64 %106, %107
  %109 = load i64, i64* %8, align 8
  %110 = call i64 @min(i64 %108, i64 %109)
  store i64 %110, i64* %15, align 8
  %111 = load i64, i64* %16, align 8
  %112 = trunc i64 %111 to i32
  %113 = sext i32 %112 to i64
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = mul nsw i64 %113, %118
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  store i64 %119, i64* %120, align 8
  %121 = load i64, i64* %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, %121
  store i64 %124, i64* %122, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i64, i64* %15, align 8
  %131 = load i32*, i32** %18, align 8
  %132 = call i32 @BlockChainStream_ReadAt(i32 %129, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %12, i64 %130, i32* %131, i64* %17)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i64 @FAILED(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %101
  %137 = load i32, i32* %11, align 4
  store i32 %137, i32* %6, align 4
  br label %174

138:                                              ; preds = %101
  %139 = load i64, i64* %17, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* @STG_E_DOCFILECORRUPT, align 4
  store i32 %142, i32* %6, align 4
  br label %174

143:                                              ; preds = %138
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %145 = load i64, i64* %16, align 8
  %146 = call i32 @SmallBlockChainStream_GetNextBlockInChain(%struct.TYPE_15__* %144, i64 %145, i64* %16)
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i64 @FAILED(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load i32, i32* @STG_E_DOCFILECORRUPT, align 4
  store i32 %151, i32* %6, align 4
  br label %174

152:                                              ; preds = %143
  %153 = load i64, i64* %17, align 8
  %154 = load i32*, i32** %18, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 %153
  store i32* %155, i32** %18, align 8
  %156 = load i64, i64* %17, align 8
  %157 = load i64, i64* %8, align 8
  %158 = sub nsw i64 %157, %156
  store i64 %158, i64* %8, align 8
  %159 = load i64, i64* %17, align 8
  %160 = load i64*, i64** %10, align 8
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, %159
  store i64 %162, i64* %160, align 8
  %163 = load i64, i64* %14, align 8
  %164 = load i64, i64* %17, align 8
  %165 = add nsw i64 %163, %164
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = srem i64 %165, %170
  store i64 %171, i64* %14, align 8
  br label %92

172:                                              ; preds = %99
  %173 = load i32, i32* @S_OK, align 4
  store i32 %173, i32* %6, align 4
  br label %174

174:                                              ; preds = %172, %150, %141, %136, %84, %63
  %175 = load i32, i32* %6, align 4
  ret i32 %175
}

declare dso_local i32 @assert(i32) #1

declare dso_local void @SmallBlockChainStream_GetSize(%struct.TYPE_14__* sret, %struct.TYPE_15__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @SmallBlockChainStream_GetHeadOfChain(%struct.TYPE_15__*) #1

declare dso_local i32 @SmallBlockChainStream_GetNextBlockInChain(%struct.TYPE_15__*, i64, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @BlockChainStream_ReadAt(i32, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8, i64, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
