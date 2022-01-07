; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_dos.c_Patch_IO_SYS.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_dos.c_Patch_IO_SYS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.Patch_IO_SYS.expected = private unnamed_addr constant [8 x i32] [i32 250, i32 128, i32 117, i32 9, i32 141, i32 182, i32 153, i32 0], align 16
@.str = private unnamed_addr constant [20 x i8] c"Patching IO.SYS...\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"  unexpected file size\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DiskImage = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"  unexpected binary data\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @Patch_IO_SYS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Patch_IO_SYS(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [8 x i32], align 16
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([8 x i32]* @__const.Patch_IO_SYS.expected to i8*), i64 32, i1 false)
  %8 = call i32 @uprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 116736
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = call i32 @uprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load i32*, i32** @DiskImage, align 8
  %16 = load i64, i64* %4, align 8
  %17 = add i64 %16, 936
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %20 = call i64 @memcmp(i32* %18, i32* %19, i32 32)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = call i32 @uprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  br label %31

25:                                               ; preds = %14
  %26 = load i32*, i32** @DiskImage, align 8
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 938
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 235, i32* %29, align 4
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %25, %22, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @uprintf(i8*) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
