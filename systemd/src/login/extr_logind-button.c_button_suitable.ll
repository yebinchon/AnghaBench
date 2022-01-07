; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-button.c_button_suitable.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-button.c_button_suitable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EV_KEY = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i32 0, align 4
@ULONG_BITS = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@KEY_POWER2 = common dso_local global i32 0, align 4
@KEY_SLEEP = common dso_local global i32 0, align 4
@KEY_SUSPEND = common dso_local global i32 0, align 4
@SW_LID = common dso_local global i32 0, align 4
@SW_DOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @button_suitable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @button_suitable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* @EV_KEY, align 4
  %12 = load i32, i32* @EV_SW, align 4
  %13 = call i32 @CONST_MAX(i32 %11, i32 %12)
  %14 = load i32, i32* @ULONG_BITS, align 4
  %15 = sdiv i32 %13, %14
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %4, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %20 = load i32, i32* %3, align 4
  %21 = icmp sge i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @EV_SYN, align 4
  %26 = mul nuw i64 8, %17
  %27 = trunc i64 %26 to i32
  %28 = call i32 @EVIOCGBIT(i32 %25, i32 %27)
  %29 = call i64 @ioctl(i32 %24, i32 %28, i64* %19)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @errno, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %121

34:                                               ; preds = %1
  %35 = load i32, i32* @EV_KEY, align 4
  %36 = call i64 @bitset_get(i64* %19, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %82

38:                                               ; preds = %34
  %39 = load i32, i32* @KEY_POWER, align 4
  %40 = load i32, i32* @KEY_POWER2, align 4
  %41 = load i32, i32* @KEY_SLEEP, align 4
  %42 = load i32, i32* @KEY_SUSPEND, align 4
  %43 = call i32 @CONST_MAX4(i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* @ULONG_BITS, align 4
  %45 = sdiv i32 %43, %44
  %46 = add nsw i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %7, align 8
  %49 = alloca i64, i64 %47, align 16
  store i64 %47, i64* %8, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @EV_KEY, align 4
  %52 = mul nuw i64 8, %47
  %53 = trunc i64 %52 to i32
  %54 = call i32 @EVIOCGBIT(i32 %51, i32 %53)
  %55 = call i64 @ioctl(i32 %50, i32 %54, i64* %49)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %38
  %58 = load i32, i32* @errno, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %78

60:                                               ; preds = %38
  %61 = load i32, i32* @KEY_POWER, align 4
  %62 = call i64 @bitset_get(i64* %49, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @KEY_POWER2, align 4
  %66 = call i64 @bitset_get(i64* %49, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @KEY_SLEEP, align 4
  %70 = call i64 @bitset_get(i64* %49, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @KEY_SUSPEND, align 4
  %74 = call i64 @bitset_get(i64* %49, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %68, %64, %60
  store i32 1, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %78

77:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %76, %57
  %79 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %6, align 4
  switch i32 %80, label %121 [
    i32 0, label %81
  ]

81:                                               ; preds = %78
  br label %82

82:                                               ; preds = %81, %34
  %83 = load i32, i32* @EV_SW, align 4
  %84 = call i64 @bitset_get(i64* %19, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %120

86:                                               ; preds = %82
  %87 = load i32, i32* @SW_LID, align 4
  %88 = load i32, i32* @SW_DOCK, align 4
  %89 = call i32 @CONST_MAX(i32 %87, i32 %88)
  %90 = load i32, i32* @ULONG_BITS, align 4
  %91 = sdiv i32 %89, %90
  %92 = add nsw i32 %91, 1
  %93 = zext i32 %92 to i64
  %94 = call i8* @llvm.stacksave()
  store i8* %94, i8** %9, align 8
  %95 = alloca i64, i64 %93, align 16
  store i64 %93, i64* %10, align 8
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @EV_SW, align 4
  %98 = mul nuw i64 8, %93
  %99 = trunc i64 %98 to i32
  %100 = call i32 @EVIOCGBIT(i32 %97, i32 %99)
  %101 = call i64 @ioctl(i32 %96, i32 %100, i64* %95)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %86
  %104 = load i32, i32* @errno, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %116

106:                                              ; preds = %86
  %107 = load i32, i32* @SW_LID, align 4
  %108 = call i64 @bitset_get(i64* %95, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* @SW_DOCK, align 4
  %112 = call i64 @bitset_get(i64* %95, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110, %106
  store i32 1, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %116

115:                                              ; preds = %110
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %115, %114, %103
  %117 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %6, align 4
  switch i32 %118, label %121 [
    i32 0, label %119
  ]

119:                                              ; preds = %116
  br label %120

120:                                              ; preds = %119, %82
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %121

121:                                              ; preds = %120, %116, %78, %31
  %122 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @CONST_MAX(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ioctl(i32, i32, i64*) #1

declare dso_local i32 @EVIOCGBIT(i32, i32) #1

declare dso_local i64 @bitset_get(i64*, i32) #1

declare dso_local i32 @CONST_MAX4(i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
