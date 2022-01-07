; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_validateSTGM.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_validateSTGM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STGM_KNOWN_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unknown flags %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@STGM_TRANSACTED = common dso_local global i32 0, align 4
@STGM_SIMPLE = common dso_local global i32 0, align 4
@STGM_CONVERT = common dso_local global i32 0, align 4
@STGM_NOSCRATCH = common dso_local global i32 0, align 4
@STGM_NOSNAPSHOT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @validateSTGM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validateSTGM(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @STGM_ACCESS_MODE(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @STGM_SHARE_MODE(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @STGM_CREATE_MODE(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @STGM_KNOWN_FLAGS, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @E_FAIL, align 4
  store i32 %21, i32* %2, align 4
  br label %99

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %25 [
    i32 134, label %24
    i32 128, label %24
    i32 133, label %24
  ]

24:                                               ; preds = %22, %22, %22
  br label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @E_FAIL, align 4
  store i32 %26, i32* %2, align 4
  br label %99

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %38 [
    i32 132, label %29
    i32 131, label %29
    i32 130, label %29
    i32 129, label %29
    i32 0, label %30
  ]

29:                                               ; preds = %27, %27, %27, %27
  br label %40

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @STGM_TRANSACTED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @E_FAIL, align 4
  store i32 %36, i32* %2, align 4
  br label %99

37:                                               ; preds = %30
  br label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @E_FAIL, align 4
  store i32 %39, i32* %2, align 4
  br label %99

40:                                               ; preds = %37, %29
  %41 = load i32, i32* %6, align 4
  switch i32 %41, label %43 [
    i32 136, label %42
    i32 135, label %42
  ]

42:                                               ; preds = %40, %40
  br label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @E_FAIL, align 4
  store i32 %44, i32* %2, align 4
  br label %99

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @STGM_TRANSACTED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @STGM_SIMPLE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @E_FAIL, align 4
  store i32 %56, i32* %2, align 4
  br label %99

57:                                               ; preds = %50, %45
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 136
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @STGM_CONVERT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @E_FAIL, align 4
  store i32 %66, i32* %2, align 4
  br label %99

67:                                               ; preds = %60, %57
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @STGM_NOSCRATCH, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @STGM_TRANSACTED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @E_FAIL, align 4
  store i32 %78, i32* %2, align 4
  br label %99

79:                                               ; preds = %72, %67
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @STGM_NOSNAPSHOT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @STGM_TRANSACTED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, 129
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  %94 = icmp eq i32 %93, 130
  br i1 %94, label %95, label %97

95:                                               ; preds = %92, %89, %84
  %96 = load i32, i32* @E_FAIL, align 4
  store i32 %96, i32* %2, align 4
  br label %99

97:                                               ; preds = %92, %79
  %98 = load i32, i32* @S_OK, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %95, %77, %65, %55, %43, %38, %35, %25, %18
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @STGM_ACCESS_MODE(i32) #1

declare dso_local i32 @STGM_SHARE_MODE(i32) #1

declare dso_local i32 @STGM_CREATE_MODE(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
