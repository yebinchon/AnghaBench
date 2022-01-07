; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_cursoricon.c_check_alpha_draw.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_cursoricon.c_check_alpha_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DI_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"%s. Expected a close match to %06X (modern) or %06X (legacy) with %s. Got %06X from line %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Alpha blending\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Not alpha blending\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"DrawIconEx\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"DrawIcon\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i32, i32)* @check_alpha_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_alpha_draw(i32 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 10531008, i32* %16, align 4
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 -16777216, i32 0
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 16777215, i32 12628128
  store i32 %25, i32* %13, align 4
  store i32 12628128, i32* %14, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %29 = call i32 @create_test_icon(i32 %26, i32 2, i32 1, i32 %27, i32 0, i32* %28, i32 8)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %5
  br label %76

33:                                               ; preds = %5
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @SetPixelV(i32 %34, i32 0, i32 0, i32 16777215)
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @DI_NORMAL, align 4
  %42 = call i32 @DrawIconEx(i32 %39, i32 0, i32 0, i32 %40, i32 2, i32 1, i32 0, i32* null, i32 %41)
  br label %47

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @DrawIcon(i32 %44, i32 0, i32 0, i32 %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @GetPixel(i32 %48, i32 0, i32 0)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i64 @color_match(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i64 @color_match(i32 %55, i32 %56)
  %58 = call i64 @broken(i64 %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %54, %47
  %61 = phi i1 [ true, %47 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0)
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i8* %66, i32 %67, i32 %68, i8* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %60, %32
  ret void
}

declare dso_local i32 @create_test_icon(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @SetPixelV(i32, i32, i32, i32) #1

declare dso_local i32 @DrawIconEx(i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @DrawIcon(i32, i32, i32, i32) #1

declare dso_local i32 @GetPixel(i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @color_match(i32, i32) #1

declare dso_local i64 @broken(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
