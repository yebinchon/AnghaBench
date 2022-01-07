; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zcp_get.c_zcp_get_system_prop.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zcp_get.c_zcp_get_system_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FTAG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32)* @zcp_get_system_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcp_get_system_prop(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* @FTAG, align 4
  %17 = call i32* @zcp_dataset_hold(i32* %13, i32* %14, i8* %15, i32 %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %74

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i8* @zfs_prop_to_name(i32 %22)
  store i8* %23, i8** %12, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @prop_valid_for_ds(i32* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @FTAG, align 4
  %31 = call i32 @dsl_dataset_rele(i32* %29, i32 %30)
  store i32 0, i32* %5, align 4
  br label %74

32:                                               ; preds = %21
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @get_special_prop(i32* %33, i32* %34, i8* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* @FTAG, align 4
  %43 = call i32 @dsl_dataset_rele(i32* %41, i32 %42)
  store i32 2, i32* %5, align 4
  br label %74

44:                                               ; preds = %32
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @ENOENT, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* @FTAG, align 4
  %51 = call i32 @dsl_dataset_rele(i32* %49, i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @zcp_handle_error(i32* %52, i8* %53, i8* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %74

57:                                               ; preds = %44
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @get_zap_prop(i32* %58, i32* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* @FTAG, align 4
  %64 = call i32 @dsl_dataset_rele(i32* %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %57
  %68 = load i32*, i32** %6, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @zcp_handle_error(i32* %68, i8* %69, i8* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  br label %74

73:                                               ; preds = %57
  store i32 2, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %67, %48, %40, %28, %20
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32* @zcp_dataset_hold(i32*, i32*, i8*, i32) #1

declare dso_local i8* @zfs_prop_to_name(i32) #1

declare dso_local i32 @prop_valid_for_ds(i32*, i32) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @get_special_prop(i32*, i32*, i8*, i32) #1

declare dso_local i32 @zcp_handle_error(i32*, i8*, i8*, i32) #1

declare dso_local i32 @get_zap_prop(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
