; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_prop.c_dsl_props_set_sync_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_prop.c_dsl_props_set_sync_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_TYPE_NVLIST = common dso_local global i64 0, align 8
@ZPROP_VALUE = common dso_local global i32 0, align 4
@DATA_TYPE_STRING = common dso_local global i64 0, align 8
@DATA_TYPE_UINT64 = common dso_local global i64 0, align 8
@DATA_TYPE_BOOLEAN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"invalid nvpair type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_props_set_sync_impl(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  br label %15

15:                                               ; preds = %79, %4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32* @nvlist_next_nvpair(i32* %16, i32* %17)
  store i32* %18, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %80

20:                                               ; preds = %15
  %21 = load i32*, i32** %9, align 8
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i8* @nvpair_name(i32* %22)
  store i8* %23, i8** %11, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i64 @nvpair_type(i32* %24)
  %26 = load i64, i64* @DATA_TYPE_NVLIST, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i32*, i32** %10, align 8
  %30 = call i32* @fnvpair_value_nvlist(i32* %29)
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* @ZPROP_VALUE, align 4
  %33 = call i32* @fnvlist_lookup_nvpair(i32* %31, i32 %32)
  store i32* %33, i32** %10, align 8
  br label %34

34:                                               ; preds = %28, %20
  %35 = load i32*, i32** %10, align 8
  %36 = call i64 @nvpair_type(i32* %35)
  %37 = load i64, i64* @DATA_TYPE_STRING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i32*, i32** %10, align 8
  %41 = call i8* @fnvpair_value_string(i32* %40)
  store i8* %41, i8** %13, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = add nsw i32 %46, 1
  %48 = load i8*, i8** %13, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @dsl_prop_set_sync_impl(i32* %42, i8* %43, i32 %44, i32 1, i32 %47, i8* %48, i32* %49)
  br label %79

51:                                               ; preds = %34
  %52 = load i32*, i32** %10, align 8
  %53 = call i64 @nvpair_type(i32* %52)
  %54 = load i64, i64* @DATA_TYPE_UINT64, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i32*, i32** %10, align 8
  %58 = call signext i8 @fnvpair_value_uint64(i32* %57)
  store i8 %58, i8* %14, align 1
  %59 = load i32*, i32** %5, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @dsl_prop_set_sync_impl(i32* %59, i8* %60, i32 %61, i32 1, i32 1, i8* %14, i32* %62)
  br label %78

64:                                               ; preds = %51
  %65 = load i32*, i32** %10, align 8
  %66 = call i64 @nvpair_type(i32* %65)
  %67 = load i64, i64* @DATA_TYPE_BOOLEAN, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32*, i32** %5, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @dsl_prop_set_sync_impl(i32* %70, i8* %71, i32 %72, i32 0, i32 0, i8* null, i32* %73)
  br label %77

75:                                               ; preds = %64
  %76 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %69
  br label %78

78:                                               ; preds = %77, %56
  br label %79

79:                                               ; preds = %78, %39
  br label %15

80:                                               ; preds = %15
  ret void
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local i32* @fnvpair_value_nvlist(i32*) #1

declare dso_local i32* @fnvlist_lookup_nvpair(i32*, i32) #1

declare dso_local i8* @fnvpair_value_string(i32*) #1

declare dso_local i32 @dsl_prop_set_sync_impl(i32*, i8*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @fnvpair_value_uint64(i32*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
