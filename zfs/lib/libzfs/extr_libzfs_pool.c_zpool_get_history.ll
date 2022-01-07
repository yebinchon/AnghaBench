; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_get_history.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_get_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_HIST_RECORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_get_history(i32* %0, i32** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 131072, i32* %11, align 4
  store i32** null, i32*** %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i8* @malloc(i32 %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %5, align 4
  br label %116

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %74, %27
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %16, align 4
  %32 = sub nsw i32 %30, %31
  %33 = icmp slt i32 %32, 1048576
  br i1 %33, label %34, label %75

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %17, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @get_history(i32* %36, i8* %37, i32* %38, i32* %17)
  store i32 %39, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %75

42:                                               ; preds = %34
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @B_TRUE, align 4
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  br label %75

48:                                               ; preds = %42
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %17, align 4
  %51 = call i32 @zpool_history_unpack(i8* %49, i32 %50, i32* %18, i32*** %12, i32* %13)
  store i32 %51, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %75

54:                                               ; preds = %48
  %55 = load i32, i32* %18, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, %55
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  %64 = mul nsw i32 %63, 2
  store i32 %64, i32* %11, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %11, align 4
  %68 = call i8* @malloc(i32 %67)
  store i8* %68, i8** %10, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @ENOMEM, align 4
  store i32 %72, i32* %5, align 4
  br label %116

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %54
  br label %28

75:                                               ; preds = %53, %45, %41, %28
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %75
  %81 = load i32**, i32*** %7, align 8
  %82 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %83 = call i64 @nvlist_alloc(i32** %81, i32 %82, i32 0)
  %84 = icmp eq i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @verify(i32 %85)
  %87 = load i32**, i32*** %7, align 8
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @ZPOOL_HIST_RECORD, align 4
  %90 = load i32**, i32*** %12, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i64 @nvlist_add_nvlist_array(i32* %88, i32 %89, i32** %90, i32 %91)
  %93 = icmp eq i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @verify(i32 %94)
  br label %96

96:                                               ; preds = %80, %75
  store i32 0, i32* %15, align 4
  br label %97

97:                                               ; preds = %108, %96
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load i32**, i32*** %12, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @nvlist_free(i32* %106)
  br label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %15, align 4
  br label %97

111:                                              ; preds = %97
  %112 = load i32**, i32*** %12, align 8
  %113 = bitcast i32** %112 to i8*
  %114 = call i32 @free(i8* %113)
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %111, %71, %25
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @get_history(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @zpool_history_unpack(i8*, i32, i32*, i32***, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, i32**, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
