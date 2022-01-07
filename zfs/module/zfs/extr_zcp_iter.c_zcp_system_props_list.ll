; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zcp_iter.c_zcp_system_props_list.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zcp_iter.c_zcp_system_props_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@zcp_system_props_list_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error returning nvlist: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @zcp_system_props_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcp_system_props_list(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.TYPE_5__* @zcp_run_info(i32* %11)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  store %struct.TYPE_4__* @zcp_system_props_list_info, %struct.TYPE_4__** %8, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @zcp_parse_args(i32* %15, i32 %18, i32 %21, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i8* @lua_tostring(i32* %26, i32 1)
  store i8* %27, i8** %6, align 8
  %28 = call i32* (...) @fnvlist_alloc()
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @FTAG, align 4
  %33 = call i32* @zcp_dataset_hold(i32* %29, i32* %30, i8* %31, i32 %32)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %57

37:                                               ; preds = %1
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @zcp_dataset_system_props(i32* %38, i32* %39)
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* @FTAG, align 4
  %43 = call i32 @dsl_dataset_rele(i32* %41, i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %47 = call i32 @zcp_nvlist_to_lua(i32* %44, i32* %45, i8* %46, i32 128)
  store i32 %47, i32* %4, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @nvlist_free(i32* %48)
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %37
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %55 = call i32 @luaL_error(i32* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %54)
  store i32 %55, i32* %2, align 4
  br label %57

56:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %52, %36
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_5__* @zcp_run_info(i32*) #1

declare dso_local i32 @zcp_parse_args(i32*, i32, i32, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32* @zcp_dataset_hold(i32*, i32*, i8*, i32) #1

declare dso_local i32 @zcp_dataset_system_props(i32*, i32*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @zcp_nvlist_to_lua(i32*, i32*, i8*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
