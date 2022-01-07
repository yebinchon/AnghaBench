; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/opengl32/extr_sw_pixelformat.c_test_bitmap_formats.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/opengl32/extr_sw_pixelformat.c_test_bitmap_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_color = type { i32 }

@test_bitmap_formats.bpps = internal constant [5 x i32] [i32 4, i32 8, i32 16, i32 24, i32 32], align 16
@.str = private unnamed_addr constant [30 x i8] c"Failed creating a memory DC.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to create DIB for %u bpp\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to select the DIB\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"testing DIB %ubpp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_color**)* @test_bitmap_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bitmap_formats(%struct.test_color** %0) #0 {
  %2 = alloca %struct.test_color**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.test_color** %0, %struct.test_color*** %2, align 8
  %8 = call i32* @CreateCompatibleDC(i32* null)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %51, %1
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_bitmap_formats.bpps, i64 0, i64 0))
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* @test_bitmap_formats.bpps, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @create_dib_section(i32 %21, i8** %7)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* @test_bitmap_formats.bpps, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32* @SelectObject(i32* %31, i32* %32)
  store i32* %33, i32** %3, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* @test_bitmap_formats.bpps, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.test_color**, %struct.test_color*** %2, align 8
  %45 = call i32 @test_bitmap_colors(i32* %43, %struct.test_color** %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = call i32* @SelectObject(i32* %46, i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @DeleteObject(i32* %49)
  br label %51

51:                                               ; preds = %17
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %13

54:                                               ; preds = %13
  ret void
}

declare dso_local i32* @CreateCompatibleDC(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32* @create_dib_section(i32, i8**) #1

declare dso_local i32* @SelectObject(i32*, i32*) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @test_bitmap_colors(i32*, %struct.test_color**) #1

declare dso_local i32 @DeleteObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
