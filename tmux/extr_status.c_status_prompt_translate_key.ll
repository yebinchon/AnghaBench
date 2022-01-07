; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_translate_key.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_translate_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i64, i32 }

@PROMPT_ENTRY = common dso_local global i64 0, align 8
@PROMPT_COMMAND = common dso_local global i64 0, align 8
@CLIENT_REDRAWSTATUS = common dso_local global i32 0, align 4
@KEYC_ESCAPE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, i32, i32*)* @status_prompt_translate_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_prompt_translate_key(%struct.client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.client* %0, %struct.client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.client*, %struct.client** %5, align 8
  %9 = getelementptr inbounds %struct.client, %struct.client* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PROMPT_ENTRY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %27 [
    i32 3, label %15
    i32 8, label %15
    i32 9, label %15
    i32 21, label %15
    i32 23, label %15
    i32 10, label %15
    i32 13, label %15
    i32 135, label %15
    i32 134, label %15
    i32 133, label %15
    i32 132, label %15
    i32 131, label %15
    i32 130, label %15
    i32 129, label %15
    i32 128, label %15
    i32 27, label %18
  ]

15:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  store i32 1, i32* %4, align 4
  br label %96

18:                                               ; preds = %13
  %19 = load i64, i64* @PROMPT_COMMAND, align 8
  %20 = load %struct.client*, %struct.client** %5, align 8
  %21 = getelementptr inbounds %struct.client, %struct.client* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* @CLIENT_REDRAWSTATUS, align 4
  %23 = load %struct.client*, %struct.client** %5, align 8
  %24 = getelementptr inbounds %struct.client, %struct.client* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  store i32 0, i32* %4, align 4
  br label %96

27:                                               ; preds = %13
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  store i32 2, i32* %4, align 4
  br label %96

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %60 [
    i32 65, label %32
    i32 73, label %32
    i32 67, label %32
    i32 115, label %32
    i32 97, label %32
    i32 83, label %41
    i32 105, label %51
    i32 27, label %51
  ]

32:                                               ; preds = %30, %30, %30, %30, %30
  %33 = load i64, i64* @PROMPT_ENTRY, align 8
  %34 = load %struct.client*, %struct.client** %5, align 8
  %35 = getelementptr inbounds %struct.client, %struct.client* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @CLIENT_REDRAWSTATUS, align 4
  %37 = load %struct.client*, %struct.client** %5, align 8
  %38 = getelementptr inbounds %struct.client, %struct.client* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %60

41:                                               ; preds = %30
  %42 = load i64, i64* @PROMPT_ENTRY, align 8
  %43 = load %struct.client*, %struct.client** %5, align 8
  %44 = getelementptr inbounds %struct.client, %struct.client* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* @CLIENT_REDRAWSTATUS, align 4
  %46 = load %struct.client*, %struct.client** %5, align 8
  %47 = getelementptr inbounds %struct.client, %struct.client* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32*, i32** %7, align 8
  store i32 21, i32* %50, align 4
  store i32 1, i32* %4, align 4
  br label %96

51:                                               ; preds = %30, %30
  %52 = load i64, i64* @PROMPT_ENTRY, align 8
  %53 = load %struct.client*, %struct.client** %5, align 8
  %54 = getelementptr inbounds %struct.client, %struct.client* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* @CLIENT_REDRAWSTATUS, align 4
  %56 = load %struct.client*, %struct.client** %5, align 8
  %57 = getelementptr inbounds %struct.client, %struct.client* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  store i32 0, i32* %4, align 4
  br label %96

60:                                               ; preds = %30, %32
  %61 = load i32, i32* %6, align 4
  switch i32 %61, label %95 [
    i32 65, label %62
    i32 36, label %62
    i32 73, label %64
    i32 48, label %64
    i32 94, label %64
    i32 67, label %66
    i32 68, label %66
    i32 135, label %68
    i32 88, label %68
    i32 98, label %70
    i32 66, label %70
    i32 100, label %75
    i32 101, label %77
    i32 69, label %77
    i32 119, label %77
    i32 87, label %77
    i32 112, label %82
    i32 115, label %84
    i32 134, label %84
    i32 120, label %84
    i32 133, label %86
    i32 106, label %86
    i32 130, label %88
    i32 104, label %88
    i32 97, label %90
    i32 129, label %90
    i32 108, label %90
    i32 128, label %92
    i32 107, label %92
    i32 8, label %94
    i32 3, label %94
    i32 10, label %94
    i32 13, label %94
  ]

62:                                               ; preds = %60, %60
  %63 = load i32*, i32** %7, align 8
  store i32 132, i32* %63, align 4
  store i32 1, i32* %4, align 4
  br label %96

64:                                               ; preds = %60, %60, %60
  %65 = load i32*, i32** %7, align 8
  store i32 131, i32* %65, align 4
  store i32 1, i32* %4, align 4
  br label %96

66:                                               ; preds = %60, %60
  %67 = load i32*, i32** %7, align 8
  store i32 11, i32* %67, align 4
  store i32 1, i32* %4, align 4
  br label %96

68:                                               ; preds = %60, %60
  %69 = load i32*, i32** %7, align 8
  store i32 135, i32* %69, align 4
  store i32 1, i32* %4, align 4
  br label %96

70:                                               ; preds = %60, %60
  %71 = load i8, i8* @KEYC_ESCAPE, align 1
  %72 = sext i8 %71 to i32
  %73 = or i32 98, %72
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  store i32 1, i32* %4, align 4
  br label %96

75:                                               ; preds = %60
  %76 = load i32*, i32** %7, align 8
  store i32 21, i32* %76, align 4
  store i32 1, i32* %4, align 4
  br label %96

77:                                               ; preds = %60, %60, %60, %60
  %78 = load i8, i8* @KEYC_ESCAPE, align 1
  %79 = sext i8 %78 to i32
  %80 = or i32 102, %79
  %81 = load i32*, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  store i32 1, i32* %4, align 4
  br label %96

82:                                               ; preds = %60
  %83 = load i32*, i32** %7, align 8
  store i32 25, i32* %83, align 4
  store i32 1, i32* %4, align 4
  br label %96

84:                                               ; preds = %60, %60, %60
  %85 = load i32*, i32** %7, align 8
  store i32 134, i32* %85, align 4
  store i32 1, i32* %4, align 4
  br label %96

86:                                               ; preds = %60, %60
  %87 = load i32*, i32** %7, align 8
  store i32 133, i32* %87, align 4
  store i32 1, i32* %4, align 4
  br label %96

88:                                               ; preds = %60, %60
  %89 = load i32*, i32** %7, align 8
  store i32 130, i32* %89, align 4
  store i32 1, i32* %4, align 4
  br label %96

90:                                               ; preds = %60, %60, %60
  %91 = load i32*, i32** %7, align 8
  store i32 129, i32* %91, align 4
  store i32 1, i32* %4, align 4
  br label %96

92:                                               ; preds = %60, %60
  %93 = load i32*, i32** %7, align 8
  store i32 128, i32* %93, align 4
  store i32 1, i32* %4, align 4
  br label %96

94:                                               ; preds = %60, %60, %60, %60
  store i32 1, i32* %4, align 4
  br label %96

95:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %94, %92, %90, %88, %86, %84, %82, %77, %75, %70, %68, %66, %64, %62, %51, %41, %27, %18, %15
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
