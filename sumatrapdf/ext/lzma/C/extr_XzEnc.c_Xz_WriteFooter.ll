; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_XzEnc.c_Xz_WriteFooter.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_XzEnc.c_Xz_WriteFooter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@CRC_INIT_VAL = common dso_local global i32 0, align 4
@XZ_FOOTER_SIG = common dso_local global i32 0, align 4
@XZ_FOOTER_SIG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Xz_WriteFooter(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [32 x i64], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32, i32* @CRC_INIT_VAL, align 4
  store i32 %12, i32* %7, align 4
  %13 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @Xz_WriteVarInt(i64* %14, i64 %17)
  %19 = add i32 1, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %6, align 4
  %21 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  store i64 0, i64* %21, align 16
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @WriteBytesAndCrc(i32* %22, i64* %23, i32 %24, i32* %7)
  %26 = call i32 @RINOK(i32 %25)
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %62, %2
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %27
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %37
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %10, align 8
  %39 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @Xz_WriteVarInt(i64* %39, i64 %42)
  store i32 %43, i32* %8, align 4
  %44 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @Xz_WriteVarInt(i64* %47, i64 %50)
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @WriteBytesAndCrc(i32* %57, i64* %58, i32 %59, i32* %7)
  %61 = call i32 @RINOK(i32 %60)
  br label %62

62:                                               ; preds = %33
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %9, align 8
  br label %27

65:                                               ; preds = %27
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, 3
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 2
  store i64 0, i64* %71, align 16
  %72 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 1
  store i64 0, i64* %72, align 8
  %73 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  store i64 0, i64* %73, align 16
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %76 = load i32, i32* %8, align 4
  %77 = sub i32 4, %76
  %78 = call i32 @WriteBytesAndCrc(i32* %74, i64* %75, i32 %77, i32* %7)
  %79 = call i32 @RINOK(i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = sub i32 4, %80
  %82 = load i32, i32* %6, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %70, %65
  %85 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @CRC_GET_DIGEST(i32 %86)
  %88 = call i32 @SetUi32(i64* %85, i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %91 = call i32 @WriteBytes(i32* %89, i64* %90, i32 4)
  %92 = call i32 @RINOK(i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = add i32 %93, 4
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = lshr i32 %95, 2
  %97 = sub i32 %96, 1
  store i32 %97, i32* %11, align 4
  %98 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %99 = getelementptr inbounds i64, i64* %98, i64 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @SetUi32(i64* %99, i32 %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = ashr i32 %104, 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 8
  store i64 %106, i64* %107, align 16
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 255
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 9
  store i64 %112, i64* %113, align 8
  %114 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %115 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %116 = getelementptr inbounds i64, i64* %115, i64 4
  %117 = call i32 @CrcCalc(i64* %116, i32 6)
  %118 = call i32 @SetUi32(i64* %114, i32 %117)
  %119 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %120 = getelementptr inbounds i64, i64* %119, i64 10
  %121 = load i32, i32* @XZ_FOOTER_SIG, align 4
  %122 = load i32, i32* @XZ_FOOTER_SIG_SIZE, align 4
  %123 = call i32 @memcpy(i64* %120, i32 %121, i32 %122)
  %124 = load i32*, i32** %4, align 8
  %125 = getelementptr inbounds [32 x i64], [32 x i64]* %5, i64 0, i64 0
  %126 = call i32 @WriteBytes(i32* %124, i64* %125, i32 12)
  ret i32 %126
}

declare dso_local i32 @Xz_WriteVarInt(i64*, i64) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @WriteBytesAndCrc(i32*, i64*, i32, i32*) #1

declare dso_local i32 @SetUi32(i64*, i32) #1

declare dso_local i32 @CRC_GET_DIGEST(i32) #1

declare dso_local i32 @WriteBytes(i32*, i64*, i32) #1

declare dso_local i32 @CrcCalc(i64*, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
