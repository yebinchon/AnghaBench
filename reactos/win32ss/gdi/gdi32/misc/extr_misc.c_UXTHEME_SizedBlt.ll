; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/misc/extr_misc.c_UXTHEME_SizedBlt.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/misc/extr_misc.c_UXTHEME_SizedBlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ST_TILE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32)* @UXTHEME_SizedBlt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UXTHEME_SizedBlt(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store i64 %0, i64* %15, align 8
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i64 %5, i64* %20, align 8
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  %41 = load i32, i32* %25, align 4
  %42 = load i32, i32* @ST_TILE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %190

44:                                               ; preds = %13
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %29, align 4
  %46 = load i32, i32* %23, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %24, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %14, align 4
  br label %204

53:                                               ; preds = %48
  %54 = load i32, i32* %23, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %53
  %58 = load i32, i32* %24, align 4
  %59 = load i32, i32* %19, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %57
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %23, align 4
  %64 = call i32 @min(i32 %62, i32 %63)
  store i32 %64, i32* %30, align 4
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %24, align 4
  %67 = call i32 @min(i32 %65, i32 %66)
  store i32 %67, i32* %31, align 4
  %68 = load i64, i64* %15, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %30, align 4
  %72 = load i32, i32* %31, align 4
  %73 = load i64, i64* %20, align 8
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %22, align 4
  %76 = load i32, i32* %26, align 4
  %77 = load i32, i32* %27, align 4
  %78 = call i32 @UXTHEME_Blt(i64 %68, i32 %69, i32 %70, i32 %71, i32 %72, i64 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %14, align 4
  br label %204

79:                                               ; preds = %57, %53
  %80 = load i64, i64* %20, align 8
  %81 = call i64 @CreateCompatibleDC(i64 %80)
  store i64 %81, i64* %28, align 8
  %82 = load i64, i64* %28, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %186

84:                                               ; preds = %79
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %23, align 4
  %87 = add nsw i32 %85, %86
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %23, align 4
  %90 = sdiv i32 %88, %89
  %91 = load i32, i32* %23, align 4
  %92 = mul nsw i32 %90, %91
  store i32 %92, i32* %34, align 4
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %24, align 4
  %95 = add nsw i32 %93, %94
  %96 = sub nsw i32 %95, 1
  %97 = load i32, i32* %24, align 4
  %98 = sdiv i32 %96, %97
  %99 = load i32, i32* %24, align 4
  %100 = mul nsw i32 %98, %99
  store i32 %100, i32* %35, align 4
  %101 = load i64, i64* %20, align 8
  %102 = load i32, i32* %34, align 4
  %103 = load i32, i32* %35, align 4
  %104 = call i32 @CreateCompatibleBitmap(i64 %101, i32 %102, i32 %103)
  store i32 %104, i32* %32, align 4
  %105 = load i64, i64* %28, align 8
  %106 = load i32, i32* %32, align 4
  %107 = call i32 @SelectObject(i64 %105, i32 %106)
  store i32 %107, i32* %33, align 4
  %108 = load i64, i64* %28, align 8
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %24, align 4
  %111 = load i64, i64* %20, align 8
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %22, align 4
  %114 = load i32, i32* @SRCCOPY, align 4
  %115 = call i32 @BitBlt(i64 %108, i32 0, i32 0, i32 %109, i32 %110, i64 %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %23, align 4
  store i32 %116, i32* %36, align 4
  %117 = load i32, i32* %34, align 4
  %118 = load i32, i32* %23, align 4
  %119 = sub nsw i32 %117, %118
  store i32 %119, i32* %37, align 4
  %120 = load i32, i32* %23, align 4
  store i32 %120, i32* %40, align 4
  br label %121

121:                                              ; preds = %124, %84
  %122 = load i32, i32* %37, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %121
  %125 = load i32, i32* %40, align 4
  %126 = load i32, i32* %37, align 4
  %127 = call i32 @min(i32 %125, i32 %126)
  store i32 %127, i32* %40, align 4
  %128 = load i64, i64* %28, align 8
  %129 = load i32, i32* %36, align 4
  %130 = load i32, i32* %40, align 4
  %131 = load i32, i32* %24, align 4
  %132 = load i64, i64* %28, align 8
  %133 = load i32, i32* @SRCCOPY, align 4
  %134 = call i32 @BitBlt(i64 %128, i32 %129, i32 0, i32 %130, i32 %131, i64 %132, i32 0, i32 0, i32 %133)
  %135 = load i32, i32* %40, align 4
  %136 = load i32, i32* %36, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %36, align 4
  %138 = load i32, i32* %40, align 4
  %139 = load i32, i32* %37, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %37, align 4
  %141 = load i32, i32* %40, align 4
  %142 = mul nsw i32 %141, 2
  store i32 %142, i32* %40, align 4
  br label %121

143:                                              ; preds = %121
  %144 = load i32, i32* %24, align 4
  store i32 %144, i32* %38, align 4
  %145 = load i32, i32* %35, align 4
  %146 = load i32, i32* %24, align 4
  %147 = sub nsw i32 %145, %146
  store i32 %147, i32* %39, align 4
  %148 = load i32, i32* %24, align 4
  store i32 %148, i32* %40, align 4
  br label %149

149:                                              ; preds = %152, %143
  %150 = load i32, i32* %39, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %149
  %153 = load i32, i32* %40, align 4
  %154 = load i32, i32* %39, align 4
  %155 = call i32 @min(i32 %153, i32 %154)
  store i32 %155, i32* %40, align 4
  %156 = load i64, i64* %28, align 8
  %157 = load i32, i32* %38, align 4
  %158 = load i32, i32* %34, align 4
  %159 = load i32, i32* %40, align 4
  %160 = load i64, i64* %28, align 8
  %161 = load i32, i32* @SRCCOPY, align 4
  %162 = call i32 @BitBlt(i64 %156, i32 0, i32 %157, i32 %158, i32 %159, i64 %160, i32 0, i32 0, i32 %161)
  %163 = load i32, i32* %40, align 4
  %164 = load i32, i32* %38, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %38, align 4
  %166 = load i32, i32* %40, align 4
  %167 = load i32, i32* %39, align 4
  %168 = sub nsw i32 %167, %166
  store i32 %168, i32* %39, align 4
  %169 = load i32, i32* %40, align 4
  %170 = mul nsw i32 %169, 2
  store i32 %170, i32* %40, align 4
  br label %149

171:                                              ; preds = %149
  %172 = load i64, i64* %15, align 8
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* %18, align 4
  %176 = load i32, i32* %19, align 4
  %177 = load i64, i64* %28, align 8
  %178 = load i32, i32* %26, align 4
  %179 = load i32, i32* %27, align 4
  %180 = call i32 @UXTHEME_Blt(i64 %172, i32 %173, i32 %174, i32 %175, i32 %176, i64 %177, i32 0, i32 0, i32 %178, i32 %179)
  store i32 %180, i32* %29, align 4
  %181 = load i64, i64* %28, align 8
  %182 = load i32, i32* %33, align 4
  %183 = call i32 @SelectObject(i64 %181, i32 %182)
  %184 = load i32, i32* %32, align 4
  %185 = call i32 @DeleteObject(i32 %184)
  br label %186

186:                                              ; preds = %171, %79
  %187 = load i64, i64* %28, align 8
  %188 = call i32 @DeleteDC(i64 %187)
  %189 = load i32, i32* %29, align 4
  store i32 %189, i32* %14, align 4
  br label %204

190:                                              ; preds = %13
  %191 = load i64, i64* %15, align 8
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* %19, align 4
  %196 = load i64, i64* %20, align 8
  %197 = load i32, i32* %21, align 4
  %198 = load i32, i32* %22, align 4
  %199 = load i32, i32* %23, align 4
  %200 = load i32, i32* %24, align 4
  %201 = load i32, i32* %26, align 4
  %202 = load i32, i32* %27, align 4
  %203 = call i32 @UXTHEME_StretchBlt(i64 %191, i32 %192, i32 %193, i32 %194, i32 %195, i64 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202)
  store i32 %203, i32* %14, align 4
  br label %204

204:                                              ; preds = %190, %186, %61, %51
  %205 = load i32, i32* %14, align 4
  ret i32 %205
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @UXTHEME_Blt(i64, i32, i32, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i64 @CreateCompatibleDC(i64) #1

declare dso_local i32 @CreateCompatibleBitmap(i64, i32, i32) #1

declare dso_local i32 @SelectObject(i64, i32) #1

declare dso_local i32 @BitBlt(i64, i32, i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @DeleteDC(i64) #1

declare dso_local i32 @UXTHEME_StretchBlt(i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
