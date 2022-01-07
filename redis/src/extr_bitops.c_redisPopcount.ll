; ModuleID = '/home/carl/AnghaBench/redis/src/extr_bitops.c_redisPopcount.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_bitops.c_redisPopcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@redisPopcount.bitsinbyte = internal constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @redisPopcount(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %15 = load i8*, i8** %3, align 8
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %26, %2
  %17 = load i8*, i8** %6, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = and i64 %18, 3
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i1 [ false, %16 ], [ %23, %21 ]
  br i1 %25, label %26, label %38

26:                                               ; preds = %24
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  %29 = load i8, i8* %27, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* @redisPopcount.bitsinbyte, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i64
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %4, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %4, align 8
  br label %16

38:                                               ; preds = %24
  %39 = load i8*, i8** %6, align 8
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %7, align 8
  br label %41

41:                                               ; preds = %44, %38
  %42 = load i64, i64* %4, align 8
  %43 = icmp sge i64 %42, 28
  br i1 %43, label %44, label %191

44:                                               ; preds = %41
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %7, align 8
  %47 = load i32, i32* %45, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %7, align 8
  %50 = load i32, i32* %48, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %7, align 8
  %53 = load i32, i32* %51, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %7, align 8
  %56 = load i32, i32* %54, align 4
  store i32 %56, i32* %11, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %7, align 8
  %59 = load i32, i32* %57, align 4
  store i32 %59, i32* %12, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %7, align 8
  %62 = load i32, i32* %60, align 4
  store i32 %62, i32* %13, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %7, align 8
  %65 = load i32, i32* %63, align 4
  store i32 %65, i32* %14, align 4
  %66 = load i64, i64* %4, align 8
  %67 = sub nsw i64 %66, 28
  store i64 %67, i64* %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, 1
  %71 = and i32 %70, 1431655765
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, 858993459
  %75 = load i32, i32* %8, align 4
  %76 = ashr i32 %75, 2
  %77 = and i32 %76, 858993459
  %78 = add nsw i32 %74, %77
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = ashr i32 %80, 1
  %82 = and i32 %81, 1431655765
  %83 = sub nsw i32 %79, %82
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, 858993459
  %86 = load i32, i32* %9, align 4
  %87 = ashr i32 %86, 2
  %88 = and i32 %87, 858993459
  %89 = add nsw i32 %85, %88
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = ashr i32 %91, 1
  %93 = and i32 %92, 1431655765
  %94 = sub nsw i32 %90, %93
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = and i32 %95, 858993459
  %97 = load i32, i32* %10, align 4
  %98 = ashr i32 %97, 2
  %99 = and i32 %98, 858993459
  %100 = add nsw i32 %96, %99
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = ashr i32 %102, 1
  %104 = and i32 %103, 1431655765
  %105 = sub nsw i32 %101, %104
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = and i32 %106, 858993459
  %108 = load i32, i32* %11, align 4
  %109 = ashr i32 %108, 2
  %110 = and i32 %109, 858993459
  %111 = add nsw i32 %107, %110
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = ashr i32 %113, 1
  %115 = and i32 %114, 1431655765
  %116 = sub nsw i32 %112, %115
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = and i32 %117, 858993459
  %119 = load i32, i32* %12, align 4
  %120 = ashr i32 %119, 2
  %121 = and i32 %120, 858993459
  %122 = add nsw i32 %118, %121
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = ashr i32 %124, 1
  %126 = and i32 %125, 1431655765
  %127 = sub nsw i32 %123, %126
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = and i32 %128, 858993459
  %130 = load i32, i32* %13, align 4
  %131 = ashr i32 %130, 2
  %132 = and i32 %131, 858993459
  %133 = add nsw i32 %129, %132
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = ashr i32 %135, 1
  %137 = and i32 %136, 1431655765
  %138 = sub nsw i32 %134, %137
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = and i32 %139, 858993459
  %141 = load i32, i32* %14, align 4
  %142 = ashr i32 %141, 2
  %143 = and i32 %142, 858993459
  %144 = add nsw i32 %140, %143
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = ashr i32 %146, 4
  %148 = add nsw i32 %145, %147
  %149 = and i32 %148, 252645135
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = ashr i32 %151, 4
  %153 = add nsw i32 %150, %152
  %154 = and i32 %153, 252645135
  %155 = add nsw i32 %149, %154
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = ashr i32 %157, 4
  %159 = add nsw i32 %156, %158
  %160 = and i32 %159, 252645135
  %161 = add nsw i32 %155, %160
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = ashr i32 %163, 4
  %165 = add nsw i32 %162, %164
  %166 = and i32 %165, 252645135
  %167 = add nsw i32 %161, %166
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = ashr i32 %169, 4
  %171 = add nsw i32 %168, %170
  %172 = and i32 %171, 252645135
  %173 = add nsw i32 %167, %172
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = ashr i32 %175, 4
  %177 = add nsw i32 %174, %176
  %178 = and i32 %177, 252645135
  %179 = add nsw i32 %173, %178
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %14, align 4
  %182 = ashr i32 %181, 4
  %183 = add nsw i32 %180, %182
  %184 = and i32 %183, 252645135
  %185 = add nsw i32 %179, %184
  %186 = mul nsw i32 %185, 16843009
  %187 = ashr i32 %186, 24
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* %5, align 8
  %190 = add i64 %189, %188
  store i64 %190, i64* %5, align 8
  br label %41

191:                                              ; preds = %41
  %192 = load i32*, i32** %7, align 8
  %193 = bitcast i32* %192 to i8*
  store i8* %193, i8** %6, align 8
  br label %194

194:                                              ; preds = %198, %191
  %195 = load i64, i64* %4, align 8
  %196 = add nsw i64 %195, -1
  store i64 %196, i64* %4, align 8
  %197 = icmp ne i64 %195, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %194
  %199 = load i8*, i8** %6, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %6, align 8
  %201 = load i8, i8* %199, align 1
  %202 = zext i8 %201 to i64
  %203 = getelementptr inbounds [256 x i8], [256 x i8]* @redisPopcount.bitsinbyte, i64 0, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i64
  %206 = load i64, i64* %5, align 8
  %207 = add i64 %206, %205
  store i64 %207, i64* %5, align 8
  br label %194

208:                                              ; preds = %194
  %209 = load i64, i64* %5, align 8
  ret i64 %209
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
