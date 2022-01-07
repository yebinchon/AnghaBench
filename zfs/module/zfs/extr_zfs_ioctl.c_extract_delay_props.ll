; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_extract_delay_props.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_extract_delay_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@extract_delay_props.delayable = internal constant [3 x i64] [i64 128, i64 129, i64 0], align 16
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @extract_delay_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extract_delay_props(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %8 = load i32, i32* @KM_SLEEP, align 4
  %9 = call i64 @nvlist_alloc(i32** %3, i32 %7, i32 %8)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @VERIFY(i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32* @nvlist_next_nvpair(i32* %13, i32* null)
  store i32* %14, i32** %4, align 8
  br label %15

15:                                               ; preds = %64, %1
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %68

18:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x i64], [3 x i64]* @extract_delay_props.delayable, i64 0, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* @extract_delay_props.delayable, i64 0, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @zfs_prop_to_name(i64 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @nvpair_name(i32* %31)
  %33 = call i64 @strcmp(i32 %30, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %40

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %19

40:                                               ; preds = %35, %19
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x i64], [3 x i64]* @extract_delay_props.delayable, i64 0, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load i32*, i32** %2, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32* @nvlist_prev_nvpair(i32* %47, i32* %48)
  store i32* %49, i32** %5, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i64 @nvlist_add_nvpair(i32* %50, i32* %51)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @VERIFY(i32 %54)
  %56 = load i32*, i32** %2, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i64 @nvlist_remove_nvpair(i32* %56, i32* %57)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @VERIFY(i32 %60)
  %62 = load i32*, i32** %5, align 8
  store i32* %62, i32** %4, align 8
  br label %63

63:                                               ; preds = %46, %40
  br label %64

64:                                               ; preds = %63
  %65 = load i32*, i32** %2, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = call i32* @nvlist_next_nvpair(i32* %65, i32* %66)
  store i32* %67, i32** %4, align 8
  br label %15

68:                                               ; preds = %15
  %69 = load i32*, i32** %3, align 8
  %70 = call i64 @nvlist_empty(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @nvlist_free(i32* %73)
  store i32* null, i32** %3, align 8
  br label %75

75:                                               ; preds = %72, %68
  %76 = load i32*, i32** %3, align 8
  ret i32* %76
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @zfs_prop_to_name(i64) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32* @nvlist_prev_nvpair(i32*, i32*) #1

declare dso_local i64 @nvlist_add_nvpair(i32*, i32*) #1

declare dso_local i64 @nvlist_remove_nvpair(i32*, i32*) #1

declare dso_local i64 @nvlist_empty(i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
