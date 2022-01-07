; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_BlockChainStream_GetBlockAtOffset.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_BlockChainStream_GetBlockAtOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i8*, i8*, i32 }

@S_OK = common dso_local global i32 0, align 4
@BLOCK_END_OF_CHAIN = common dso_local global i64 0, align 8
@STG_E_DOCFILECORRUPT = common dso_local global i32 0, align 4
@STG_E_WRITEFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, %struct.TYPE_7__**, i64*, i64)* @BlockChainStream_GetBlockAtOffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BlockChainStream_GetBlockAtOffset(%struct.TYPE_6__* %0, i64 %1, %struct.TYPE_7__** %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_7__** %2, %struct.TYPE_7__*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %47, %5
  %15 = load i32, i32* %13, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %17
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %10, align 8
  store i64 %36, i64* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %44, align 8
  %45 = load i32, i32* @S_OK, align 4
  store i32 %45, i32* %6, align 4
  br label %147

46:                                               ; preds = %17
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %14

50:                                               ; preds = %14
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @BlockChainStream_GetSectorOfOffset(%struct.TYPE_6__* %51, i64 %52)
  %54 = load i64*, i64** %10, align 8
  store i64 %53, i64* %54, align 8
  %55 = load i64*, i64** %10, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @STG_E_DOCFILECORRUPT, align 4
  store i32 %60, i32* %6, align 4
  br label %147

61:                                               ; preds = %50
  %62 = load i64, i64* %11, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %143

64:                                               ; preds = %61
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 4294967295
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 0
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %12, align 8
  br label %109

77:                                               ; preds = %64
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 4294967295
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 1
  store %struct.TYPE_7__* %89, %struct.TYPE_7__** %12, align 8
  br label %108

90:                                               ; preds = %77
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %98
  store %struct.TYPE_7__* %99, %struct.TYPE_7__** %12, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %107

104:                                              ; preds = %90
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %90
  br label %108

108:                                              ; preds = %107, %85
  br label %109

109:                                              ; preds = %108, %72
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %132

114:                                              ; preds = %109
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @StorageImpl_WriteBigBlock(i32 %117, i64 %120, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %114
  %127 = load i32, i32* @STG_E_WRITEFAULT, align 4
  store i32 %127, i32* %6, align 4
  br label %147

128:                                              ; preds = %114
  %129 = load i8*, i8** @FALSE, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %128, %109
  %133 = load i8*, i8** @FALSE, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  %136 = load i64, i64* %8, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load i64*, i64** %10, align 8
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %132, %61
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %145 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__* %144, %struct.TYPE_7__** %145, align 8
  %146 = load i32, i32* @S_OK, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %143, %126, %59, %28
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i64 @BlockChainStream_GetSectorOfOffset(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @StorageImpl_WriteBigBlock(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
