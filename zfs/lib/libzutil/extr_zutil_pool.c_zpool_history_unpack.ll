; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_pool.c_zpool_history_unpack.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_pool.c_zpool_history_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_history_unpack(i8* %0, i32 %1, i32* %2, i32*** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32***, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32*** %3, i32**** %10, align 8
  store i32* %4, i32** %11, align 8
  br label %16

16:                                               ; preds = %101, %5
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ugt i64 %18, 4
  br i1 %19, label %20, label %110

20:                                               ; preds = %16
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %38, %20
  %22 = load i32, i32* %14, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to i64*
  %28 = load i32, i32* %14, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %14, align 4
  %34 = mul nsw i32 8, %33
  %35 = shl i32 %32, %34
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %14, align 4
  br label %21

41:                                               ; preds = %21
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 4, %45
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %110

49:                                               ; preds = %41
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  %52 = load i32, i32* %12, align 4
  %53 = call i64 @nvlist_unpack(i8* %51, i32 %52, i32** %13, i32 0)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @ENOMEM, align 4
  store i32 %56, i32* %6, align 4
  br label %113

57:                                               ; preds = %49
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 4, %59
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 4, %66
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8* %69, i8** %7, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i64 @ISP2(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %57
  %79 = load i32***, i32**** %10, align 8
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 8
  %86 = trunc i64 %85 to i32
  %87 = call i8* @realloc(i32** %80, i32 %86)
  store i8* %87, i8** %15, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %78
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @nvlist_free(i32* %91)
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @ENOMEM, align 4
  store i32 %96, i32* %6, align 4
  br label %113

97:                                               ; preds = %78
  %98 = load i8*, i8** %15, align 8
  %99 = bitcast i8* %98 to i32**
  %100 = load i32***, i32**** %10, align 8
  store i32** %99, i32*** %100, align 8
  br label %101

101:                                              ; preds = %97, %57
  %102 = load i32*, i32** %13, align 8
  %103 = load i32***, i32**** %10, align 8
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %104, i64 %108
  store i32* %102, i32** %109, align 8
  br label %16

110:                                              ; preds = %48, %16
  %111 = load i32, i32* %8, align 4
  %112 = load i32*, i32** %9, align 8
  store i32 %111, i32* %112, align 4
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %110, %90, %55
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i64 @nvlist_unpack(i8*, i32, i32**, i32) #1

declare dso_local i64 @ISP2(i32) #1

declare dso_local i8* @realloc(i32**, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
