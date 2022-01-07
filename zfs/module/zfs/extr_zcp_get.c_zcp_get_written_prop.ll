; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zcp_get.c_zcp_get_written_prop.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zcp_get.c_zcp_get_written_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i8*)* @zcp_get_written_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcp_get_written_prop(i32* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %19 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  store i32 0, i32* %16, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @parse_written_prop(i8* %23, i8* %24, i8* %22)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @FTAG, align 4
  %30 = call i32* @zcp_dataset_hold(i32* %26, i32* %27, i8* %28, i32 %29)
  store i32* %30, i32** %17, align 8
  %31 = load i32*, i32** %17, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %72

34:                                               ; preds = %4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @FTAG, align 4
  %37 = call i32 @dsl_dataset_hold(i32* %35, i8* %22, i32 %36, i32** %15)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i32*, i32** %17, align 8
  %42 = load i32, i32* @FTAG, align 4
  %43 = call i32 @dsl_dataset_rele(i32* %41, i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @zcp_dataset_hold_error(i32* %44, i32* %45, i8* %22, i32 %46)
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %72

48:                                               ; preds = %34
  %49 = load i32*, i32** %15, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = call i32 @dsl_dataset_space_written(i32* %49, i32* %50, i32* %12, i32* %13, i32* %14)
  store i32 %51, i32* %16, align 4
  %52 = load i32*, i32** %15, align 8
  %53 = load i32, i32* @FTAG, align 4
  %54 = call i32 @dsl_dataset_rele(i32* %52, i32 %53)
  %55 = load i32*, i32** %17, align 8
  %56 = load i32, i32* @FTAG, align 4
  %57 = call i32 @dsl_dataset_rele(i32* %55, i32 %56)
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %48
  %61 = load i32*, i32** %6, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @zcp_handle_error(i32* %61, i8* %62, i8* %22, i32 %63)
  store i32 %64, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %72

65:                                               ; preds = %48
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @lua_pushnumber(i32* %66, i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @lua_pushstring(i32* %69, i8* %70)
  store i32 2, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %72

72:                                               ; preds = %65, %60, %40, %33
  %73 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @parse_written_prop(i8*, i8*, i8*) #2

declare dso_local i32* @zcp_dataset_hold(i32*, i32*, i8*, i32) #2

declare dso_local i32 @dsl_dataset_hold(i32*, i8*, i32, i32**) #2

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #2

declare dso_local i32 @zcp_dataset_hold_error(i32*, i32*, i8*, i32) #2

declare dso_local i32 @dsl_dataset_space_written(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @zcp_handle_error(i32*, i8*, i8*, i32) #2

declare dso_local i32 @lua_pushnumber(i32*, i32) #2

declare dso_local i32 @lua_pushstring(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
