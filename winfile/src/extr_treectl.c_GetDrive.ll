; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_treectl.c_GetDrive.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_treectl.c_GetDrive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@GWLP_HINSTANCE = common dso_local global i32 0, align 4
@hAppInstance = common dso_local global i64 0, align 8
@CHAR_NULL = common dso_local global i64 0, align 8
@hwndMDIClient = common dso_local global i64 0, align 8
@FS_GETDRIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetDrive(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = bitcast %struct.TYPE_3__* %5 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %1, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %2, i64* %10, align 8
  store i64 %0, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* @GWLP_HINSTANCE, align 4
  %13 = call i64 @GetWindowLongPtr(i64 %11, i32 %12)
  %14 = load i64, i64* @hAppInstance, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %47

17:                                               ; preds = %3
  %18 = load i64, i64* @CHAR_NULL, align 8
  store i64 %18, i64* %7, align 8
  br label %19

19:                                               ; preds = %43, %17
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @hwndMDIClient, align 8
  %25 = icmp ne i64 %23, %24
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ false, %19 ], [ %25, %22 ]
  br i1 %27, label %28, label %46

28:                                               ; preds = %26
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* @FS_GETDRIVE, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @MAKELONG(i32 %33, i32 %36)
  %38 = call i64 @SendMessage(i64 %29, i32 %30, i32 0, i32 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %4, align 8
  br label %47

43:                                               ; preds = %28
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @GetParent(i64 %44)
  store i64 %45, i64* %6, align 8
  br label %19

46:                                               ; preds = %26
  store i64 0, i64* %4, align 8
  br label %47

47:                                               ; preds = %46, %41, %16
  %48 = load i64, i64* %4, align 8
  ret i64 %48
}

declare dso_local i64 @GetWindowLongPtr(i64, i32) #1

declare dso_local i64 @SendMessage(i64, i32, i32, i32) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

declare dso_local i64 @GetParent(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
