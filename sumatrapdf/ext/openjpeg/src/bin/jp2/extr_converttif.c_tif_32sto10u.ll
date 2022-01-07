; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_converttif.c_tif_32sto10u.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_converttif.c_tif_32sto10u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8**, i32)* @tif_32sto10u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tif_32sto10u(i64* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %90, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, -4
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %93

20:                                               ; preds = %15
  %21 = load i64*, i64** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %22, 0
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i64*, i64** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i64*, i64** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 2
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load i64*, i64** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, 3
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %54, i8*** %5, align 8
  store i8* %52, i8** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 3
  %57 = shl i32 %56, 6
  %58 = load i32, i32* %9, align 4
  %59 = ashr i32 %58, 4
  %60 = or i32 %57, %59
  %61 = zext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %5, align 8
  store i8* %62, i8** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 15
  %67 = shl i32 %66, 4
  %68 = load i32, i32* %10, align 4
  %69 = ashr i32 %68, 6
  %70 = or i32 %67, %69
  %71 = zext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %5, align 8
  store i8* %72, i8** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, 63
  %77 = shl i32 %76, 2
  %78 = load i32, i32* %11, align 4
  %79 = ashr i32 %78, 8
  %80 = or i32 %77, %79
  %81 = zext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i32 1
  store i8** %84, i8*** %5, align 8
  store i8* %82, i8** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i32 1
  store i8** %89, i8*** %5, align 8
  store i8* %87, i8** %88, align 8
  br label %90

90:                                               ; preds = %20
  %91 = load i32, i32* %7, align 4
  %92 = add i32 %91, 4
  store i32 %92, i32* %7, align 4
  br label %15

93:                                               ; preds = %15
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, 3
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %170

97:                                               ; preds = %93
  %98 = load i64*, i64** %4, align 8
  %99 = load i32, i32* %7, align 4
  %100 = add i32 %99, 0
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %98, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %105, 3
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ugt i32 %107, 1
  br i1 %108, label %109, label %128

109:                                              ; preds = %97
  %110 = load i64*, i64** %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = add i32 %111, 1
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ugt i32 %117, 2
  br i1 %118, label %119, label %127

119:                                              ; preds = %109
  %120 = load i64*, i64** %4, align 8
  %121 = load i32, i32* %7, align 4
  %122 = add i32 %121, 2
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %120, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %119, %109
  br label %128

128:                                              ; preds = %127, %97
  %129 = load i32, i32* %12, align 4
  %130 = ashr i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = load i8**, i8*** %5, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i32 1
  store i8** %134, i8*** %5, align 8
  store i8* %132, i8** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = and i32 %135, 3
  %137 = shl i32 %136, 6
  %138 = load i32, i32* %13, align 4
  %139 = ashr i32 %138, 4
  %140 = or i32 %137, %139
  %141 = zext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = load i8**, i8*** %5, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i32 1
  store i8** %144, i8*** %5, align 8
  store i8* %142, i8** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = icmp ugt i32 %145, 1
  br i1 %146, label %147, label %169

147:                                              ; preds = %128
  %148 = load i32, i32* %13, align 4
  %149 = and i32 %148, 15
  %150 = shl i32 %149, 4
  %151 = load i32, i32* %14, align 4
  %152 = ashr i32 %151, 6
  %153 = or i32 %150, %152
  %154 = zext i32 %153 to i64
  %155 = inttoptr i64 %154 to i8*
  %156 = load i8**, i8*** %5, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i32 1
  store i8** %157, i8*** %5, align 8
  store i8* %155, i8** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = icmp ugt i32 %158, 2
  br i1 %159, label %160, label %168

160:                                              ; preds = %147
  %161 = load i32, i32* %14, align 4
  %162 = and i32 %161, 63
  %163 = shl i32 %162, 2
  %164 = zext i32 %163 to i64
  %165 = inttoptr i64 %164 to i8*
  %166 = load i8**, i8*** %5, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i32 1
  store i8** %167, i8*** %5, align 8
  store i8* %165, i8** %166, align 8
  br label %168

168:                                              ; preds = %160, %147
  br label %169

169:                                              ; preds = %168, %128
  br label %170

170:                                              ; preds = %169, %93
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
