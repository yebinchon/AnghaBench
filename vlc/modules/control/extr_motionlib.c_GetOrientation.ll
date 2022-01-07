; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_motionlib.c_GetOrientation.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_motionlib.c_GetOrientation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"/sys/devices/platform/hdaps/position\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"(%d,%d)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"/sys/devices/ams/x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"/sys/devices/platform/applesmc.768/position\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"(%d,%d,%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @GetOrientation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetOrientation(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %69 [
    i32 129, label %12
    i32 131, label %32
    i32 130, label %49
  ]

12:                                               ; preds = %1
  %13 = call i32* @fopen(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %71

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 (i32*, i8*, i32*, ...) @fscanf(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %5, i32* %6)
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @fclose(i32* %20)
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %71

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  %31 = mul nsw i32 %30, 10
  store i32 %31, i32* %2, align 4
  br label %71

32:                                               ; preds = %1
  %33 = call i32* @fopen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %33, i32** %4, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %71

37:                                               ; preds = %32
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 (i32*, i8*, i32*, ...) @fscanf(i32* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %5)
  store i32 %39, i32* %8, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @fclose(i32* %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %71

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 0, %46
  %48 = mul nsw i32 %47, 30
  store i32 %48, i32* %2, align 4
  br label %71

49:                                               ; preds = %1
  %50 = call i32* @fopen(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %50, i32** %4, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %71

54:                                               ; preds = %49
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 (i32*, i8*, i32*, ...) @fscanf(i32* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %5, i32* %6, i32* %7)
  store i32 %56, i32* %8, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @fclose(i32* %57)
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 3
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %71

62:                                               ; preds = %54
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %63, %66
  %68 = mul nsw i32 %67, 10
  store i32 %68, i32* %2, align 4
  br label %71

69:                                               ; preds = %1
  %70 = call i32 (...) @vlc_assert_unreachable()
  br label %71

71:                                               ; preds = %16, %24, %25, %36, %44, %45, %53, %61, %62, %69
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
