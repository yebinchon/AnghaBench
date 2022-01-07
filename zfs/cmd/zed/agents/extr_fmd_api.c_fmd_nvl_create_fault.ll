; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_api.c_fmd_nvl_create_fault.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_api.c_fmd_nvl_create_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to xalloc fault nvlist\00", align 1
@FM_VERSION = common dso_local global i32 0, align 4
@FM_FAULT_VERSION = common dso_local global i32 0, align 4
@FM_CLASS = common dso_local global i32 0, align 4
@FM_FAULT_CERTAINTY = common dso_local global i32 0, align 4
@FM_FAULT_ASRU = common dso_local global i32 0, align 4
@FM_FAULT_FRU = common dso_local global i32 0, align 4
@FM_FAULT_RESOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to populate nvlist: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fmd_nvl_create_fault(i32* %0, i8* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %16 = call i64 @nvlist_alloc(i32** %13, i32 %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = call i32 (i8*, ...) @zed_log_die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %6
  %21 = load i32*, i32** %13, align 8
  %22 = load i32, i32* @FM_VERSION, align 4
  %23 = load i32, i32* @FM_FAULT_VERSION, align 4
  %24 = call i32 @nvlist_add_uint8(i32* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %14, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %14, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* @FM_CLASS, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @nvlist_add_string(i32* %27, i32 %28, i8* %29)
  %31 = load i32, i32* %14, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %14, align 4
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* @FM_FAULT_CERTAINTY, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @nvlist_add_uint8(i32* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %14, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %14, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %20
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* @FM_FAULT_ASRU, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @nvlist_add_nvlist(i32* %42, i32 %43, i32* %44)
  %46 = load i32, i32* %14, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %41, %20
  %49 = load i32*, i32** %11, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* @FM_FAULT_FRU, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @nvlist_add_nvlist(i32* %52, i32 %53, i32* %54)
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %51, %48
  %59 = load i32*, i32** %12, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* @FM_FAULT_RESOURCE, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @nvlist_add_nvlist(i32* %62, i32 %63, i32* %64)
  %66 = load i32, i32* %14, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %61, %58
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @strerror(i32 %72)
  %74 = call i32 (i8*, ...) @zed_log_die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32*, i32** %13, align 8
  ret i32* %76
}

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @zed_log_die(i8*, ...) #1

declare dso_local i32 @nvlist_add_uint8(i32*, i32, i32) #1

declare dso_local i32 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i32 @nvlist_add_nvlist(i32*, i32, i32*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
