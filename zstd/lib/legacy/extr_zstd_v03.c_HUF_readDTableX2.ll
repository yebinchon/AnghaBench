; ModuleID = '/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v03.c_HUF_readDTableX2.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v03.c_HUF_readDTableX2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@HUF_MAX_SYMBOL_VALUE = common dso_local global i32 0, align 4
@HUF_ABSOLUTEMAX_TABLELOG = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i8*, i64)* @HUF_readDTableX2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_readDTableX2(i64* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_2__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_2__, align 8
  store i64* %0, i64** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %25 = load i32, i32* @HUF_MAX_SYMBOL_VALUE, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %8, align 8
  %29 = alloca i8*, i64 %27, align 16
  store i64 %27, i64* %9, align 8
  %30 = load i32, i32* @HUF_ABSOLUTEMAX_TABLELOG, align 4
  %31 = add nsw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = alloca i64, i64 %32, align 16
  store i64 %32, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast i8* %34 to i8**
  store i8** %35, i8*** %12, align 8
  %36 = load i8**, i8*** %12, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %38 to i64
  store i64 %39, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %40 = load i64*, i64** %5, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = bitcast i64* %41 to i8*
  store i8* %42, i8** %17, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = bitcast i8* %43 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %44, %struct.TYPE_2__** %18, align 8
  %45 = call i32 @HUF_STATIC_ASSERT(i32 0)
  %46 = load i32, i32* @HUF_MAX_SYMBOL_VALUE, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @HUF_readStats(i8** %29, i32 %47, i64* %33, i64* %14, i64* %11, i8* %48, i64 %49)
  store i64 %50, i64* %13, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i64 @HUF_isError(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %3
  %55 = load i64, i64* %13, align 8
  store i64 %55, i64* %4, align 8
  store i32 1, i32* %19, align 4
  br label %144

56:                                               ; preds = %3
  %57 = load i64, i64* %11, align 8
  %58 = load i64*, i64** %5, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ugt i64 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @tableLog_tooLarge, align 4
  %64 = call i64 @ERROR(i32 %63)
  store i64 %64, i64* %4, align 8
  store i32 1, i32* %19, align 4
  br label %144

65:                                               ; preds = %56
  %66 = load i64, i64* %11, align 8
  %67 = load i64*, i64** %5, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  store i64 %66, i64* %68, align 8
  store i64 0, i64* %16, align 8
  store i64 1, i64* %15, align 8
  br label %69

69:                                               ; preds = %86, %65
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp ule i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load i64, i64* %16, align 8
  store i64 %74, i64* %20, align 8
  %75 = load i64, i64* %15, align 8
  %76 = getelementptr inbounds i64, i64* %33, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %15, align 8
  %79 = sub i64 %78, 1
  %80 = shl i64 %77, %79
  %81 = load i64, i64* %16, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %16, align 8
  %83 = load i64, i64* %20, align 8
  %84 = load i64, i64* %15, align 8
  %85 = getelementptr inbounds i64, i64* %33, i64 %84
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %73
  %87 = load i64, i64* %15, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %15, align 8
  br label %69

89:                                               ; preds = %69
  store i64 0, i64* %15, align 8
  br label %90

90:                                               ; preds = %139, %89
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* %14, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %142

94:                                               ; preds = %90
  %95 = load i64, i64* %15, align 8
  %96 = getelementptr inbounds i8*, i8** %29, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = ptrtoint i8* %97 to i64
  store i64 %98, i64* %21, align 8
  %99 = load i64, i64* %21, align 8
  %100 = trunc i64 %99 to i32
  %101 = shl i32 1, %100
  %102 = ashr i32 %101, 1
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %22, align 8
  %104 = load i64, i64* %15, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i8* %105, i8** %106, align 8
  %107 = load i64, i64* %11, align 8
  %108 = add i64 %107, 1
  %109 = load i64, i64* %21, align 8
  %110 = sub i64 %108, %109
  %111 = inttoptr i64 %110 to i8*
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8* %111, i8** %112, align 8
  %113 = load i64, i64* %21, align 8
  %114 = getelementptr inbounds i64, i64* %33, i64 %113
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %23, align 8
  br label %116

116:                                              ; preds = %130, %94
  %117 = load i64, i64* %23, align 8
  %118 = load i64, i64* %21, align 8
  %119 = getelementptr inbounds i64, i64* %33, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %22, align 8
  %122 = add i64 %120, %121
  %123 = icmp ult i64 %117, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %116
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %126 = load i64, i64* %23, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %126
  %128 = bitcast %struct.TYPE_2__* %127 to i8*
  %129 = bitcast %struct.TYPE_2__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 16, i1 false)
  br label %130

130:                                              ; preds = %124
  %131 = load i64, i64* %23, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %23, align 8
  br label %116

133:                                              ; preds = %116
  %134 = load i64, i64* %22, align 8
  %135 = load i64, i64* %21, align 8
  %136 = getelementptr inbounds i64, i64* %33, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, %134
  store i64 %138, i64* %136, align 8
  br label %139

139:                                              ; preds = %133
  %140 = load i64, i64* %15, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %15, align 8
  br label %90

142:                                              ; preds = %90
  %143 = load i64, i64* %13, align 8
  store i64 %143, i64* %4, align 8
  store i32 1, i32* %19, align 4
  br label %144

144:                                              ; preds = %142, %62, %54
  %145 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i64, i64* %4, align 8
  ret i64 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HUF_STATIC_ASSERT(i32) #2

declare dso_local i64 @HUF_readStats(i8**, i32, i64*, i64*, i64*, i8*, i64) #2

declare dso_local i64 @HUF_isError(i64) #2

declare dso_local i64 @ERROR(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
