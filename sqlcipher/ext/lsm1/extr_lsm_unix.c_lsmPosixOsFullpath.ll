; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_unix.c_lsmPosixOsFullpath.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_unix.c_lsmPosixOsFullpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@LSM_NOMEM_BKPT = common dso_local global i32 0, align 4
@LSM_IOERR_BKPT = common dso_local global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32*)* @lsmPosixOsFullpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsmPosixOsFullpath(i32* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 47
  br i1 %21, label %22, label %97

22:                                               ; preds = %4
  store i32 512, i32* %14, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %14, align 4
  %25 = call i8* @lsmMalloc(i32* %23, i32 %24)
  store i8* %25, i8** %13, align 8
  br label %26

26:                                               ; preds = %40, %22
  %27 = load i8*, i8** %13, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load i8*, i8** %13, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i8* @getcwd(i8* %30, i32 %31)
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @ERANGE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %29
  br label %47

40:                                               ; preds = %35
  %41 = load i32, i32* %14, align 4
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %14, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i8* @lsmReallocOrFree(i32* %43, i8* %44, i32 %45)
  store i8* %46, i8** %13, align 8
  br label %26

47:                                               ; preds = %39, %26
  %48 = load i8*, i8** %13, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @LSM_NOMEM_BKPT, align 4
  store i32 %51, i32* %5, align 4
  br label %116

52:                                               ; preds = %47
  %53 = load i8*, i8** %12, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @LSM_IOERR_BKPT, align 4
  store i32 %56, i32* %5, align 4
  br label %116

57:                                               ; preds = %52
  %58 = load i8*, i8** %12, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = icmp eq i8* %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @strlen(i8* %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = add nsw i32 %66, %68
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %57
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @memcpy(i8* %75, i8* %76, i32 %77)
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 47, i8* %82, align 1
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i8*, i8** %7, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = add nsw i32 %90, 1
  %92 = call i32 @memcpy(i8* %87, i8* %88, i32 %91)
  br label %93

93:                                               ; preds = %74, %57
  %94 = load i32*, i32** %6, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = call i32 @lsmFree(i32* %94, i8* %95)
  br label %112

97:                                               ; preds = %4
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load i8*, i8** %8, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 @strlen(i8* %107)
  %109 = add nsw i32 %108, 1
  %110 = call i32 @memcpy(i8* %105, i8* %106, i32 %109)
  br label %111

111:                                              ; preds = %104, %97
  br label %112

112:                                              ; preds = %111, %93
  %113 = load i32, i32* %11, align 4
  %114 = load i32*, i32** %9, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* @LSM_OK, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %112, %55, %50
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i8* @lsmMalloc(i32*, i32) #1

declare dso_local i8* @getcwd(i8*, i32) #1

declare dso_local i8* @lsmReallocOrFree(i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @lsmFree(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
