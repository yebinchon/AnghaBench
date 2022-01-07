; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/cryptlib/extr_mvAesAlg.c_InvMixColumn.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/cryptlib/extr_mvAesAlg.c_InvMixColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXBC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InvMixColumn(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @MAXBC, align 4
  %8 = zext i32 %7 to i64
  %9 = load i32, i32* @MAXBC, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = mul nuw i64 4, %10
  %13 = alloca i32, i64 %12, align 16
  store i64 %10, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %178, %1
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %181

17:                                               ; preds = %14
  %18 = load i32*, i32** %2, align 8
  %19 = mul nsw i64 0, %8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mul(i32 223, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = mul nsw i64 1, %8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mul(i32 104, i32 %32)
  %34 = xor i32 %25, %33
  %35 = load i32*, i32** %2, align 8
  %36 = mul nsw i64 2, %8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mul(i32 238, i32 %41)
  %43 = xor i32 %34, %42
  %44 = load i32*, i32** %2, align 8
  %45 = mul nsw i64 3, %8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mul(i32 199, i32 %50)
  %52 = xor i32 %43, %51
  %53 = mul nsw i64 0, %10
  %54 = getelementptr inbounds i32, i32* %13, i64 %53
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %52, i32* %57, align 4
  %58 = load i32*, i32** %2, align 8
  %59 = mul nsw i64 1, %8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @mul(i32 223, i32 %64)
  %66 = load i32*, i32** %2, align 8
  %67 = mul nsw i64 2, %8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @mul(i32 104, i32 %72)
  %74 = xor i32 %65, %73
  %75 = load i32*, i32** %2, align 8
  %76 = mul nsw i64 3, %8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @mul(i32 238, i32 %81)
  %83 = xor i32 %74, %82
  %84 = load i32*, i32** %2, align 8
  %85 = mul nsw i64 0, %8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @mul(i32 199, i32 %90)
  %92 = xor i32 %83, %91
  %93 = mul nsw i64 1, %10
  %94 = getelementptr inbounds i32, i32* %13, i64 %93
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %92, i32* %97, align 4
  %98 = load i32*, i32** %2, align 8
  %99 = mul nsw i64 2, %8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mul(i32 223, i32 %104)
  %106 = load i32*, i32** %2, align 8
  %107 = mul nsw i64 3, %8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @mul(i32 104, i32 %112)
  %114 = xor i32 %105, %113
  %115 = load i32*, i32** %2, align 8
  %116 = mul nsw i64 0, %8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @mul(i32 238, i32 %121)
  %123 = xor i32 %114, %122
  %124 = load i32*, i32** %2, align 8
  %125 = mul nsw i64 1, %8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @mul(i32 199, i32 %130)
  %132 = xor i32 %123, %131
  %133 = mul nsw i64 2, %10
  %134 = getelementptr inbounds i32, i32* %13, i64 %133
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %132, i32* %137, align 4
  %138 = load i32*, i32** %2, align 8
  %139 = mul nsw i64 3, %8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @mul(i32 223, i32 %144)
  %146 = load i32*, i32** %2, align 8
  %147 = mul nsw i64 0, %8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @mul(i32 104, i32 %152)
  %154 = xor i32 %145, %153
  %155 = load i32*, i32** %2, align 8
  %156 = mul nsw i64 1, %8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @mul(i32 238, i32 %161)
  %163 = xor i32 %154, %162
  %164 = load i32*, i32** %2, align 8
  %165 = mul nsw i64 2, %8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @mul(i32 199, i32 %170)
  %172 = xor i32 %163, %171
  %173 = mul nsw i64 3, %10
  %174 = getelementptr inbounds i32, i32* %13, i64 %173
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %172, i32* %177, align 4
  br label %178

178:                                              ; preds = %17
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %6, align 4
  br label %14

181:                                              ; preds = %14
  store i32 0, i32* %5, align 4
  br label %182

182:                                              ; preds = %200, %181
  %183 = load i32, i32* %5, align 4
  %184 = icmp slt i32 %183, 4
  br i1 %184, label %185, label %203

185:                                              ; preds = %182
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = mul nsw i64 %187, %10
  %189 = getelementptr inbounds i32, i32* %13, i64 %188
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %2, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = mul nsw i64 %195, %8
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  store i32 %192, i32* %199, align 4
  br label %200

200:                                              ; preds = %185
  %201 = load i32, i32* %5, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %5, align 4
  br label %182

203:                                              ; preds = %182
  %204 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %204)
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
