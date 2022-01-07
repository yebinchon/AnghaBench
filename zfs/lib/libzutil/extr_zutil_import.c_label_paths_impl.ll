; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_label_paths_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_label_paths_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_DEVID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i64, i8**, i8**)* @label_paths_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @label_paths_impl(i32* %0, i32* %1, i64 %2, i64 %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %22 = call i64 @nvlist_lookup_nvlist_array(i32* %20, i32 %21, i32*** %14, i64* %16)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %6
  store i64 0, i64* %15, align 8
  br label %25

25:                                               ; preds = %45, %24
  %26 = load i64, i64* %15, align 8
  %27 = load i64, i64* %16, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load i32*, i32** %8, align 8
  %31 = load i32**, i32*** %14, align 8
  %32 = load i64, i64* %15, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i8**, i8*** %12, align 8
  %38 = load i8**, i8*** %13, align 8
  %39 = call i32 @label_paths_impl(i32* %30, i32* %34, i64 %35, i64 %36, i8** %37, i8** %38)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* %19, align 4
  store i32 %43, i32* %7, align 4
  br label %83

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %15, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %15, align 8
  br label %25

48:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %83

49:                                               ; preds = %6
  %50 = load i32*, i32** %9, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %83

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %56 = call i32 @nvlist_lookup_uint64(i32* %54, i32 %55, i64* %17)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %53
  store i32 0, i32* %7, align 4
  br label %83

64:                                               ; preds = %59
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %67 = call i32 @nvlist_lookup_string(i32* %65, i32 %66, i8** %18)
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i8*, i8** %18, align 8
  %72 = load i8**, i8*** %12, align 8
  store i8* %71, i8** %72, align 8
  br label %73

73:                                               ; preds = %70, %64
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* @ZPOOL_CONFIG_DEVID, align 4
  %76 = call i32 @nvlist_lookup_string(i32* %74, i32 %75, i8** %18)
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* %19, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i8*, i8** %18, align 8
  %81 = load i8**, i8*** %13, align 8
  store i8* %80, i8** %81, align 8
  br label %82

82:                                               ; preds = %79, %73
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %63, %52, %48, %42
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @nvlist_lookup_string(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
