; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_convert_32s1u_C1R.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_convert_32s1u_C1R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8**, i32)* @convert_32s1u_C1R to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_32s1u_C1R(i64* %0, i8** %1, i32 %2) #0 {
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %111, %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, -8
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %114

28:                                               ; preds = %23
  %29 = load i64*, i64** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = add i32 %30, 0
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load i64*, i64** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i64*, i64** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 2
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i64*, i64** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 3
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load i64*, i64** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %58, 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %12, align 4
  %64 = load i64*, i64** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %65, 5
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %13, align 4
  %71 = load i64*, i64** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, 6
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %71, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %14, align 4
  %78 = load i64*, i64** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, 7
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %8, align 4
  %86 = shl i32 %85, 7
  %87 = load i32, i32* %9, align 4
  %88 = shl i32 %87, 6
  %89 = or i32 %86, %88
  %90 = load i32, i32* %10, align 4
  %91 = shl i32 %90, 5
  %92 = or i32 %89, %91
  %93 = load i32, i32* %11, align 4
  %94 = shl i32 %93, 4
  %95 = or i32 %92, %94
  %96 = load i32, i32* %12, align 4
  %97 = shl i32 %96, 3
  %98 = or i32 %95, %97
  %99 = load i32, i32* %13, align 4
  %100 = shl i32 %99, 2
  %101 = or i32 %98, %100
  %102 = load i32, i32* %14, align 4
  %103 = shl i32 %102, 1
  %104 = or i32 %101, %103
  %105 = load i32, i32* %15, align 4
  %106 = or i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = load i8**, i8*** %5, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i32 1
  store i8** %110, i8*** %5, align 8
  store i8* %108, i8** %109, align 8
  br label %111

111:                                              ; preds = %28
  %112 = load i32, i32* %7, align 4
  %113 = add i32 %112, 8
  store i32 %113, i32* %7, align 4
  br label %23

114:                                              ; preds = %23
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %115, 7
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %218

118:                                              ; preds = %114
  %119 = load i64*, i64** %4, align 8
  %120 = load i32, i32* %7, align 4
  %121 = add i32 %120, 0
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %119, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %126 = load i32, i32* %6, align 4
  %127 = and i32 %126, 7
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ugt i32 %128, 1
  br i1 %129, label %130, label %193

130:                                              ; preds = %118
  %131 = load i64*, i64** %4, align 8
  %132 = load i32, i32* %7, align 4
  %133 = add i32 %132, 1
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %131, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %17, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ugt i32 %138, 2
  br i1 %139, label %140, label %192

140:                                              ; preds = %130
  %141 = load i64*, i64** %4, align 8
  %142 = load i32, i32* %7, align 4
  %143 = add i32 %142, 2
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %141, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %18, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ugt i32 %148, 3
  br i1 %149, label %150, label %191

150:                                              ; preds = %140
  %151 = load i64*, i64** %4, align 8
  %152 = load i32, i32* %7, align 4
  %153 = add i32 %152, 3
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %151, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %19, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp ugt i32 %158, 4
  br i1 %159, label %160, label %190

160:                                              ; preds = %150
  %161 = load i64*, i64** %4, align 8
  %162 = load i32, i32* %7, align 4
  %163 = add i32 %162, 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %161, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %20, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ugt i32 %168, 5
  br i1 %169, label %170, label %189

170:                                              ; preds = %160
  %171 = load i64*, i64** %4, align 8
  %172 = load i32, i32* %7, align 4
  %173 = add i32 %172, 5
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %171, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %21, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp ugt i32 %178, 6
  br i1 %179, label %180, label %188

180:                                              ; preds = %170
  %181 = load i64*, i64** %4, align 8
  %182 = load i32, i32* %7, align 4
  %183 = add i32 %182, 6
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %181, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %22, align 4
  br label %188

188:                                              ; preds = %180, %170
  br label %189

189:                                              ; preds = %188, %160
  br label %190

190:                                              ; preds = %189, %150
  br label %191

191:                                              ; preds = %190, %140
  br label %192

192:                                              ; preds = %191, %130
  br label %193

193:                                              ; preds = %192, %118
  %194 = load i32, i32* %16, align 4
  %195 = shl i32 %194, 7
  %196 = load i32, i32* %17, align 4
  %197 = shl i32 %196, 6
  %198 = or i32 %195, %197
  %199 = load i32, i32* %18, align 4
  %200 = shl i32 %199, 5
  %201 = or i32 %198, %200
  %202 = load i32, i32* %19, align 4
  %203 = shl i32 %202, 4
  %204 = or i32 %201, %203
  %205 = load i32, i32* %20, align 4
  %206 = shl i32 %205, 3
  %207 = or i32 %204, %206
  %208 = load i32, i32* %21, align 4
  %209 = shl i32 %208, 2
  %210 = or i32 %207, %209
  %211 = load i32, i32* %22, align 4
  %212 = shl i32 %211, 1
  %213 = or i32 %210, %212
  %214 = sext i32 %213 to i64
  %215 = inttoptr i64 %214 to i8*
  %216 = load i8**, i8*** %5, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i32 1
  store i8** %217, i8*** %5, align 8
  store i8* %215, i8** %216, align 8
  br label %218

218:                                              ; preds = %193, %114
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
