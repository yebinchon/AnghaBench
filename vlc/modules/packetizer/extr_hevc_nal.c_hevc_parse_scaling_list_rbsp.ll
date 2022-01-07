; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_parse_scaling_list_rbsp.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_parse_scaling_list_rbsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @hevc_parse_scaling_list_rbsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hevc_parse_scaling_list_rbsp(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @bs_remain(i32* %9)
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %65, %13
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %68

17:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %57, %17
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 6
  br i1 %20, label %21, label %64

21:                                               ; preds = %18
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @bs_read1(i32* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @bs_read_ue(i32* %26)
  br label %56

28:                                               ; preds = %21
  store i32 8, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = shl i32 %29, 1
  %31 = add nsw i32 4, %30
  %32 = shl i32 1, %31
  %33 = call i32 @__MIN(i32 64, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @bs_read_se(i32* %37)
  %39 = add i32 %38, 8
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %36, %28
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %52, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @bs_read_se(i32* %47)
  %49 = add i32 %46, %48
  %50 = add i32 %49, 256
  %51 = urem i32 %50, 256
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %41

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %25
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 3
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 3, i32 1
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %18

64:                                               ; preds = %18
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %14

68:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %12
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @bs_remain(i32*) #1

declare dso_local i64 @bs_read1(i32*) #1

declare dso_local i32 @bs_read_ue(i32*) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local i32 @bs_read_se(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
