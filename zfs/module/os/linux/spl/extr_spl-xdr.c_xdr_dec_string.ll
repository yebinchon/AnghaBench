; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-xdr.c_xdr_dec_string.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-xdr.c_xdr_dec_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@KM_NOSLEEP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8**, i32)* @xdr_dec_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xdr_dec_string(i32* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @xdrmem_dec_uint(i32* %11, i32* %8)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %4, align 8
  br label %78

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @UINT_MAX, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %16
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %4, align 8
  br label %78

27:                                               ; preds = %20
  %28 = load i8**, i8*** %6, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = call i32 @BUILD_BUG_ON(i32 0)
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* @KM_NOSLEEP, align 4
  %36 = call i8* @kmem_alloc(i32 %34, i32 %35)
  %37 = load i8**, i8*** %6, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i64, i64* @FALSE, align 8
  store i64 %42, i64* %4, align 8
  br label %78

43:                                               ; preds = %31
  %44 = load i64, i64* @TRUE, align 8
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %43, %27
  %46 = load i32*, i32** %5, align 8
  %47 = load i8**, i8*** %6, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @xdrmem_dec_bytes(i32* %46, i8* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %67

53:                                               ; preds = %45
  %54 = load i8**, i8*** %6, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32* @memchr(i8* %55, i32 0, i32 %56)
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %67

60:                                               ; preds = %53
  %61 = load i8**, i8*** %6, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i64, i64* @TRUE, align 8
  store i64 %66, i64* %4, align 8
  br label %78

67:                                               ; preds = %59, %52
  %68 = load i64, i64* %9, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i8**, i8*** %6, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i32 @kmem_free(i8* %72, i32 %74)
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i64, i64* @FALSE, align 8
  store i64 %77, i64* %4, align 8
  br label %78

78:                                               ; preds = %76, %60, %41, %25, %14
  %79 = load i64, i64* %4, align 8
  ret i64 %79
}

declare dso_local i32 @xdrmem_dec_uint(i32*, i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @xdrmem_dec_bytes(i32*, i8*, i32) #1

declare dso_local i32* @memchr(i8*, i32, i32) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
