; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_parse_zlib_header.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_parse_zlib_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"bad zlib header\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Corrupt PNG\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"no preset dict\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"bad compression\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @parse_zlib_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_zlib_header(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @zget8(i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 15
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @zget8(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = mul nsw i32 %13, 256
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %14, %15
  %17 = srem i32 %16, 31
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @e(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  br label %33

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @e(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 8
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @e(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %30, %25, %19
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @zget8(i32*) #1

declare dso_local i32 @e(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
