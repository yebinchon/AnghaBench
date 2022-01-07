; ModuleID = '/home/carl/AnghaBench/tmux/compat/extr_recallocarray.c_recallocarray.c'
source_filename = "/home/carl/AnghaBench/tmux/compat/extr_recallocarray.c_recallocarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MUL_NO_OVERFLOW = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @recallocarray(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i8* @calloc(i64 %17, i64 %18)
  store i8* %19, i8** %5, align 8
  br label %122

20:                                               ; preds = %4
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @MUL_NO_OVERFLOW, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @MUL_NO_OVERFLOW, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24, %20
  %29 = load i64, i64* %8, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i64, i64* @SIZE_MAX, align 8
  %33 = load i64, i64* %8, align 8
  %34 = udiv i64 %32, %33
  %35 = load i64, i64* %9, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %122

39:                                               ; preds = %31, %28, %24
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = mul i64 %40, %41
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @MUL_NO_OVERFLOW, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @MUL_NO_OVERFLOW, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46, %39
  %51 = load i64, i64* %7, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i64, i64* @SIZE_MAX, align 8
  %55 = load i64, i64* %7, align 8
  %56 = udiv i64 %54, %55
  %57 = load i64, i64* %9, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %122

61:                                               ; preds = %53, %50, %46
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %9, align 8
  %64 = mul i64 %62, %63
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp ule i64 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %61
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = sub i64 %69, %70
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %10, align 8
  %74 = udiv i64 %73, 2
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %68
  %77 = load i64, i64* %13, align 8
  %78 = call i64 (...) @getpagesize()
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i8*, i8** %6, align 8
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @memset(i8* %83, i32 0, i64 %84)
  %86 = load i8*, i8** %6, align 8
  store i8* %86, i8** %5, align 8
  br label %122

87:                                               ; preds = %76, %68
  br label %88

88:                                               ; preds = %87, %61
  %89 = load i64, i64* %11, align 8
  %90 = call i8* @malloc(i64 %89)
  store i8* %90, i8** %12, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i8* null, i8** %5, align 8
  br label %122

94:                                               ; preds = %88
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %10, align 8
  %97 = icmp ugt i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = load i8*, i8** %12, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @memcpy(i8* %99, i8* %100, i64 %101)
  %103 = load i8*, i8** %12, align 8
  %104 = load i64, i64* %10, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* %10, align 8
  %108 = sub i64 %106, %107
  %109 = call i32 @memset(i8* %105, i32 0, i64 %108)
  br label %115

110:                                              ; preds = %94
  %111 = load i8*, i8** %12, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load i64, i64* %11, align 8
  %114 = call i32 @memcpy(i8* %111, i8* %112, i64 %113)
  br label %115

115:                                              ; preds = %110, %98
  %116 = load i8*, i8** %6, align 8
  %117 = load i64, i64* %10, align 8
  %118 = call i32 @explicit_bzero(i8* %116, i64 %117)
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @free(i8* %119)
  %121 = load i8*, i8** %12, align 8
  store i8* %121, i8** %5, align 8
  br label %122

122:                                              ; preds = %115, %93, %80, %59, %37, %16
  %123 = load i8*, i8** %5, align 8
  ret i8* %123
}

declare dso_local i8* @calloc(i64, i64) #1

declare dso_local i64 @getpagesize(...) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @explicit_bzero(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
