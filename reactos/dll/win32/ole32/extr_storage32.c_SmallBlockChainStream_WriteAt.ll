; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_SmallBlockChainStream_WriteAt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_SmallBlockChainStream_WriteAt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }

@BLOCK_END_OF_CHAIN = common dso_local global i64 0, align 8
@STG_E_DOCFILECORRUPT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@STG_E_WRITEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SmallBlockChainStream_WriteAt(%struct.TYPE_13__* %0, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %1, i64 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64* %4, i64** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sdiv i64 %21, %26
  store i64 %27, i64* %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = srem i64 %30, %35
  store i64 %36, i64* %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %44 = call i64 @SmallBlockChainStream_GetHeadOfChain(%struct.TYPE_13__* %43)
  store i64 %44, i64* %15, align 8
  br label %45

45:                                               ; preds = %62, %5
  %46 = load i64, i64* %12, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %51 = icmp ne i64 %49, %50
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i1 [ false, %45 ], [ %51, %48 ]
  br i1 %53, label %54, label %65

54:                                               ; preds = %52
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %56 = load i64, i64* %15, align 8
  %57 = call i32 @SmallBlockChainStream_GetNextBlockInChain(%struct.TYPE_13__* %55, i64 %56, i64* %15)
  %58 = call i64 @FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @STG_E_DOCFILECORRUPT, align 4
  store i32 %61, i32* %6, align 4
  br label %156

62:                                               ; preds = %54
  %63 = load i64, i64* %12, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %12, align 8
  br label %45

65:                                               ; preds = %52
  %66 = load i64*, i64** %10, align 8
  store i64 0, i64* %66, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = bitcast i8* %67 to i32*
  store i32* %68, i32** %17, align 8
  br label %69

69:                                               ; preds = %127, %65
  %70 = load i64, i64* %8, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %75 = icmp ne i64 %73, %74
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i1 [ false, %69 ], [ %75, %72 ]
  br i1 %77, label %78, label %147

78:                                               ; preds = %76
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %13, align 8
  %85 = sub nsw i64 %83, %84
  %86 = load i64, i64* %8, align 8
  %87 = call i64 @min(i64 %85, i64 %86)
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %15, align 8
  %89 = trunc i64 %88 to i32
  %90 = sext i32 %89 to i64
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = mul nsw i64 %90, %95
  %97 = trunc i64 %96 to i32
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i32 %97, i32* %98, align 8
  %99 = load i64, i64* %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %99
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load i32*, i32** %17, align 8
  %112 = call i32 @BlockChainStream_WriteAt(i32 %109, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %11, i64 %110, i32* %111, i64* %16)
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %18, align 4
  %114 = call i64 @FAILED(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %78
  %117 = load i32, i32* %18, align 4
  store i32 %117, i32* %6, align 4
  br label %156

118:                                              ; preds = %78
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %120 = load i64, i64* %15, align 8
  %121 = call i32 @SmallBlockChainStream_GetNextBlockInChain(%struct.TYPE_13__* %119, i64 %120, i64* %15)
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = call i64 @FAILED(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* %18, align 4
  store i32 %126, i32* %6, align 4
  br label %156

127:                                              ; preds = %118
  %128 = load i64, i64* %16, align 8
  %129 = load i32*, i32** %17, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 %128
  store i32* %130, i32** %17, align 8
  %131 = load i64, i64* %16, align 8
  %132 = load i64, i64* %8, align 8
  %133 = sub nsw i64 %132, %131
  store i64 %133, i64* %8, align 8
  %134 = load i64, i64* %16, align 8
  %135 = load i64*, i64** %10, align 8
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, %134
  store i64 %137, i64* %135, align 8
  %138 = load i64, i64* %13, align 8
  %139 = load i64, i64* %16, align 8
  %140 = add nsw i64 %138, %139
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = srem i64 %140, %145
  store i64 %146, i64* %13, align 8
  br label %69

147:                                              ; preds = %76
  %148 = load i64, i64* %8, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load i32, i32* @S_OK, align 4
  br label %154

152:                                              ; preds = %147
  %153 = load i32, i32* @STG_E_WRITEFAULT, align 4
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %154, %125, %116, %60
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @SmallBlockChainStream_GetHeadOfChain(%struct.TYPE_13__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @SmallBlockChainStream_GetNextBlockInChain(%struct.TYPE_13__*, i64, i64*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @BlockChainStream_WriteAt(i32, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8, i64, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
