; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_BlockChainStream_WriteAt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_BlockChainStream_WriteAt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i64, i8*, i8*, i32 }

@.str = private unnamed_addr constant [42 x i8] c"not enough blocks in chain to write data\0A\00", align 1
@STG_E_READFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@S_OK = common dso_local global i32 0, align 4
@STG_E_WRITEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BlockChainStream_WriteAt(%struct.TYPE_13__* %0, i64 %1, i64 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca %struct.TYPE_12__, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i64 %1, i64* %22, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sdiv i64 %24, %29
  store i64 %30, i64* %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = srem i64 %32, %37
  store i64 %38, i64* %13, align 8
  %39 = load i64*, i64** %11, align 8
  store i64 0, i64* %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %16, align 8
  br label %42

42:                                               ; preds = %153, %5
  %43 = load i64, i64* %9, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %154

45:                                               ; preds = %42
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %13, align 8
  %52 = sub nsw i64 %50, %51
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @min(i64 %52, i64 %53)
  store i64 %54, i64* %14, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %14, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @BlockChainStream_GetBlockAtOffset(%struct.TYPE_13__* %55, i64 %56, %struct.TYPE_14__** %18, i64* %15, i32 %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = call i64 @FAILED(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %45
  %66 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* %17, align 4
  store i32 %67, i32* %6, align 4
  br label %163

68:                                               ; preds = %45
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %70 = icmp ne %struct.TYPE_14__* %69, null
  br i1 %70, label %88, label %71

71:                                               ; preds = %68
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = load i64, i64* %15, align 8
  %76 = call i64 @StorageImpl_GetBigBlockOffset(%struct.TYPE_15__* %74, i64 %75)
  %77 = load i64, i64* %13, align 8
  %78 = add nsw i64 %76, %77
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i64 %78, i64* %79, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = load i32*, i32** %16, align 8
  %84 = load i64, i64* %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @StorageImpl_WriteAt(%struct.TYPE_15__* %82, i64 %86, i32* %83, i64 %84, i64* %20)
  br label %136

88:                                               ; preds = %68
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %120, label %93

93:                                               ; preds = %88
  %94 = load i64, i64* %14, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %94, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %93
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @StorageImpl_ReadBigBlock(%struct.TYPE_15__* %104, i32 %107, i64 %110, i64* %21)
  %112 = call i64 @FAILED(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %101
  %115 = load i64, i64* %21, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* @STG_E_READFAULT, align 4
  store i32 %118, i32* %6, align 4
  br label %163

119:                                              ; preds = %114, %101
  br label %120

120:                                              ; preds = %119, %93, %88
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %13, align 8
  %125 = add nsw i64 %123, %124
  %126 = load i32*, i32** %16, align 8
  %127 = load i64, i64* %14, align 8
  %128 = call i32 @memcpy(i64 %125, i32* %126, i64 %127)
  %129 = load i64, i64* %14, align 8
  store i64 %129, i64* %20, align 8
  %130 = load i8*, i8** @TRUE, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** @TRUE, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %120, %71
  %137 = load i64, i64* %12, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %12, align 8
  %139 = load i64, i64* %20, align 8
  %140 = load i32*, i32** %16, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 %139
  store i32* %141, i32** %16, align 8
  %142 = load i64, i64* %20, align 8
  %143 = load i64, i64* %9, align 8
  %144 = sub nsw i64 %143, %142
  store i64 %144, i64* %9, align 8
  %145 = load i64, i64* %20, align 8
  %146 = load i64*, i64** %11, align 8
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, %145
  store i64 %148, i64* %146, align 8
  store i64 0, i64* %13, align 8
  %149 = load i64, i64* %20, align 8
  %150 = load i64, i64* %14, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %136
  br label %154

153:                                              ; preds = %136
  br label %42

154:                                              ; preds = %152, %42
  %155 = load i64, i64* %9, align 8
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i32, i32* @S_OK, align 4
  br label %161

159:                                              ; preds = %154
  %160 = load i32, i32* @STG_E_WRITEFAULT, align 4
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %161, %117, %65
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @BlockChainStream_GetBlockAtOffset(%struct.TYPE_13__*, i64, %struct.TYPE_14__**, i64*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @StorageImpl_GetBigBlockOffset(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @StorageImpl_WriteAt(%struct.TYPE_15__*, i64, i32*, i64, i64*) #1

declare dso_local i32 @StorageImpl_ReadBigBlock(%struct.TYPE_15__*, i32, i64, i64*) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
