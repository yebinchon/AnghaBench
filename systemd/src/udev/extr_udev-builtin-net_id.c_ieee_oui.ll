; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_ieee_oui.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_ieee_oui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netnames = type { i32*, i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"OUI:%02X%02X%02X%02X%02X%02X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.netnames*, i32)* @ieee_oui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_oui(i32* %0, %struct.netnames* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.netnames*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  store i32* %0, i32** %5, align 8
  store %struct.netnames* %1, %struct.netnames** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.netnames*, %struct.netnames** %6, align 8
  %10 = getelementptr inbounds %struct.netnames, %struct.netnames* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %62

16:                                               ; preds = %3
  %17 = load %struct.netnames*, %struct.netnames** %6, align 8
  %18 = getelementptr inbounds %struct.netnames, %struct.netnames* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @memcmp(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %62

25:                                               ; preds = %16
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %27 = load %struct.netnames*, %struct.netnames** %6, align 8
  %28 = getelementptr inbounds %struct.netnames, %struct.netnames* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.netnames*, %struct.netnames** %6, align 8
  %33 = getelementptr inbounds %struct.netnames, %struct.netnames* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.netnames*, %struct.netnames** %6, align 8
  %38 = getelementptr inbounds %struct.netnames, %struct.netnames* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.netnames*, %struct.netnames** %6, align 8
  %43 = getelementptr inbounds %struct.netnames, %struct.netnames* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.netnames*, %struct.netnames** %6, align 8
  %48 = getelementptr inbounds %struct.netnames, %struct.netnames* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.netnames*, %struct.netnames** %6, align 8
  %53 = getelementptr inbounds %struct.netnames, %struct.netnames* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @xsprintf(i8* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %36, i32 %41, i32 %46, i32 %51, i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @udev_builtin_hwdb_lookup(i32* %58, i32* null, i8* %59, i32* null, i32 %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %25, %22, %13
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @xsprintf(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @udev_builtin_hwdb_lookup(i32*, i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
