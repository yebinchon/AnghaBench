; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_BlockChainStream_UpdateIndexCache.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_BlockChainStream_UpdateIndexCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64, i32, %struct.BlockChainRun* }
%struct.BlockChainRun = type { i64, i64, i64 }

@BLOCK_END_OF_CHAIN = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @BlockChainStream_UpdateIndexCache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BlockChainStream_UpdateIndexCache(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.BlockChainRun*, align 8
  %8 = alloca %struct.BlockChainRun*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  store %struct.BlockChainRun* null, %struct.BlockChainRun** %7, align 8
  store i64 0, i64* %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = call i64 @BlockChainStream_GetHeadOfChain(%struct.TYPE_4__* %15)
  store i64 %16, i64* %4, align 8
  br label %52

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  %20 = load %struct.BlockChainRun*, %struct.BlockChainRun** %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %20, i64 %25
  store %struct.BlockChainRun* %26, %struct.BlockChainRun** %7, align 8
  %27 = load %struct.BlockChainRun*, %struct.BlockChainRun** %7, align 8
  %28 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %5, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.BlockChainRun*, %struct.BlockChainRun** %7, align 8
  %35 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.BlockChainRun*, %struct.BlockChainRun** %7, align 8
  %38 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.BlockChainRun*, %struct.BlockChainRun** %7, align 8
  %42 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = call i32 @StorageImpl_GetNextBlockInChain(i32 %33, i64 %44, i64* %4)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @FAILED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %17
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %211

51:                                               ; preds = %17
  br label %52

52:                                               ; preds = %51, %14
  br label %53

53:                                               ; preds = %177, %52
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %178

57:                                               ; preds = %53
  %58 = load %struct.BlockChainRun*, %struct.BlockChainRun** %7, align 8
  %59 = icmp ne %struct.BlockChainRun* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load i64, i64* %4, align 8
  %62 = load %struct.BlockChainRun*, %struct.BlockChainRun** %7, align 8
  %63 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = add nsw i64 %64, %65
  %67 = load %struct.BlockChainRun*, %struct.BlockChainRun** %7, align 8
  %68 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = icmp ne i64 %61, %70
  br i1 %71, label %72, label %161

72:                                               ; preds = %60, %57
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = call i32 (...) @GetProcessHeap()
  %79 = call i8* @HeapAlloc(i32 %78, i32 0, i32 384)
  %80 = bitcast i8* %79 to %struct.BlockChainRun*
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 5
  store %struct.BlockChainRun* %80, %struct.BlockChainRun** %82, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 5
  %85 = load %struct.BlockChainRun*, %struct.BlockChainRun** %84, align 8
  %86 = icmp ne %struct.BlockChainRun* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %77
  %88 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %88, i32* %2, align 4
  br label %211

89:                                               ; preds = %77
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 16, i32* %91, align 4
  br label %141

92:                                               ; preds = %72
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %140

100:                                              ; preds = %92
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 2
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %9, align 8
  %106 = call i32 (...) @GetProcessHeap()
  %107 = load i64, i64* %9, align 8
  %108 = mul i64 24, %107
  %109 = trunc i64 %108 to i32
  %110 = call i8* @HeapAlloc(i32 %106, i32 0, i32 %109)
  %111 = bitcast i8* %110 to %struct.BlockChainRun*
  store %struct.BlockChainRun* %111, %struct.BlockChainRun** %8, align 8
  %112 = load %struct.BlockChainRun*, %struct.BlockChainRun** %8, align 8
  %113 = icmp ne %struct.BlockChainRun* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %100
  %115 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %115, i32* %2, align 4
  br label %211

116:                                              ; preds = %100
  %117 = load %struct.BlockChainRun*, %struct.BlockChainRun** %8, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 5
  %120 = load %struct.BlockChainRun*, %struct.BlockChainRun** %119, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = mul i64 24, %124
  %126 = trunc i64 %125 to i32
  %127 = call i32 @memcpy(%struct.BlockChainRun* %117, %struct.BlockChainRun* %120, i32 %126)
  %128 = call i32 (...) @GetProcessHeap()
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 5
  %131 = load %struct.BlockChainRun*, %struct.BlockChainRun** %130, align 8
  %132 = call i32 @HeapFree(i32 %128, i32 0, %struct.BlockChainRun* %131)
  %133 = load %struct.BlockChainRun*, %struct.BlockChainRun** %8, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 5
  store %struct.BlockChainRun* %133, %struct.BlockChainRun** %135, align 8
  %136 = load i64, i64* %9, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %116, %92
  br label %141

141:                                              ; preds = %140, %89
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 5
  %148 = load %struct.BlockChainRun*, %struct.BlockChainRun** %147, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %148, i64 %153
  store %struct.BlockChainRun* %154, %struct.BlockChainRun** %7, align 8
  %155 = load i64, i64* %4, align 8
  %156 = load %struct.BlockChainRun*, %struct.BlockChainRun** %7, align 8
  %157 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  %158 = load i64, i64* %5, align 8
  %159 = load %struct.BlockChainRun*, %struct.BlockChainRun** %7, align 8
  %160 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %159, i32 0, i32 2
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %141, %60
  %162 = load i64, i64* %5, align 8
  %163 = load %struct.BlockChainRun*, %struct.BlockChainRun** %7, align 8
  %164 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  %165 = load i64, i64* %5, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %5, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load i64, i64* %4, align 8
  %171 = call i32 @StorageImpl_GetNextBlockInChain(i32 %169, i64 %170, i64* %4)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = call i64 @FAILED(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %161
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %2, align 4
  br label %211

177:                                              ; preds = %161
  br label %53

178:                                              ; preds = %53
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %203

183:                                              ; preds = %178
  %184 = load %struct.BlockChainRun*, %struct.BlockChainRun** %7, align 8
  %185 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.BlockChainRun*, %struct.BlockChainRun** %7, align 8
  %188 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %186, %189
  %191 = load %struct.BlockChainRun*, %struct.BlockChainRun** %7, align 8
  %192 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = sub nsw i64 %190, %193
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 2
  store i64 %194, i64* %196, align 8
  %197 = load %struct.BlockChainRun*, %struct.BlockChainRun** %7, align 8
  %198 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, 1
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 3
  store i64 %200, i64* %202, align 8
  br label %209

203:                                              ; preds = %178
  %204 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 2
  store i64 %204, i64* %206, align 8
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 3
  store i64 0, i64* %208, align 8
  br label %209

209:                                              ; preds = %203, %183
  %210 = load i32, i32* @S_OK, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %209, %175, %114, %87, %49
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i64 @BlockChainStream_GetHeadOfChain(%struct.TYPE_4__*) #1

declare dso_local i32 @StorageImpl_GetNextBlockInChain(i32, i64, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(%struct.BlockChainRun*, %struct.BlockChainRun*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.BlockChainRun*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
