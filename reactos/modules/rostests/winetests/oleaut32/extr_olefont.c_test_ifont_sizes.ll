; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_ifont_sizes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_ifont_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOGPIXELSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"rounding\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"Skipping resolution dependent font size tests - display resolution is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ratio1\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ratio2\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ratio3\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"rounding+ratio\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"identical ratio 1\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"identical ratio 2\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"identical ratio 3\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"1:1 ratio 1\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"1:1 ratio 2\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"1:1 ratio 3\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"1:0 ratio 1\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"1:0 ratio 2\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"1:0 ratio 3\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"0:1 ratio 1\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"0:1 ratio 2\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"0:1 ratio 3\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"2:1 ratio 1\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"2:1 ratio 2\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"2:1 ratio 3\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"1:2 ratio 1\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"1:2 ratio 2\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"1:2 ratio 3\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"2:2 ratio 1\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"2:2 ratio 2\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"2:2 ratio 3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ifont_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ifont_sizes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @GetDC(i32 0)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @LOGPIXELSY, align 4
  %6 = call i32 @GetDeviceCaps(i32 %4, i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @ReleaseDC(i32 0, i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 96
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = call i32 @test_ifont_size(i32 180000, i32 0, i32 0, i32 -24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @test_ifont_size(i32 186000, i32 0, i32 0, i32 -25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %31

14:                                               ; preds = %0
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, 72
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = call i32 @test_ifont_size(i32 180000, i32 0, i32 0, i32 -18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @test_ifont_size(i32 186000, i32 0, i32 0, i32 -19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %30

20:                                               ; preds = %14
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 120
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = call i32 @test_ifont_size(i32 180000, i32 0, i32 0, i32 -30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @test_ifont_size(i32 186000, i32 0, i32 0, i32 -31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @skip(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %17
  br label %31

31:                                               ; preds = %30, %11
  %32 = call i32 @test_ifont_size(i32 180000, i32 72, i32 2540, i32 -18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @test_ifont_size(i32 180000, i32 144, i32 2540, i32 -36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %34 = call i32 @test_ifont_size(i32 180000, i32 72, i32 1270, i32 -36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %35 = call i32 @test_ifont_size(i32 186000, i32 72, i32 2540, i32 -19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %36 = call i32 @test_ifont_size(i32 180000, i32 10, i32 10, i32 -635, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %37 = call i32 @test_ifont_size(i32 240000, i32 10, i32 10, i32 -848, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %38 = call i32 @test_ifont_size(i32 300000, i32 10, i32 10, i32 -1058, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %39 = call i32 @test_ifont_size(i32 180000, i32 1, i32 1, i32 -24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %40 = call i32 @test_ifont_size(i32 240000, i32 1, i32 1, i32 -32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %41 = call i32 @test_ifont_size(i32 300000, i32 1, i32 1, i32 -40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %42 = call i32 @test_ifont_size(i32 180000, i32 1, i32 0, i32 -24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %43 = call i32 @test_ifont_size(i32 240000, i32 1, i32 0, i32 -32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %44 = call i32 @test_ifont_size(i32 300000, i32 1, i32 0, i32 -40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %45 = call i32 @test_ifont_size(i32 180000, i32 0, i32 1, i32 -24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %46 = call i32 @test_ifont_size(i32 240000, i32 0, i32 1, i32 -32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %47 = call i32 @test_ifont_size(i32 300000, i32 0, i32 1, i32 -40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %48 = call i32 @test_ifont_size(i32 180000, i32 2, i32 1, i32 -1270, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %49 = call i32 @test_ifont_size(i32 240000, i32 2, i32 1, i32 -1694, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %50 = call i32 @test_ifont_size(i32 300000, i32 2, i32 1, i32 -2117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %51 = call i32 @test_ifont_size(i32 180000, i32 1, i32 2, i32 -318, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  %52 = call i32 @test_ifont_size(i32 240000, i32 1, i32 2, i32 -424, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0))
  %53 = call i32 @test_ifont_size(i32 300000, i32 1, i32 2, i32 -529, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  %54 = call i32 @test_ifont_size(i32 180000, i32 2, i32 2, i32 -635, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  %55 = call i32 @test_ifont_size(i32 240000, i32 2, i32 2, i32 -848, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
  %56 = call i32 @test_ifont_size(i32 300000, i32 2, i32 2, i32 -1058, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @test_ifont_size(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @skip(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
