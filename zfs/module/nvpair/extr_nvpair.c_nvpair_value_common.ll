; ModuleID = '/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvpair_value_common.c'
source_filename = "/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvpair_value_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i8*)* @nvpair_value_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvpair_value_common(i32* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @nvpair_type(i32* %14)
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %93

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %90 [
    i32 154, label %22
    i32 152, label %28
    i32 151, label %28
    i32 141, label %28
    i32 129, label %28
    i32 147, label %28
    i32 135, label %28
    i32 145, label %28
    i32 133, label %28
    i32 143, label %28
    i32 131, label %28
    i32 148, label %28
    i32 149, label %28
    i32 139, label %51
    i32 137, label %51
    i32 153, label %67
    i32 150, label %67
    i32 140, label %67
    i32 128, label %67
    i32 146, label %67
    i32 134, label %67
    i32 144, label %67
    i32 132, label %67
    i32 142, label %67
    i32 130, label %67
    i32 136, label %67
    i32 138, label %67
  ]

22:                                               ; preds = %20
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32*, i32** %8, align 8
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %22
  br label %92

28:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20
  %29 = load i8*, i8** %9, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %5, align 4
  br label %93

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @i_get_value_size(i32 %34, i32* null, i32 1)
  store i32 %35, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %5, align 4
  br label %93

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @NVP_VALUE(i32* %40)
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 @bcopy(i64 %41, i8* %42, i64 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32*, i32** %8, align 8
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %48, %39
  br label %92

51:                                               ; preds = %20, %20
  %52 = load i8*, i8** %9, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %5, align 4
  br label %93

56:                                               ; preds = %51
  %57 = load i32*, i32** %6, align 8
  %58 = call i64 @NVP_VALUE(i32* %57)
  %59 = inttoptr i64 %58 to i8*
  %60 = load i8*, i8** %9, align 8
  %61 = bitcast i8* %60 to i8**
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32*, i32** %8, align 8
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %64, %56
  br label %92

67:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20
  %68 = load i32*, i32** %8, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** %9, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %70, %67
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* %5, align 4
  br label %93

75:                                               ; preds = %70
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @NVP_NELEM(i32* %76)
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  %79 = icmp ne i32 %77, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i32*, i32** %6, align 8
  %82 = call i64 @NVP_VALUE(i32* %81)
  %83 = inttoptr i64 %82 to i8*
  %84 = load i8*, i8** %9, align 8
  %85 = bitcast i8* %84 to i8**
  store i8* %83, i8** %85, align 8
  br label %89

86:                                               ; preds = %75
  %87 = load i8*, i8** %9, align 8
  %88 = bitcast i8* %87 to i8**
  store i8* null, i8** %88, align 8
  br label %89

89:                                               ; preds = %86, %80
  br label %92

90:                                               ; preds = %20
  %91 = load i32, i32* @ENOTSUP, align 4
  store i32 %91, i32* %5, align 4
  br label %93

92:                                               ; preds = %89, %66, %50, %27
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %90, %73, %54, %37, %31, %18
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @nvpair_type(i32*) #1

declare dso_local i32 @i_get_value_size(i32, i32*, i32) #1

declare dso_local i32 @bcopy(i64, i8*, i64) #1

declare dso_local i64 @NVP_VALUE(i32*) #1

declare dso_local i32 @NVP_NELEM(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
