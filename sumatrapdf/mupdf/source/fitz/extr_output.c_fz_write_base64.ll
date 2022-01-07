; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output.c_fz_write_base64.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output.c_fz_write_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fz_write_base64.set = internal constant [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_write_base64(i32* %0, i32* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %95, %5
  %19 = load i32, i32* %11, align 4
  %20 = add nsw i32 %19, 3
  %21 = load i32, i32* %9, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %98

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  store i32 %36, i32* %13, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %23
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, 15
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @fz_write_byte(i32* %51, i32* %52, i8 signext 10)
  br label %54

54:                                               ; preds = %50, %46, %23
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = ashr i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* @fz_write_base64.set, i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @fz_write_byte(i32* %55, i32* %56, i8 signext %61)
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = and i32 %65, 3
  %67 = shl i32 %66, 4
  %68 = load i32, i32* %13, align 4
  %69 = ashr i32 %68, 4
  %70 = or i32 %67, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* @fz_write_base64.set, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = call i32 @fz_write_byte(i32* %63, i32* %64, i8 signext %73)
  %75 = load i32*, i32** %6, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %13, align 4
  %78 = and i32 %77, 15
  %79 = shl i32 %78, 2
  %80 = load i32, i32* %14, align 4
  %81 = ashr i32 %80, 6
  %82 = or i32 %79, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* @fz_write_base64.set, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @fz_write_byte(i32* %75, i32* %76, i8 signext %85)
  %87 = load i32*, i32** %6, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %14, align 4
  %90 = and i32 %89, 63
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* @fz_write_base64.set, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = call i32 @fz_write_byte(i32* %87, i32* %88, i8 signext %93)
  br label %95

95:                                               ; preds = %54
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 3
  store i32 %97, i32* %11, align 4
  br label %18

98:                                               ; preds = %18
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %99, %100
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %103, label %149

103:                                              ; preds = %98
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  store i32 %109, i32* %15, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  store i32 %116, i32* %16, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %15, align 4
  %120 = ashr i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [64 x i8], [64 x i8]* @fz_write_base64.set, i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = call i32 @fz_write_byte(i32* %117, i32* %118, i8 signext %123)
  %125 = load i32*, i32** %6, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %15, align 4
  %128 = and i32 %127, 3
  %129 = shl i32 %128, 4
  %130 = load i32, i32* %16, align 4
  %131 = ashr i32 %130, 4
  %132 = or i32 %129, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [64 x i8], [64 x i8]* @fz_write_base64.set, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = call i32 @fz_write_byte(i32* %125, i32* %126, i8 signext %135)
  %137 = load i32*, i32** %6, align 8
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %16, align 4
  %140 = and i32 %139, 15
  %141 = shl i32 %140, 2
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [64 x i8], [64 x i8]* @fz_write_base64.set, i64 0, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = call i32 @fz_write_byte(i32* %137, i32* %138, i8 signext %144)
  %146 = load i32*, i32** %6, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @fz_write_byte(i32* %146, i32* %147, i8 signext 61)
  br label %185

149:                                              ; preds = %98
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %11, align 4
  %152 = sub nsw i32 %150, %151
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %184

154:                                              ; preds = %149
  %155 = load i8*, i8** %8, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  store i32 %160, i32* %17, align 4
  %161 = load i32*, i32** %6, align 8
  %162 = load i32*, i32** %7, align 8
  %163 = load i32, i32* %17, align 4
  %164 = ashr i32 %163, 2
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [64 x i8], [64 x i8]* @fz_write_base64.set, i64 0, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = call i32 @fz_write_byte(i32* %161, i32* %162, i8 signext %167)
  %169 = load i32*, i32** %6, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %17, align 4
  %172 = and i32 %171, 3
  %173 = shl i32 %172, 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [64 x i8], [64 x i8]* @fz_write_base64.set, i64 0, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = call i32 @fz_write_byte(i32* %169, i32* %170, i8 signext %176)
  %178 = load i32*, i32** %6, align 8
  %179 = load i32*, i32** %7, align 8
  %180 = call i32 @fz_write_byte(i32* %178, i32* %179, i8 signext 61)
  %181 = load i32*, i32** %6, align 8
  %182 = load i32*, i32** %7, align 8
  %183 = call i32 @fz_write_byte(i32* %181, i32* %182, i8 signext 61)
  br label %184

184:                                              ; preds = %154, %149
  br label %185

185:                                              ; preds = %184, %103
  ret void
}

declare dso_local i32 @fz_write_byte(i32*, i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
