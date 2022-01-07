; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_handle.c_DosResizeHandleTable.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_handle.c_DosResizeHandleTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i8*, i32 }

@Sda = common dso_local global %struct.TYPE_5__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@DEFAULT_JFT_SIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DosResizeHandleTable(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Sda, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call %struct.TYPE_4__* @SEGMENT_TO_PSP(i64 %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %2, align 4
  br label %127

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DEFAULT_JFT_SIZE, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %94

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @LOWORD(i8* %27)
  %29 = ashr i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @HIWORD(i8* %33)
  %35 = add nsw i64 %30, %34
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @DEFAULT_JFT_SIZE, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %24
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @FAR_POINTER(i8* %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @RtlCopyMemory(i32 %46, i32 %47, i64 %48)
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @DosFreeMemory(i64 %50)
  %52 = load i64, i64* %3, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Sda, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i8* @MAKELONG(i32 24, i64 %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %93

61:                                               ; preds = %24
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @DosResizeMemory(i64 %62, i64 %63, i32* null)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %89, label %66

66:                                               ; preds = %61
  %67 = load i64, i64* %3, align 8
  %68 = call i64 @DosAllocateMemory(i64 %67, i32* null)
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %2, align 4
  br label %127

73:                                               ; preds = %66
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @SEG_OFF_TO_PTR(i64 %74, i32 0)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @FAR_POINTER(i8* %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @RtlCopyMemory(i32 %76, i32 %80, i64 %83)
  %85 = load i64, i64* %6, align 8
  %86 = call i8* @MAKELONG(i32 0, i64 %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %73, %61
  %90 = load i64, i64* %3, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %39
  br label %125

94:                                               ; preds = %18
  %95 = load i64, i64* %3, align 8
  %96 = load i64, i64* @DEFAULT_JFT_SIZE, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %124

98:                                               ; preds = %94
  %99 = load i64, i64* %3, align 8
  %100 = call i64 @DosAllocateMemory(i64 %99, i32* null)
  store i64 %100, i64* %6, align 8
  %101 = load i64, i64* %6, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %2, align 4
  br label %127

105:                                              ; preds = %98
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @SEG_OFF_TO_PTR(i64 %106, i32 0)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @FAR_POINTER(i8* %111)
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @RtlCopyMemory(i32 %108, i32 %112, i64 %115)
  %117 = load i64, i64* %3, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load i64, i64* %6, align 8
  %121 = call i8* @MAKELONG(i32 0, i64 %120)
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %105, %94
  br label %125

125:                                              ; preds = %124, %93
  %126 = load i32, i32* @TRUE, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %103, %71, %16
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_4__* @SEGMENT_TO_PSP(i64) #1

declare dso_local i32 @LOWORD(i8*) #1

declare dso_local i64 @HIWORD(i8*) #1

declare dso_local i32 @FAR_POINTER(i8*) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i64) #1

declare dso_local i32 @DosFreeMemory(i64) #1

declare dso_local i8* @MAKELONG(i32, i64) #1

declare dso_local i32 @DosResizeMemory(i64, i64, i32*) #1

declare dso_local i64 @DosAllocateMemory(i64, i32*) #1

declare dso_local i32 @SEG_OFF_TO_PTR(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
