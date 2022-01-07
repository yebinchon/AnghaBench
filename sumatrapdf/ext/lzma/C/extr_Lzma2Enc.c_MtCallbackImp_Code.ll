; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Lzma2Enc.c_MtCallbackImp_Code.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Lzma2Enc.c_MtCallbackImp_Code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }

@SZ_OK = common dso_local global i64 0, align 8
@LZMA2_KEEP_WINDOW_SIZE = common dso_local global i32 0, align 4
@SZ_ERROR_FAIL = common dso_local global i64 0, align 8
@SZ_ERROR_PROGRESS = common dso_local global i64 0, align 8
@SZ_ERROR_OUTPUT_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i64*, i64*, i64*, i64, i32)* @MtCallbackImp_Code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MtCallbackImp_Code(i8* %0, i32 %1, i64* %2, i64* %3, i64* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %16, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %17, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %31
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %18, align 8
  %33 = load i64, i64* @SZ_OK, align 8
  store i64 %33, i64* %19, align 8
  %34 = load i64*, i64** %12, align 8
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %20, align 8
  %36 = load i64*, i64** %12, align 8
  store i64 0, i64* %36, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %116

39:                                               ; preds = %7
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 3
  %43 = call i32 @Lzma2EncInt_Init(%struct.TYPE_9__* %40, i32* %42)
  %44 = call i32 @RINOK(i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i64*, i64** %13, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i32, i32* @LZMA2_KEEP_WINDOW_SIZE, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @LzmaEnc_MemPrepare(i32 %47, i64* %48, i64 %49, i32 %50, i32 %53, i32 %56)
  %58 = call i32 @RINOK(i32 %57)
  br label %59

59:                                               ; preds = %104, %39
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %14, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %105

65:                                               ; preds = %59
  %66 = load i64, i64* %20, align 8
  %67 = load i64*, i64** %12, align 8
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %66, %68
  store i64 %69, i64* %21, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %71 = load i64*, i64** %11, align 8
  %72 = load i64*, i64** %12, align 8
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = call i64 @Lzma2EncInt_EncodeSubblock(%struct.TYPE_9__* %70, i64* %74, i64* %21, i32* null)
  store i64 %75, i64* %19, align 8
  %76 = load i64, i64* %19, align 8
  %77 = load i64, i64* @SZ_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  br label %105

80:                                               ; preds = %65
  %81 = load i64, i64* %21, align 8
  %82 = load i64*, i64** %12, align 8
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, %81
  store i64 %84, i64* %82, align 8
  %85 = load i64, i64* %21, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i64, i64* @SZ_ERROR_FAIL, align 8
  store i64 %88, i64* %19, align 8
  br label %105

89:                                               ; preds = %80
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %12, align 8
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @MtProgress_Set(i32* %92, i32 %93, i64 %96, i64 %98)
  %100 = load i64, i64* @SZ_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %89
  %103 = load i64, i64* @SZ_ERROR_PROGRESS, align 8
  store i64 %103, i64* %19, align 8
  br label %105

104:                                              ; preds = %89
  br label %59

105:                                              ; preds = %102, %87, %79, %59
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @LzmaEnc_Finish(i32 %108)
  %110 = load i64, i64* %19, align 8
  %111 = load i64, i64* @SZ_OK, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i64, i64* %19, align 8
  store i64 %114, i64* %8, align 8
  br label %134

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %7
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %116
  %120 = load i64*, i64** %12, align 8
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %20, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i64, i64* @SZ_ERROR_OUTPUT_EOF, align 8
  store i64 %125, i64* %8, align 8
  br label %134

126:                                              ; preds = %119
  %127 = load i64*, i64** %11, align 8
  %128 = load i64*, i64** %12, align 8
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %128, align 8
  %131 = getelementptr inbounds i64, i64* %127, i64 %129
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %126, %116
  %133 = load i64, i64* %19, align 8
  store i64 %133, i64* %8, align 8
  br label %134

134:                                              ; preds = %132, %124, %113
  %135 = load i64, i64* %8, align 8
  ret i64 %135
}

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @Lzma2EncInt_Init(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @LzmaEnc_MemPrepare(i32, i64*, i64, i32, i32, i32) #1

declare dso_local i64 @Lzma2EncInt_EncodeSubblock(%struct.TYPE_9__*, i64*, i64*, i32*) #1

declare dso_local i64 @MtProgress_Set(i32*, i32, i64, i64) #1

declare dso_local i32 @LzmaEnc_Finish(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
