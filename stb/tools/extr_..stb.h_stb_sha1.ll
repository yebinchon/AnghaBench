; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_sha1.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stb_sha1(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [5 x i32], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  store i32 1732584193, i32* %13, align 16
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 1
  store i32 -271733879, i32* %14, align 4
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 2
  store i32 -1732584194, i32* %15, align 8
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 3
  store i32 271733878, i32* %16, align 4
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 4
  store i32 -1009589776, i32* %17, align 16
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, -64
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 9
  %22 = and i32 %21, -64
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 64
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %3
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 128
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 128
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 9
  %35 = icmp sge i32 %32, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 55
  br label %44

44:                                               ; preds = %41, %28
  %45 = phi i1 [ true, %28 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  store i32 0, i32* %10, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %51, %44
  br label %55

55:                                               ; preds = %72, %54
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %70
  store i8 %68, i8* %71, align 1
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %55

75:                                               ; preds = %55
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %78
  store i8 -128, i8* %79, align 1
  br label %80

80:                                               ; preds = %83, %75
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 123
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %86
  store i8 0, i8* %87, align 1
  br label %80

88:                                               ; preds = %80
  %89 = load i32, i32* %6, align 4
  %90 = ashr i32 %89, 29
  %91 = trunc i32 %90 to i8
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %94
  store i8 %91, i8* %95, align 1
  %96 = load i32, i32* %6, align 4
  %97 = ashr i32 %96, 21
  %98 = trunc i32 %97 to i8
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %101
  store i8 %98, i8* %102, align 1
  %103 = load i32, i32* %6, align 4
  %104 = ashr i32 %103, 13
  %105 = trunc i32 %104 to i8
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %108
  store i8 %105, i8* %109, align 1
  %110 = load i32, i32* %6, align 4
  %111 = ashr i32 %110, 5
  %112 = trunc i32 %111 to i8
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %115
  store i8 %112, i8* %116, align 1
  %117 = load i32, i32* %6, align 4
  %118 = shl i32 %117, 3
  %119 = trunc i32 %118 to i8
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %122
  store i8 %119, i8* %123, align 1
  %124 = load i32, i32* %10, align 4
  %125 = icmp eq i32 %124, 128
  br i1 %125, label %126, label %132

126:                                              ; preds = %88
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %127, %128
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %129, %130
  br label %132

132:                                              ; preds = %126, %88
  %133 = phi i1 [ false, %88 ], [ %131, %126 ]
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %162, %132
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %165

140:                                              ; preds = %136
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 64
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 64
  %145 = icmp sge i32 %142, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %140
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %8, align 4
  %149 = sub nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %150
  %152 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %153 = call i32 @stb__sha1(i8* %151, i32* %152)
  br label %161

154:                                              ; preds = %140
  %155 = load i8*, i8** %5, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %160 = call i32 @stb__sha1(i8* %158, i32* %159)
  br label %161

161:                                              ; preds = %154, %146
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 64
  store i32 %164, i32* %10, align 4
  br label %136

165:                                              ; preds = %136
  store i32 0, i32* %11, align 4
  br label %166

166:                                              ; preds = %218, %165
  %167 = load i32, i32* %11, align 4
  %168 = icmp slt i32 %167, 5
  br i1 %168, label %169, label %221

169:                                              ; preds = %166
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = ashr i32 %173, 24
  %175 = trunc i32 %174 to i8
  %176 = load i8*, i8** %4, align 8
  %177 = load i32, i32* %11, align 4
  %178 = mul nsw i32 %177, 4
  %179 = add nsw i32 %178, 0
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %176, i64 %180
  store i8 %175, i8* %181, align 1
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = ashr i32 %185, 16
  %187 = trunc i32 %186 to i8
  %188 = load i8*, i8** %4, align 8
  %189 = load i32, i32* %11, align 4
  %190 = mul nsw i32 %189, 4
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %188, i64 %192
  store i8 %187, i8* %193, align 1
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = ashr i32 %197, 8
  %199 = trunc i32 %198 to i8
  %200 = load i8*, i8** %4, align 8
  %201 = load i32, i32* %11, align 4
  %202 = mul nsw i32 %201, 4
  %203 = add nsw i32 %202, 2
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %200, i64 %204
  store i8 %199, i8* %205, align 1
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = ashr i32 %209, 0
  %211 = trunc i32 %210 to i8
  %212 = load i8*, i8** %4, align 8
  %213 = load i32, i32* %11, align 4
  %214 = mul nsw i32 %213, 4
  %215 = add nsw i32 %214, 3
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %212, i64 %216
  store i8 %211, i8* %217, align 1
  br label %218

218:                                              ; preds = %169
  %219 = load i32, i32* %11, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %11, align 4
  br label %166

221:                                              ; preds = %166
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @stb__sha1(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
