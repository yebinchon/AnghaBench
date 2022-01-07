; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlCompareUnicodeString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlCompareUnicodeString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"wrong result %d %04x %04x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlCompareUnicodeString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlCompareUnicodeString() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32* %1, i32** %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  store i32 4, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 4, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32* %2, i32** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 4, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 4, i32* %11, align 8
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %78, %0
  %13 = load i32, i32* %1, align 4
  %14 = icmp slt i32 %13, 512
  br i1 %14, label %15, label %81

15:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %74, %15
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 1024
  br i1 %18, label %19, label %77

19:                                               ; preds = %16
  %20 = load i32, i32* @FALSE, align 4
  %21 = call i32 @pRtlCompareUnicodeString(%struct.TYPE_4__* %3, %struct.TYPE_4__* %4, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %2, align 4
  %25 = sub nsw i32 %23, %24
  %26 = icmp eq i32 %22, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @pRtlCompareUnicodeString(%struct.TYPE_4__* %3, %struct.TYPE_4__* %4, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @pRtlUpcaseUnicodeChar(i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @pRtlUpcaseUnicodeChar(i32 %37)
  %39 = sub nsw i32 %36, %38
  %40 = icmp eq i32 %34, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  br i1 true, label %46, label %73

46:                                               ; preds = %19
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i32 @pRtlCompareUnicodeStrings(i32* %1, i32 1, i32* %2, i32 1, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* %2, align 4
  %52 = sub nsw i32 %50, %51
  %53 = icmp eq i32 %49, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* @TRUE, align 4
  %60 = call i32 @pRtlCompareUnicodeStrings(i32* %1, i32 1, i32* %2, i32 1, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %1, align 4
  %63 = call i32 @pRtlUpcaseUnicodeChar(i32 %62)
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @pRtlUpcaseUnicodeChar(i32 %64)
  %66 = sub nsw i32 %63, %65
  %67 = icmp eq i32 %61, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %1, align 4
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %46, %19
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %2, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %2, align 4
  br label %16

77:                                               ; preds = %16
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %1, align 4
  br label %12

81:                                               ; preds = %12
  ret void
}

declare dso_local i32 @pRtlCompareUnicodeString(%struct.TYPE_4__*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pRtlUpcaseUnicodeChar(i32) #1

declare dso_local i32 @pRtlCompareUnicodeStrings(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
