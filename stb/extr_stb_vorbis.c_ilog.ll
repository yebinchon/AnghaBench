; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_ilog.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_ilog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ilog.log2_4 = internal global [16 x i8] c"\00\01\02\02\03\03\03\03\04\04\04\04\04\04\04\04", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ilog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 16384
  br i1 %9, label %10, label %39

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 16
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* @ilog.log2_4, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = add nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %80

20:                                               ; preds = %10
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 512
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, 5
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* @ilog.log2_4, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = add nsw i32 5, %29
  store i32 %30, i32* %2, align 4
  br label %80

31:                                               ; preds = %20
  %32 = load i32, i32* %3, align 4
  %33 = ashr i32 %32, 10
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* @ilog.log2_4, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 10, %37
  store i32 %38, i32* %2, align 4
  br label %80

39:                                               ; preds = %7
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 16777216
  br i1 %41, label %42, label %61

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 524288
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = ashr i32 %46, 15
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* @ilog.log2_4, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 15, %51
  store i32 %52, i32* %2, align 4
  br label %80

53:                                               ; preds = %42
  %54 = load i32, i32* %3, align 4
  %55 = ashr i32 %54, 20
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* @ilog.log2_4, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 20, %59
  store i32 %60, i32* %2, align 4
  br label %80

61:                                               ; preds = %39
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 536870912
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, i32* %3, align 4
  %66 = ashr i32 %65, 25
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* @ilog.log2_4, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 25, %70
  store i32 %71, i32* %2, align 4
  br label %80

72:                                               ; preds = %61
  %73 = load i32, i32* %3, align 4
  %74 = ashr i32 %73, 30
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* @ilog.log2_4, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = add nsw i32 30, %78
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %72, %64, %53, %45, %31, %23, %13, %6
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
