; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_usage_prop_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_usage_prop_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"\09%-15s \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" NO    \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"YES    \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"  YES   \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"   NO   \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ZPROP_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @usage_prop_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usage_prop_cb(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i8* @zfs_prop_to_name(i32 %9)
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @zfs_prop_readonly(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %21

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @zfs_prop_inheritable(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %31

28:                                               ; preds = %21
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %3, align 4
  %33 = call i8* @zfs_prop_values(i32 %32)
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %43

38:                                               ; preds = %31
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i8* @zfs_prop_values(i32 %40)
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* @ZPROP_CONT, align 4
  ret i32 %44
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @zfs_prop_to_name(i32) #1

declare dso_local i64 @zfs_prop_readonly(i32) #1

declare dso_local i64 @zfs_prop_inheritable(i32) #1

declare dso_local i8* @zfs_prop_values(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
