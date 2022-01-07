; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_converttif.c_tif_32sto14u.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_converttif.c_tif_32sto14u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8**, i32)* @tif_32sto14u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tif_32sto14u(i64* %0, i8** %1, i32 %2) #0 {
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

15:                                               ; preds = %102, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, -4
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %105

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
  %50 = ashr i32 %49, 6
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %54, i8*** %5, align 8
  store i8* %52, i8** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 63
  %57 = shl i32 %56, 2
  %58 = load i32, i32* %9, align 4
  %59 = ashr i32 %58, 12
  %60 = or i32 %57, %59
  %61 = zext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %5, align 8
  store i8* %62, i8** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = ashr i32 %65, 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %5, align 8
  store i8* %68, i8** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, 15
  %73 = shl i32 %72, 4
  %74 = load i32, i32* %10, align 4
  %75 = ashr i32 %74, 10
  %76 = or i32 %73, %75
  %77 = zext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %5, align 8
  store i8* %78, i8** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = ashr i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i32 1
  store i8** %86, i8*** %5, align 8
  store i8* %84, i8** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = and i32 %87, 3
  %89 = shl i32 %88, 6
  %90 = load i32, i32* %11, align 4
  %91 = ashr i32 %90, 8
  %92 = or i32 %89, %91
  %93 = zext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i32 1
  store i8** %96, i8*** %5, align 8
  store i8* %94, i8** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i32 1
  store i8** %101, i8*** %5, align 8
  store i8* %99, i8** %100, align 8
  br label %102

102:                                              ; preds = %20
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %103, 4
  store i32 %104, i32* %7, align 4
  br label %15

105:                                              ; preds = %15
  %106 = load i32, i32* %6, align 4
  %107 = and i32 %106, 3
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %194

109:                                              ; preds = %105
  %110 = load i64*, i64** %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = add i32 %111, 0
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, 3
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ugt i32 %119, 1
  br i1 %120, label %121, label %140

121:                                              ; preds = %109
  %122 = load i64*, i64** %4, align 8
  %123 = load i32, i32* %7, align 4
  %124 = add i32 %123, 1
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %122, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ugt i32 %129, 2
  br i1 %130, label %131, label %139

131:                                              ; preds = %121
  %132 = load i64*, i64** %4, align 8
  %133 = load i32, i32* %7, align 4
  %134 = add i32 %133, 2
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %132, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %131, %121
  br label %140

140:                                              ; preds = %139, %109
  %141 = load i32, i32* %12, align 4
  %142 = ashr i32 %141, 6
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  %145 = load i8**, i8*** %5, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i32 1
  store i8** %146, i8*** %5, align 8
  store i8* %144, i8** %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = and i32 %147, 63
  %149 = shl i32 %148, 2
  %150 = load i32, i32* %13, align 4
  %151 = ashr i32 %150, 12
  %152 = or i32 %149, %151
  %153 = zext i32 %152 to i64
  %154 = inttoptr i64 %153 to i8*
  %155 = load i8**, i8*** %5, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i32 1
  store i8** %156, i8*** %5, align 8
  store i8* %154, i8** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = icmp ugt i32 %157, 1
  br i1 %158, label %159, label %193

159:                                              ; preds = %140
  %160 = load i32, i32* %13, align 4
  %161 = ashr i32 %160, 4
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i8*
  %164 = load i8**, i8*** %5, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i32 1
  store i8** %165, i8*** %5, align 8
  store i8* %163, i8** %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = and i32 %166, 15
  %168 = shl i32 %167, 4
  %169 = load i32, i32* %14, align 4
  %170 = ashr i32 %169, 10
  %171 = or i32 %168, %170
  %172 = zext i32 %171 to i64
  %173 = inttoptr i64 %172 to i8*
  %174 = load i8**, i8*** %5, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i32 1
  store i8** %175, i8*** %5, align 8
  store i8* %173, i8** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = icmp ugt i32 %176, 2
  br i1 %177, label %178, label %192

178:                                              ; preds = %159
  %179 = load i32, i32* %14, align 4
  %180 = ashr i32 %179, 2
  %181 = sext i32 %180 to i64
  %182 = inttoptr i64 %181 to i8*
  %183 = load i8**, i8*** %5, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i32 1
  store i8** %184, i8*** %5, align 8
  store i8* %182, i8** %183, align 8
  %185 = load i32, i32* %14, align 4
  %186 = and i32 %185, 3
  %187 = shl i32 %186, 6
  %188 = zext i32 %187 to i64
  %189 = inttoptr i64 %188 to i8*
  %190 = load i8**, i8*** %5, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i32 1
  store i8** %191, i8*** %5, align 8
  store i8* %189, i8** %190, align 8
  br label %192

192:                                              ; preds = %178, %159
  br label %193

193:                                              ; preds = %192, %140
  br label %194

194:                                              ; preds = %193, %105
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
