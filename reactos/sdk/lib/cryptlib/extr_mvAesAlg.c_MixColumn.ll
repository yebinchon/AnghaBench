; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/cryptlib/extr_mvAesAlg.c_MixColumn.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/cryptlib/extr_mvAesAlg.c_MixColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXBC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MixColumn(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @MAXBC, align 4
  %10 = zext i32 %9 to i64
  %11 = load i32, i32* @MAXBC, align 4
  %12 = zext i32 %11 to i64
  %13 = load i32, i32* @MAXBC, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = mul nuw i64 4, %14
  %17 = alloca i32, i64 %16, align 16
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %174, %2
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %177

21:                                               ; preds = %18
  %22 = load i32*, i32** %3, align 8
  %23 = mul nsw i64 0, %10
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mul(i32 25, i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = mul nsw i64 1, %10
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mul(i32 1, i32 %36)
  %38 = xor i32 %29, %37
  %39 = load i32*, i32** %3, align 8
  %40 = mul nsw i64 2, %10
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %38, %45
  %47 = load i32*, i32** %3, align 8
  %48 = mul nsw i64 3, %10
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %46, %53
  %55 = mul nsw i64 0, %14
  %56 = getelementptr inbounds i32, i32* %17, i64 %55
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %54, i32* %59, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = mul nsw i64 1, %10
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @mul(i32 25, i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = mul nsw i64 2, %10
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mul(i32 1, i32 %74)
  %76 = xor i32 %67, %75
  %77 = load i32*, i32** %3, align 8
  %78 = mul nsw i64 3, %10
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %76, %83
  %85 = load i32*, i32** %3, align 8
  %86 = mul nsw i64 0, %10
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %84, %91
  %93 = mul nsw i64 1, %14
  %94 = getelementptr inbounds i32, i32* %17, i64 %93
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %92, i32* %97, align 4
  %98 = load i32*, i32** %3, align 8
  %99 = mul nsw i64 2, %10
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mul(i32 25, i32 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = mul nsw i64 3, %10
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @mul(i32 1, i32 %112)
  %114 = xor i32 %105, %113
  %115 = load i32*, i32** %3, align 8
  %116 = mul nsw i64 0, %10
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = xor i32 %114, %121
  %123 = load i32*, i32** %3, align 8
  %124 = mul nsw i64 1, %10
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = xor i32 %122, %129
  %131 = mul nsw i64 2, %14
  %132 = getelementptr inbounds i32, i32* %17, i64 %131
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %130, i32* %135, align 4
  %136 = load i32*, i32** %3, align 8
  %137 = mul nsw i64 3, %10
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @mul(i32 25, i32 %142)
  %144 = load i32*, i32** %3, align 8
  %145 = mul nsw i64 0, %10
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @mul(i32 1, i32 %150)
  %152 = xor i32 %143, %151
  %153 = load i32*, i32** %3, align 8
  %154 = mul nsw i64 1, %10
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = xor i32 %152, %159
  %161 = load i32*, i32** %3, align 8
  %162 = mul nsw i64 2, %10
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = xor i32 %160, %167
  %169 = mul nsw i64 3, %14
  %170 = getelementptr inbounds i32, i32* %17, i64 %169
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %168, i32* %173, align 4
  br label %174

174:                                              ; preds = %21
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %18

177:                                              ; preds = %18
  store i32 0, i32* %7, align 4
  br label %178

178:                                              ; preds = %205, %177
  %179 = load i32, i32* %7, align 4
  %180 = icmp slt i32 %179, 4
  br i1 %180, label %181, label %208

181:                                              ; preds = %178
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = mul nsw i64 %183, %14
  %185 = getelementptr inbounds i32, i32* %17, i64 %184
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %4, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = mul nsw i64 %191, %12
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = xor i32 %188, %196
  %198 = load i32*, i32** %3, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = mul nsw i64 %200, %10
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  store i32 %197, i32* %204, align 4
  br label %205

205:                                              ; preds = %181
  %206 = load i32, i32* %7, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %7, align 4
  br label %178

208:                                              ; preds = %178
  %209 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %209)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mul(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
