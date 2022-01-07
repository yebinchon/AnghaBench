; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comdlg32/extr_itemdlg.c_filedialog_change_filetype.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comdlg32/extr_itemdlg.c_filedialog_change_filetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.filedialog_change_filetype.filetype1 = private unnamed_addr constant [7 x float] [float 1.020000e+02, float 1.100000e+02, float 9.700000e+01, float 1.090000e+02, float 1.010000e+02, float 4.900000e+01, float 0.000000e+00], align 16
@__const.filedialog_change_filetype.filetype1_broken = private unnamed_addr constant [15 x float] [float 1.020000e+02, float 1.100000e+02, float 9.700000e+01, float 1.090000e+02, float 1.010000e+02, float 4.900000e+01, float 3.200000e+01, float 4.000000e+01, float 4.200000e+01, float 4.600000e+01, float 1.160000e+02, float 1.200000e+02, float 1.160000e+02, float 4.100000e+01, float 0.000000e+00], align 16
@.str = private unnamed_addr constant [42 x i8] c"Could not find combobox on first attempt\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Didn't find combobox on first attempt, trying broken string..\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to find combobox on second attempt\0A\00", align 1
@CB_SHOWDROPDOWN = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@WM_LBUTTONDOWN = common dso_local global i32 0, align 4
@WM_LBUTTONUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @filedialog_change_filetype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filedialog_change_filetype(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [7 x float], align 16
  %7 = alloca [15 x float], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = bitcast [7 x float]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([7 x float]* @__const.filedialog_change_filetype.filetype1 to i8*), i64 28, i1 false)
  %9 = bitcast [15 x float]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([15 x float]* @__const.filedialog_change_filetype.filetype1_broken to i8*), i64 60, i1 false)
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds [7 x float], [7 x float]* %6, i64 0, i64 0
  %12 = call i32* @find_window(i32* %10, i32* null, float* %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @broken(i32 %18)
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ true, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %21
  %28 = call i32 @trace(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds [15 x float], [15 x float]* %7, i64 0, i64 0
  %31 = call i32* @find_window(i32* %29, i32* null, float* %30)
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @broken(i32 %34)
  %36 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32*, i32** %5, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %27
  br label %54

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %21
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @CB_SHOWDROPDOWN, align 4
  %44 = call i32 @SendMessageW(i32* %42, i32 %43, i32 1, i32 0)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @CB_SETCURSEL, align 4
  %47 = call i32 @SendMessageW(i32* %45, i32 %46, i32 1, i32 0)
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @WM_LBUTTONDOWN, align 4
  %50 = call i32 @SendMessageW(i32* %48, i32 %49, i32 0, i32 -1)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @WM_LBUTTONUP, align 4
  %53 = call i32 @SendMessageW(i32* %51, i32 %52, i32 0, i32 -1)
  br label %54

54:                                               ; preds = %41, %39
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @find_window(i32*, i32*, float*) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @broken(i32) #2

declare dso_local i32 @trace(i8*) #2

declare dso_local i32 @SendMessageW(i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
