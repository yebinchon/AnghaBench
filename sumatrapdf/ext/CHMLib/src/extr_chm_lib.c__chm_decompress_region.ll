; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__chm_decompress_region.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__chm_decompress_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i64*, i64, i32, i32, i32, i32, i32, i32**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.chmFile*, i32*, i64, i64)* @_chm_decompress_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_chm_decompress_region(%struct.chmFile* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.chmFile*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.chmFile* %0, %struct.chmFile** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %158

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %22 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = udiv i64 %20, %24
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %28 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = urem i64 %26, %30
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %35 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = sub i64 %37, %38
  %40 = icmp ugt i64 %33, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %19
  %42 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %43 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = sub i64 %45, %46
  store i64 %47, i64* %12, align 8
  br label %48

48:                                               ; preds = %41, %19
  %49 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %50 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @CHM_ACQUIRE_LOCK(i32 %51)
  %53 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %54 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @CHM_ACQUIRE_LOCK(i32 %55)
  %57 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %58 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %62 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = urem i64 %60, %63
  %65 = getelementptr inbounds i64, i64* %59, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %107

69:                                               ; preds = %48
  %70 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %71 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %70, i32 0, i32 7
  %72 = load i32**, i32*** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %75 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = urem i64 %73, %76
  %78 = getelementptr inbounds i32*, i32** %72, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %107

81:                                               ; preds = %69
  %82 = load i32*, i32** %7, align 8
  %83 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %84 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %83, i32 0, i32 7
  %85 = load i32**, i32*** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %88 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = urem i64 %86, %89
  %91 = getelementptr inbounds i32*, i32** %85, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i64, i64* %12, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memcpy(i32* %82, i32* %94, i32 %96)
  %98 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %99 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @CHM_RELEASE_LOCK(i32 %100)
  %102 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %103 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @CHM_RELEASE_LOCK(i32 %104)
  %106 = load i64, i64* %12, align 8
  store i64 %106, i64* %5, align 8
  br label %158

107:                                              ; preds = %69, %48
  %108 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %109 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @CHM_RELEASE_LOCK(i32 %110)
  %112 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %113 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %107
  %117 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %118 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ffs(i32 %119)
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  %122 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %123 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %122, i32 0, i32 2
  store i32 -1, i32* %123, align 8
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @LZXinit(i32 %124)
  %126 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %127 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %116, %107
  %129 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %130 = load i64, i64* %10, align 8
  %131 = call i64 @_chm_decompress_block(%struct.chmFile* %129, i64 %130, i32** %14)
  store i64 %131, i64* %13, align 8
  %132 = load i64, i64* %13, align 8
  %133 = icmp eq i64 %132, -1
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %136 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @CHM_RELEASE_LOCK(i32 %137)
  store i64 0, i64* %5, align 8
  br label %158

139:                                              ; preds = %128
  %140 = load i64, i64* %13, align 8
  %141 = load i64, i64* %12, align 8
  %142 = icmp ult i64 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i64, i64* %13, align 8
  store i64 %144, i64* %12, align 8
  br label %145

145:                                              ; preds = %143, %139
  %146 = load i32*, i32** %7, align 8
  %147 = load i32*, i32** %14, align 8
  %148 = load i64, i64* %11, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i64, i64* %12, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @memcpy(i32* %146, i32* %149, i32 %151)
  %153 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %154 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @CHM_RELEASE_LOCK(i32 %155)
  %157 = load i64, i64* %12, align 8
  store i64 %157, i64* %5, align 8
  br label %158

158:                                              ; preds = %145, %134, %81, %18
  %159 = load i64, i64* %5, align 8
  ret i64 %159
}

declare dso_local i32 @CHM_ACQUIRE_LOCK(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @CHM_RELEASE_LOCK(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @LZXinit(i32) #1

declare dso_local i64 @_chm_decompress_block(%struct.chmFile*, i64, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
