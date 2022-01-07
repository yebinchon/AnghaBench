; ModuleID = '/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvlist_xpack.c'
source_filename = "/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvlist_xpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@NVS_OP_ENCODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvlist_xpack(i32* %0, i8** %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %5
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i8**, i8*** %8, align 8
  %23 = icmp eq i8** %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64*, i64** %9, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %21, %18, %5
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %6, align 4
  br label %74

29:                                               ; preds = %24
  %30 = load i8**, i8*** %8, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = load i8**, i8*** %8, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @NVS_OP_ENCODE, align 4
  %40 = call i32 @nvlist_common(i32* %34, i8* %36, i64* %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %74

41:                                               ; preds = %29
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @nv_priv_init(i32* %12, i32* %42, i32 0)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @nvlist_size(i32* %44, i64* %13, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %6, align 4
  br label %74

50:                                               ; preds = %41
  %51 = load i64, i64* %13, align 8
  %52 = call i8* @nv_mem_zalloc(i32* %12, i64 %51)
  store i8* %52, i8** %14, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %6, align 4
  br label %74

56:                                               ; preds = %50
  %57 = load i32*, i32** %7, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @NVS_OP_ENCODE, align 4
  %61 = call i32 @nvlist_common(i32* %57, i8* %58, i64* %13, i32 %59, i32 %60)
  store i32 %61, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i8*, i8** %14, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @nv_mem_free(i32* %12, i8* %64, i64 %65)
  br label %72

67:                                               ; preds = %56
  %68 = load i64, i64* %13, align 8
  %69 = load i64*, i64** %9, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = load i8**, i8*** %8, align 8
  store i8* %70, i8** %71, align 8
  br label %72

72:                                               ; preds = %67, %63
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %54, %48, %33, %27
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @nvlist_common(i32*, i8*, i64*, i32, i32) #1

declare dso_local i32 @nv_priv_init(i32*, i32*, i32) #1

declare dso_local i32 @nvlist_size(i32*, i64*, i32) #1

declare dso_local i8* @nv_mem_zalloc(i32*, i64) #1

declare dso_local i32 @nv_mem_free(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
