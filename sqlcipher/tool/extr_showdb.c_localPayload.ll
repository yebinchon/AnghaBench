; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_localPayload.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_localPayload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8)* @localPayload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @localPayload(i32 %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %9 = load i8, i8* %4, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 13
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %14 = sub nsw i32 %13, 35
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %16 = sub nsw i32 %15, 12
  %17 = mul nsw i32 %16, 32
  %18 = sdiv i32 %17, 255
  %19 = sub nsw i32 %18, 23
  store i32 %19, i32* %6, align 4
  br label %31

20:                                               ; preds = %2
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %22 = sub nsw i32 %21, 12
  %23 = mul nsw i32 %22, 64
  %24 = sdiv i32 %23, 255
  %25 = sub nsw i32 %24, 23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %27 = sub nsw i32 %26, 12
  %28 = mul nsw i32 %27, 32
  %29 = sdiv i32 %28, 255
  %30 = sub nsw i32 %29, 23
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %20, %12
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %41 = sub nsw i32 %40, 4
  %42 = srem i32 %39, %41
  %43 = add nsw i32 %36, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %8, align 4
  br label %51

49:                                               ; preds = %35
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %47
  br label %54

52:                                               ; preds = %31
  %53 = load i32, i32* %3, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %51
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
