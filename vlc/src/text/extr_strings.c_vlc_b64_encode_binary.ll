; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_strings.c_vlc_b64_encode_binary.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_strings.c_vlc_b64_encode_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vlc_b64_encode_binary.b64 = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_b64_encode_binary(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = add i64 %13, 2
  %15 = udiv i64 %14, 3
  %16 = mul i64 %15, 4
  %17 = add i64 %16, 1
  %18 = call i8* @malloc(i64 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %147

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %30, %26
  %28 = load i64, i64* %5, align 8
  %29 = icmp uge i64 %28, 3
  br i1 %29, label %30, label %82

30:                                               ; preds = %27
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 %34, 16
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 8
  %41 = or i32 %35, %40
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %41, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %47, 18
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [65 x i8], [65 x i8]* @vlc_b64_encode_binary.b64, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %8, align 8
  store i8 %51, i8* %52, align 1
  %54 = load i32, i32* %9, align 4
  %55 = ashr i32 %54, 12
  %56 = and i32 %55, 63
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [65 x i8], [65 x i8]* @vlc_b64_encode_binary.b64, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %8, align 8
  store i8 %59, i8* %60, align 1
  %62 = load i32, i32* %9, align 4
  %63 = ashr i32 %62, 6
  %64 = and i32 %63, 63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [65 x i8], [65 x i8]* @vlc_b64_encode_binary.b64, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %8, align 8
  store i8 %67, i8* %68, align 1
  %70 = load i32, i32* %9, align 4
  %71 = ashr i32 %70, 0
  %72 = and i32 %71, 63
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [65 x i8], [65 x i8]* @vlc_b64_encode_binary.b64, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %8, align 8
  store i8 %75, i8* %76, align 1
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 3
  store i8* %79, i8** %6, align 8
  %80 = load i64, i64* %5, align 8
  %81 = sub i64 %80, 3
  store i64 %81, i64* %5, align 8
  br label %27

82:                                               ; preds = %27
  %83 = load i64, i64* %5, align 8
  switch i64 %83, label %144 [
    i64 2, label %84
    i64 1, label %120
  ]

84:                                               ; preds = %82
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = shl i32 %88, 8
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %89, %93
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = ashr i32 %95, 10
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [65 x i8], [65 x i8]* @vlc_b64_encode_binary.b64, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %8, align 8
  store i8 %99, i8* %100, align 1
  %102 = load i32, i32* %10, align 4
  %103 = ashr i32 %102, 4
  %104 = and i32 %103, 63
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [65 x i8], [65 x i8]* @vlc_b64_encode_binary.b64, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %8, align 8
  store i8 %107, i8* %108, align 1
  %110 = load i32, i32* %10, align 4
  %111 = shl i32 %110, 2
  %112 = and i32 %111, 63
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [65 x i8], [65 x i8]* @vlc_b64_encode_binary.b64, i64 0, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %8, align 8
  store i8 %115, i8* %116, align 1
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %8, align 8
  store i8 61, i8* %118, align 1
  br label %144

120:                                              ; preds = %82
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = ashr i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [65 x i8], [65 x i8]* @vlc_b64_encode_binary.b64, i64 0, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %8, align 8
  store i8 %129, i8* %130, align 1
  %132 = load i32, i32* %11, align 4
  %133 = shl i32 %132, 4
  %134 = and i32 %133, 63
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [65 x i8], [65 x i8]* @vlc_b64_encode_binary.b64, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %8, align 8
  store i8 %137, i8* %138, align 1
  %140 = load i8*, i8** %8, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %8, align 8
  store i8 61, i8* %140, align 1
  %142 = load i8*, i8** %8, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %8, align 8
  store i8 61, i8* %142, align 1
  br label %144

144:                                              ; preds = %82, %120, %84
  %145 = load i8*, i8** %8, align 8
  store i8 0, i8* %145, align 1
  %146 = load i8*, i8** %7, align 8
  store i8* %146, i8** %3, align 8
  br label %147

147:                                              ; preds = %144, %25
  %148 = load i8*, i8** %3, align 8
  ret i8* %148
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
