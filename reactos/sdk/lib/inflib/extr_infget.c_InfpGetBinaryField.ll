; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infget.c_InfpGetBinaryField.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infget.c_InfpGetBinaryField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Invalid parameter\0A\00", align 1
@INF_STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@INF_STATUS_NOT_FOUND = common dso_local global i32 0, align 4
@INF_STATUS_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@INF_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfpGetBinaryField(i32* %0, i64 %1, i64* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %5
  %23 = call i32 @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @INF_STATUS_INVALID_PARAMETER, align 4
  store i32 %24, i32* %6, align 4
  br label %95

25:                                               ; preds = %19
  %26 = load i64*, i64** %11, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64*, i64** %11, align 8
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32*, i32** %7, align 8
  %32 = call %struct.TYPE_4__* @InfpGetLineForContext(i32* %31)
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %12, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @INF_STATUS_NOT_FOUND, align 4
  store i32 %39, i32* %6, align 4
  br label %95

40:                                               ; preds = %30
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %13, align 8
  store i64 1, i64* %14, align 8
  br label %44

44:                                               ; preds = %52, %40
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %13, align 8
  br label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %14, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %14, align 8
  br label %44

55:                                               ; preds = %44
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = sub nsw i64 %58, %59
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %15, align 8
  %62 = load i64*, i64** %11, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i64, i64* %15, align 8
  %66 = load i64*, i64** %11, align 8
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %55
  %68 = load i64*, i64** %9, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %93

70:                                               ; preds = %67
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %15, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @INF_STATUS_BUFFER_OVERFLOW, align 4
  store i32 %75, i32* %6, align 4
  br label %95

76:                                               ; preds = %70
  %77 = load i64*, i64** %9, align 8
  store i64* %77, i64** %16, align 8
  br label %78

78:                                               ; preds = %81, %76
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %80 = icmp ne %struct.TYPE_5__* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @strtoulW(i32 %84, i32* null, i32 16)
  %86 = load i64*, i64** %16, align 8
  store i64 %85, i64* %86, align 8
  %87 = load i64*, i64** %16, align 8
  %88 = getelementptr inbounds i64, i64* %87, i32 1
  store i64* %88, i64** %16, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  store %struct.TYPE_5__* %91, %struct.TYPE_5__** %13, align 8
  br label %78

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92, %67
  %94 = load i32, i32* @INF_STATUS_SUCCESS, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %93, %74, %38, %22
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local %struct.TYPE_4__* @InfpGetLineForContext(i32*) #1

declare dso_local i64 @strtoulW(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
