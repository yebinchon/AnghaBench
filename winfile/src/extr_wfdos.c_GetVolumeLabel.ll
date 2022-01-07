; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdos.c_GetVolumeLabel.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdos.c_GetVolumeLabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@aDriveInfo = common dso_local global %struct.TYPE_2__* null, align 8
@VolInfo = common dso_local global i32 0, align 4
@CHAR_NULL = common dso_local global i32 0, align 4
@CHAR_OPENBRACK = common dso_local global i32 0, align 4
@SZ_CLOSEBRACK = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetVolumeLabel(i64 %0, i32** %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @U_VolInfo(i64 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aDriveInfo, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = load i32**, i32*** %6, align 8
  store i32* %15, i32** %16, align 8
  %17 = load i32, i32* @VolInfo, align 4
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @GETRETVAL(i32 %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load i32**, i32*** %6, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21, %3
  %27 = load i32, i32* @VolInfo, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @GETRETVAL(i32 %27, i64 %28)
  store i64 %29, i64* %4, align 8
  br label %56

30:                                               ; preds = %21
  %31 = load i32, i32* @CHAR_NULL, align 4
  %32 = load i32**, i32*** %6, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aDriveInfo, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  store i32 %31, i32* %39, align 4
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %30
  %43 = load i32**, i32*** %6, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 -1
  store i32* %45, i32** %43, align 8
  %46 = load i32, i32* @CHAR_OPENBRACK, align 4
  %47 = load i32**, i32*** %6, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %46, i32* %49, align 4
  %50 = load i32**, i32*** %6, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @SZ_CLOSEBRACK, align 4
  %53 = call i32 @lstrcat(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %42, %30
  %55 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %54, %26
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i32 @U_VolInfo(i64) #1

declare dso_local i64 @GETRETVAL(i32, i64) #1

declare dso_local i32 @lstrcat(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
