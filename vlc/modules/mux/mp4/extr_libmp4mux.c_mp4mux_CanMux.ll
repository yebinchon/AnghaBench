; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_mp4mux_CanMux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_mp4mux_CanMux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [69 x i8] c"H264 muxing from AnnexB source will set an incorrect default profile\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"HEVC muxing from AnnexB source is unsupported\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"subtitle track added like in .mov (even when creating .mp4)\00", align 1
@BRAND_smoo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp4mux_CanMux(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %60 [
    i32 156, label %13
    i32 152, label %13
    i32 151, label %13
    i32 142, label %13
    i32 141, label %13
    i32 140, label %13
    i32 143, label %13
    i32 139, label %13
    i32 144, label %13
    i32 145, label %13
    i32 147, label %13
    i32 146, label %13
    i32 136, label %13
    i32 135, label %13
    i32 150, label %13
    i32 155, label %13
    i32 154, label %13
    i32 128, label %13
    i32 129, label %13
    i32 132, label %13
    i32 130, label %13
    i32 153, label %13
    i32 149, label %14
    i32 148, label %26
    i32 137, label %39
    i32 134, label %50
    i32 138, label %55
    i32 133, label %55
    i32 131, label %55
  ]

13:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  br label %61

14:                                               ; preds = %4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @msg_Warn(i32* %23, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %19, %14
  br label %61

26:                                               ; preds = %4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @msg_Err(i32* %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  store i32 0, i32* %5, align 4
  br label %62

38:                                               ; preds = %26
  br label %61

39:                                               ; preds = %4
  %40 = load i32*, i32** %6, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @msg_Warn(i32* %43, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %62

50:                                               ; preds = %4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @BRAND_smoo, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %5, align 4
  br label %62

55:                                               ; preds = %4, %4, %4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %62

60:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %62

61:                                               ; preds = %38, %25, %13
  store i32 1, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %60, %55, %50, %45, %37
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
