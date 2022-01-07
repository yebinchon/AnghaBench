; ModuleID = '/home/carl/AnghaBench/tig/src/extr_string.c_utf8_to_unicode.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_string.c_utf8_to_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8_to_unicode(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  switch i64 %7, label %183 [
    i64 1, label %8
    i64 2, label %13
    i64 3, label %29
    i64 4, label %54
    i64 5, label %88
    i64 6, label %131
  ]

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i64
  store i64 %12, i64* %6, align 8
  br label %184

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = and i32 %17, 31
  %19 = shl i32 %18, 6
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = and i32 %24, 63
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %6, align 8
  br label %184

29:                                               ; preds = %2
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = and i32 %33, 15
  %35 = shl i32 %34, 12
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %6, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = and i32 %40, 63
  %42 = shl i32 %41, 6
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %6, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = and i32 %49, 63
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %6, align 8
  br label %184

54:                                               ; preds = %2
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = and i32 %58, 15
  %60 = shl i32 %59, 18
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %6, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = and i32 %65, 63
  %67 = shl i32 %66, 12
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %6, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = and i32 %74, 63
  %76 = shl i32 %75, 6
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %6, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = and i32 %83, 63
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %6, align 8
  br label %184

88:                                               ; preds = %2
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = and i32 %92, 15
  %94 = shl i32 %93, 24
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %6, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = and i32 %99, 63
  %101 = shl i32 %100, 18
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %6, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %6, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = and i32 %108, 63
  %110 = shl i32 %109, 12
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %6, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %6, align 8
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 3
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = and i32 %117, 63
  %119 = shl i32 %118, 6
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %6, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %6, align 8
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 4
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = and i32 %126, 63
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %6, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %6, align 8
  br label %184

131:                                              ; preds = %2
  %132 = load i8*, i8** %4, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = and i32 %135, 1
  %137 = shl i32 %136, 30
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %6, align 8
  %139 = load i8*, i8** %4, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = and i32 %142, 63
  %144 = shl i32 %143, 24
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %6, align 8
  %147 = add i64 %146, %145
  store i64 %147, i64* %6, align 8
  %148 = load i8*, i8** %4, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 2
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = and i32 %151, 63
  %153 = shl i32 %152, 18
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %6, align 8
  %156 = add i64 %155, %154
  store i64 %156, i64* %6, align 8
  %157 = load i8*, i8** %4, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 3
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = and i32 %160, 63
  %162 = shl i32 %161, 12
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %6, align 8
  %165 = add i64 %164, %163
  store i64 %165, i64* %6, align 8
  %166 = load i8*, i8** %4, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 4
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = and i32 %169, 63
  %171 = shl i32 %170, 6
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %6, align 8
  %174 = add i64 %173, %172
  store i64 %174, i64* %6, align 8
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 5
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = and i32 %178, 63
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* %6, align 8
  %182 = add i64 %181, %180
  store i64 %182, i64* %6, align 8
  br label %184

183:                                              ; preds = %2
  store i64 0, i64* %3, align 8
  br label %192

184:                                              ; preds = %131, %88, %54, %29, %13, %8
  %185 = load i64, i64* %6, align 8
  %186 = icmp ugt i64 %185, 1114111
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %190

188:                                              ; preds = %184
  %189 = load i64, i64* %6, align 8
  br label %190

190:                                              ; preds = %188, %187
  %191 = phi i64 [ 0, %187 ], [ %189, %188 ]
  store i64 %191, i64* %3, align 8
  br label %192

192:                                              ; preds = %190, %183
  %193 = load i64, i64* %3, align 8
  ret i64 %193
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
