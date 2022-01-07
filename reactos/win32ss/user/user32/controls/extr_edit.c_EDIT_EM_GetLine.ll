; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_EM_GetLine.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_EM_GetLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64 }

@ES_MULTILINE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64, i64*, i64)* @EDIT_EM_GetLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @EDIT_EM_GetLine(%struct.TYPE_5__* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ES_MULTILINE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i64 0, i64* %5, align 8
  br label %92

28:                                               ; preds = %21
  br label %30

29:                                               ; preds = %4
  store i64 0, i64* %7, align 8
  br label %30

30:                                               ; preds = %29, %28
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @EDIT_EM_LineIndex(%struct.TYPE_5__* %31, i64 %32)
  store i64 %33, i64* %13, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %13, align 8
  %38 = add nsw i64 %36, %37
  %39 = inttoptr i64 %38 to i64*
  store i64* %39, i64** %10, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i64 @EDIT_EM_LineLength(%struct.TYPE_5__* %40, i64 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %30
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i64*, i64** %8, align 8
  %53 = load i64*, i64** %10, align 8
  %54 = load i64, i64* %12, align 8
  %55 = mul i64 %54, 4
  %56 = call i32 @memcpy(i64* %52, i64* %53, i64 %55)
  %57 = load i64, i64* %12, align 8
  store i64 %57, i64* %5, align 8
  br label %92

58:                                               ; preds = %47
  %59 = load i64*, i64** %8, align 8
  %60 = load i64*, i64** %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = mul i64 %61, 4
  %63 = call i32 @memcpy(i64* %59, i64* %60, i64 %62)
  %64 = load i64*, i64** %8, align 8
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* %11, align 8
  store i64 %67, i64* %5, align 8
  br label %92

68:                                               ; preds = %30
  %69 = load i32, i32* @CP_ACP, align 4
  %70 = load i64*, i64** %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64*, i64** %8, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i64 @WideCharToMultiByte(i32 %69, i32 0, i64* %70, i64 %71, i64* %72, i64 %73, i32* null, i32* null)
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %14, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %68
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i64, i64* %12, align 8
  store i64 %81, i64* %5, align 8
  br label %92

82:                                               ; preds = %77, %68
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i64*, i64** %8, align 8
  %88 = load i64, i64* %14, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i64, i64* %14, align 8
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %90, %80, %58, %51, %27
  %93 = load i64, i64* %5, align 8
  ret i64 %93
}

declare dso_local i64 @EDIT_EM_LineIndex(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @EDIT_EM_LineLength(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i64 @WideCharToMultiByte(i32, i32, i64*, i64, i64*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
