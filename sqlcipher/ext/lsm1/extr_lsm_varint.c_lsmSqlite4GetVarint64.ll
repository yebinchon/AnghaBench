; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_varint.c_lsmSqlite4GetVarint64.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_varint.c_lsmSqlite4GetVarint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @lsmSqlite4GetVarint64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsmSqlite4GetVarint64(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp sle i32 %10, 240
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  store i32 1, i32* %3, align 4
  br label %203

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sle i32 %22, 248
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = sub nsw i32 %28, 241
  %30 = mul nsw i32 %29, 256
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %30, %34
  %36 = add nsw i32 %35, 240
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  store i32 2, i32* %3, align 4
  br label %203

38:                                               ; preds = %18
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 249
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = mul nsw i32 256, %48
  %50 = add nsw i32 2288, %49
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = add nsw i32 %50, %54
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  store i32 3, i32* %3, align 4
  br label %203

57:                                               ; preds = %38
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 250
  br i1 %62, label %63, label %81

63:                                               ; preds = %57
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, 16
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl i32 %72, 8
  %74 = add nsw i32 %68, %73
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 3
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = add nsw i32 %74, %78
  %80 = load i32*, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  store i32 4, i32* %3, align 4
  br label %203

81:                                               ; preds = %57
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 24
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = shl i32 %90, 16
  %92 = add nsw i32 %86, %91
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 3
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl i32 %96, 8
  %98 = add nsw i32 %92, %97
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 4
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = add nsw i32 %98, %102
  store i32 %103, i32* %6, align 4
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 251
  br i1 %108, label %109, label %112

109:                                              ; preds = %81
  %110 = load i32, i32* %6, align 4
  %111 = load i32*, i32** %5, align 8
  store i32 %110, i32* %111, align 4
  store i32 5, i32* %3, align 4
  br label %203

112:                                              ; preds = %81
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %116, 252
  br i1 %117, label %118, label %127

118:                                              ; preds = %112
  %119 = load i32, i32* %6, align 4
  %120 = shl i32 %119, 8
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 5
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = add nsw i32 %120, %124
  %126 = load i32*, i32** %5, align 8
  store i32 %125, i32* %126, align 4
  store i32 6, i32* %3, align 4
  br label %203

127:                                              ; preds = %112
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 253
  br i1 %132, label %133, label %148

133:                                              ; preds = %127
  %134 = load i32, i32* %6, align 4
  %135 = shl i32 %134, 16
  %136 = load i8*, i8** %4, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 5
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = shl i32 %139, 8
  %141 = add nsw i32 %135, %140
  %142 = load i8*, i8** %4, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 6
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = add nsw i32 %141, %145
  %147 = load i32*, i32** %5, align 8
  store i32 %146, i32* %147, align 4
  store i32 7, i32* %3, align 4
  br label %203

148:                                              ; preds = %127
  %149 = load i8*, i8** %4, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 254
  br i1 %153, label %154, label %175

154:                                              ; preds = %148
  %155 = load i32, i32* %6, align 4
  %156 = shl i32 %155, 24
  %157 = load i8*, i8** %4, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 5
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = shl i32 %160, 16
  %162 = add nsw i32 %156, %161
  %163 = load i8*, i8** %4, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 6
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = shl i32 %166, 8
  %168 = add nsw i32 %162, %167
  %169 = load i8*, i8** %4, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 7
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = add nsw i32 %168, %172
  %174 = load i32*, i32** %5, align 8
  store i32 %173, i32* %174, align 4
  store i32 8, i32* %3, align 4
  br label %203

175:                                              ; preds = %148
  %176 = load i32, i32* %6, align 4
  %177 = shl i32 %176, 32
  %178 = load i8*, i8** %4, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 5
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = shl i32 %181, 24
  %183 = load i8*, i8** %4, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 6
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = shl i32 %186, 16
  %188 = add nsw i32 %182, %187
  %189 = load i8*, i8** %4, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 7
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = shl i32 %192, 8
  %194 = add nsw i32 %188, %193
  %195 = load i8*, i8** %4, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 8
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = add nsw i32 %194, %198
  %200 = and i32 -1, %199
  %201 = add i32 %177, %200
  %202 = load i32*, i32** %5, align 8
  store i32 %201, i32* %202, align 4
  store i32 9, i32* %3, align 4
  br label %203

203:                                              ; preds = %175, %154, %133, %118, %109, %63, %44, %24, %12
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
