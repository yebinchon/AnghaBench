; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_vtab.c_lsm1GetVarint64.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_vtab.c_lsm1GetVarint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @lsm1GetVarint64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsm1GetVarint64(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %222

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp sle i32 %16, 240
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  store i32 1, i32* %4, align 4
  br label %222

24:                                               ; preds = %12
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sle i32 %28, 248
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %222

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = sub nsw i32 %38, 241
  %40 = mul nsw i32 %39, 256
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = add nsw i32 %40, %44
  %46 = add nsw i32 %45, 240
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  store i32 2, i32* %4, align 4
  br label %222

48:                                               ; preds = %24
  %49 = load i32, i32* %6, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %53, 246
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %222

57:                                               ; preds = %48
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 249
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = mul nsw i32 256, %67
  %69 = add nsw i32 2288, %68
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = add nsw i32 %69, %73
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  store i32 3, i32* %4, align 4
  br label %222

76:                                               ; preds = %57
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 250
  br i1 %81, label %82, label %100

82:                                               ; preds = %76
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = shl i32 %86, 16
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl i32 %91, 8
  %93 = add nsw i32 %87, %92
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 3
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = add nsw i32 %93, %97
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  store i32 4, i32* %4, align 4
  br label %222

100:                                              ; preds = %76
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = shl i32 %104, 24
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 2
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl i32 %109, 16
  %111 = add nsw i32 %105, %110
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 3
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = shl i32 %115, 8
  %117 = add nsw i32 %111, %116
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 4
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = add nsw i32 %117, %121
  store i32 %122, i32* %8, align 4
  %123 = load i8*, i8** %5, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 251
  br i1 %127, label %128, label %131

128:                                              ; preds = %100
  %129 = load i32, i32* %8, align 4
  %130 = load i32*, i32** %7, align 8
  store i32 %129, i32* %130, align 4
  store i32 5, i32* %4, align 4
  br label %222

131:                                              ; preds = %100
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp eq i32 %135, 252
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load i32, i32* %8, align 4
  %139 = shl i32 %138, 8
  %140 = load i8*, i8** %5, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 5
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = add nsw i32 %139, %143
  %145 = load i32*, i32** %7, align 8
  store i32 %144, i32* %145, align 4
  store i32 6, i32* %4, align 4
  br label %222

146:                                              ; preds = %131
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp eq i32 %150, 253
  br i1 %151, label %152, label %167

152:                                              ; preds = %146
  %153 = load i32, i32* %8, align 4
  %154 = shl i32 %153, 16
  %155 = load i8*, i8** %5, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 5
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = shl i32 %158, 8
  %160 = add nsw i32 %154, %159
  %161 = load i8*, i8** %5, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 6
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = add nsw i32 %160, %164
  %166 = load i32*, i32** %7, align 8
  store i32 %165, i32* %166, align 4
  store i32 7, i32* %4, align 4
  br label %222

167:                                              ; preds = %146
  %168 = load i8*, i8** %5, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp eq i32 %171, 254
  br i1 %172, label %173, label %194

173:                                              ; preds = %167
  %174 = load i32, i32* %8, align 4
  %175 = shl i32 %174, 24
  %176 = load i8*, i8** %5, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 5
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = shl i32 %179, 16
  %181 = add nsw i32 %175, %180
  %182 = load i8*, i8** %5, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 6
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = shl i32 %185, 8
  %187 = add nsw i32 %181, %186
  %188 = load i8*, i8** %5, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 7
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = add nsw i32 %187, %191
  %193 = load i32*, i32** %7, align 8
  store i32 %192, i32* %193, align 4
  store i32 8, i32* %4, align 4
  br label %222

194:                                              ; preds = %167
  %195 = load i32, i32* %8, align 4
  %196 = shl i32 %195, 32
  %197 = load i8*, i8** %5, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 5
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = shl i32 %200, 24
  %202 = load i8*, i8** %5, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 6
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = shl i32 %205, 16
  %207 = add nsw i32 %201, %206
  %208 = load i8*, i8** %5, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 7
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = shl i32 %211, 8
  %213 = add nsw i32 %207, %212
  %214 = load i8*, i8** %5, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 8
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = add nsw i32 %213, %217
  %219 = and i32 -1, %218
  %220 = add i32 %196, %219
  %221 = load i32*, i32** %7, align 8
  store i32 %220, i32* %221, align 4
  store i32 9, i32* %4, align 4
  br label %222

222:                                              ; preds = %194, %173, %152, %137, %128, %82, %63, %56, %34, %33, %18, %11
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
