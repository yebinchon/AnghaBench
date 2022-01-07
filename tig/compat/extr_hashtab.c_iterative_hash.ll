; ModuleID = '/home/carl/AnghaBench/tig/compat/extr_hashtab.c_iterative_hash.c'
source_filename = "/home/carl/AnghaBench/tig/compat/extr_hashtab.c_iterative_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iterative_hash(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i64, i64* %4, align 8
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  store i32 -1640531527, i32* %9, align 4
  store i32 -1640531527, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = and i64 %18, 3
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %25, %21
  %23 = load i32, i32* %11, align 4
  %24 = icmp sge i32 %23, 12
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 8
  %40 = bitcast i8* %39 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @mix(i32 %44, i32 %45, i32 %46)
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 12
  store i8* %49, i8** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %50, 12
  store i32 %51, i32* %11, align 4
  br label %22

52:                                               ; preds = %22
  br label %139

53:                                               ; preds = %3
  br label %54

54:                                               ; preds = %57, %53
  %55 = load i32, i32* %11, align 4
  %56 = icmp sge i32 %55, 12
  br i1 %56, label %57, label %138

57:                                               ; preds = %54
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl i32 %65, 8
  %67 = add nsw i32 %61, %66
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl i32 %71, 16
  %73 = add nsw i32 %67, %72
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 3
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl i32 %77, 24
  %79 = add nsw i32 %73, %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 4
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 5
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = shl i32 %89, 8
  %91 = add nsw i32 %85, %90
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 6
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl i32 %95, 16
  %97 = add nsw i32 %91, %96
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 7
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = shl i32 %101, 24
  %103 = add nsw i32 %97, %102
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %9, align 4
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 8
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 9
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = shl i32 %113, 8
  %115 = add nsw i32 %109, %114
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 10
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = shl i32 %119, 16
  %121 = add nsw i32 %115, %120
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 11
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = shl i32 %125, 24
  %127 = add nsw i32 %121, %126
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @mix(i32 %130, i32 %131, i32 %132)
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 12
  store i8* %135, i8** %7, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sub nsw i32 %136, 12
  store i32 %137, i32* %11, align 4
  br label %54

138:                                              ; preds = %54
  br label %139

139:                                              ; preds = %138, %52
  %140 = load i64, i64* %5, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = add i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %11, align 4
  switch i32 %145, label %232 [
    i32 11, label %146
    i32 10, label %154
    i32 9, label %162
    i32 8, label %170
    i32 7, label %178
    i32 6, label %186
    i32 5, label %194
    i32 4, label %201
    i32 3, label %209
    i32 2, label %217
    i32 1, label %225
  ]

146:                                              ; preds = %139
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 10
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = shl i32 %150, 24
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %139, %146
  %155 = load i8*, i8** %7, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 9
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = shl i32 %158, 16
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %10, align 4
  br label %162

162:                                              ; preds = %139, %154
  %163 = load i8*, i8** %7, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 8
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = shl i32 %166, 8
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %10, align 4
  br label %170

170:                                              ; preds = %139, %162
  %171 = load i8*, i8** %7, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 7
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = shl i32 %174, 24
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %9, align 4
  br label %178

178:                                              ; preds = %139, %170
  %179 = load i8*, i8** %7, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 6
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = shl i32 %182, 16
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %9, align 4
  br label %186

186:                                              ; preds = %139, %178
  %187 = load i8*, i8** %7, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 5
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = shl i32 %190, 8
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %9, align 4
  br label %194

194:                                              ; preds = %139, %186
  %195 = load i8*, i8** %7, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 4
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %9, align 4
  br label %201

201:                                              ; preds = %139, %194
  %202 = load i8*, i8** %7, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 3
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = shl i32 %205, 24
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %8, align 4
  br label %209

209:                                              ; preds = %139, %201
  %210 = load i8*, i8** %7, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 2
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = shl i32 %213, 16
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %8, align 4
  br label %217

217:                                              ; preds = %139, %209
  %218 = load i8*, i8** %7, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 1
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = shl i32 %221, 8
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %8, align 4
  br label %225

225:                                              ; preds = %139, %217
  %226 = load i8*, i8** %7, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 0
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %8, align 4
  br label %232

232:                                              ; preds = %225, %139
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* %10, align 4
  %236 = call i32 @mix(i32 %233, i32 %234, i32 %235)
  %237 = load i32, i32* %10, align 4
  ret i32 %237
}

declare dso_local i32 @mix(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
