; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_hglobalstream.c_handle_write.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_hglobalstream.c_handle_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_wrapper = type { i64, i32, i64 }

@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"write to invalid hglobal %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.handle_wrapper*, i64*, i8*, i64)* @handle_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @handle_write(%struct.handle_wrapper* %0, i64* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.handle_wrapper*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.handle_wrapper* %0, %struct.handle_wrapper** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %85

15:                                               ; preds = %4
  %16 = load %struct.handle_wrapper*, %struct.handle_wrapper** %6, align 8
  %17 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %16, i32 0, i32 1
  %18 = call i32 @EnterCriticalSection(i32* %17)
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = add nsw i64 %20, %21
  %23 = load %struct.handle_wrapper*, %struct.handle_wrapper** %6, align 8
  %24 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %15
  %28 = load %struct.handle_wrapper*, %struct.handle_wrapper** %6, align 8
  %29 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* @GMEM_MOVEABLE, align 4
  %36 = call i64 @GlobalReAlloc(i64 %30, i64 %34, i32 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %27
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.handle_wrapper*, %struct.handle_wrapper** %6, align 8
  %42 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load i64*, i64** %7, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.handle_wrapper*, %struct.handle_wrapper** %6, align 8
  %48 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %50

49:                                               ; preds = %27
  store i64 0, i64* %9, align 8
  br label %80

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %15
  %52 = load %struct.handle_wrapper*, %struct.handle_wrapper** %6, align 8
  %53 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i8* @GlobalLock(i64 %54)
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %74

58:                                               ; preds = %51
  %59 = load i8*, i8** %10, align 8
  %60 = load i64*, i64** %7, align 8
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @memcpy(i8* %62, i8* %63, i64 %64)
  %66 = load i64, i64* %9, align 8
  %67 = load i64*, i64** %7, align 8
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %66
  store i64 %69, i64* %67, align 8
  %70 = load %struct.handle_wrapper*, %struct.handle_wrapper** %6, align 8
  %71 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @GlobalUnlock(i64 %72)
  br label %79

74:                                               ; preds = %51
  %75 = load %struct.handle_wrapper*, %struct.handle_wrapper** %6, align 8
  %76 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %77)
  br label %79

79:                                               ; preds = %74, %58
  br label %80

80:                                               ; preds = %79, %49
  %81 = load %struct.handle_wrapper*, %struct.handle_wrapper** %6, align 8
  %82 = getelementptr inbounds %struct.handle_wrapper, %struct.handle_wrapper* %81, i32 0, i32 1
  %83 = call i32 @LeaveCriticalSection(i32* %82)
  %84 = load i64, i64* %9, align 8
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %80, %14
  %86 = load i64, i64* %5, align 8
  ret i64 %86
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i64 @GlobalReAlloc(i64, i64, i32) #1

declare dso_local i8* @GlobalLock(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @GlobalUnlock(i64) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
