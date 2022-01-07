; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_XzEnc.c_XzBlock_WriteHeader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_XzEnc.c_XzBlock_WriteHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i32, i64 }

@XZ_BLOCK_HEADER_SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XzBlock_WriteHeader(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @XZ_BLOCK_HEADER_SIZE_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  store i32 1, i32* %7, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = zext i32 %18 to i64
  %21 = getelementptr inbounds i64, i64* %14, i64 %20
  store i64 %17, i64* %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = call i64 @XzBlock_HasPackSize(%struct.TYPE_8__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %14, i64 %27
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @Xz_WriteVarInt(i64* %28, i64 %31)
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %25, %2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = call i64 @XzBlock_HasUnpackSize(%struct.TYPE_8__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %14, i64 %43
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @Xz_WriteVarInt(i64* %44, i64 %47)
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %41, %37
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = call i32 @XzBlock_GetNumFilters(%struct.TYPE_8__* %54)
  store i32 %55, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %106, %53
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %109

60:                                               ; preds = %56
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %14, i64 %68
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @Xz_WriteVarInt(i64* %69, i64 %72)
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %14, i64 %79
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @Xz_WriteVarInt(i64* %80, i64 %83)
  %85 = load i32, i32* %7, align 4
  %86 = zext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %14, i64 %90
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @memcpy(i64* %91, i32 %94, i64 %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = zext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %60
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %56

109:                                              ; preds = %56
  br label %110

110:                                              ; preds = %114, %109
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, 3
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i32, i32* %7, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %7, align 4
  %117 = zext i32 %115 to i64
  %118 = getelementptr inbounds i64, i64* %14, i64 %117
  store i64 0, i64* %118, align 8
  br label %110

119:                                              ; preds = %110
  %120 = load i32, i32* %7, align 4
  %121 = lshr i32 %120, 2
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %14, i64 0
  store i64 %122, i64* %123, align 16
  %124 = load i32, i32* %7, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %14, i64 %125
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @CrcCalc(i64* %14, i32 %127)
  %129 = call i32 @SetUi32(i64* %126, i32 %128)
  %130 = load i32*, i32** %4, align 8
  %131 = load i32, i32* %7, align 4
  %132 = add i32 %131, 4
  %133 = call i32 @WriteBytes(i32* %130, i64* %14, i32 %132)
  %134 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %134)
  ret i32 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @XzBlock_HasPackSize(%struct.TYPE_8__*) #2

declare dso_local i64 @Xz_WriteVarInt(i64*, i64) #2

declare dso_local i64 @XzBlock_HasUnpackSize(%struct.TYPE_8__*) #2

declare dso_local i32 @XzBlock_GetNumFilters(%struct.TYPE_8__*) #2

declare dso_local i32 @memcpy(i64*, i32, i64) #2

declare dso_local i32 @SetUi32(i64*, i32) #2

declare dso_local i32 @CrcCalc(i64*, i32) #2

declare dso_local i32 @WriteBytes(i32*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
