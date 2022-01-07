; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_get_interval_count.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_get_interval_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"interval cannot be zero\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8**, float*, i64*)* @get_interval_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_interval_count(i32* %0, i8** %1, float* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca float*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca float, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store float* %2, float** %7, align 8
  store i64* %3, i64** %8, align 8
  store float 0.000000e+00, float* %9, align 4
  store i64 0, i64* %10, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %4
  %19 = load i8**, i8*** %6, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %19, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @zfs_isnumber(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %18
  store i64 0, i64* @errno, align 8
  %28 = load i8**, i8*** %6, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %28, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call float @strtof(i8* %33, i8** %12)
  store float %34, float* %9, align 4
  %35 = load i8*, i8** %12, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %27
  %40 = load i64, i64* @errno, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load float, float* %9, align 4
  %44 = fcmp oeq float %43, 0.000000e+00
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* @stderr, align 4
  %47 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %48 = call i32 @fprintf(i32 %46, i8* %47)
  %49 = load i32, i32* @B_FALSE, align 4
  %50 = call i32 @usage(i32 %49)
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %11, align 4
  br label %55

54:                                               ; preds = %39, %27
  store float 0.000000e+00, float* %9, align 4
  br label %55

55:                                               ; preds = %54, %51
  br label %56

56:                                               ; preds = %55, %18, %4
  %57 = load i32, i32* %11, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %99

59:                                               ; preds = %56
  %60 = load i8**, i8*** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @zfs_isnumber(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %59
  store i64 0, i64* @errno, align 8
  %69 = load float, float* %9, align 4
  %70 = fptoui float %69 to i64
  store i64 %70, i64* %10, align 8
  %71 = load i8**, i8*** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %71, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call float @strtof(i8* %76, i8** %13)
  store float %77, float* %9, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %68
  %83 = load i64, i64* @errno, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load float, float* %9, align 4
  %87 = fcmp oeq float %86, 0.000000e+00
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* @stderr, align 4
  %90 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %91 = call i32 @fprintf(i32 %89, i8* %90)
  %92 = load i32, i32* @B_FALSE, align 4
  %93 = call i32 @usage(i32 %92)
  br label %94

94:                                               ; preds = %88, %85
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %11, align 4
  br label %98

97:                                               ; preds = %82, %68
  store float 0.000000e+00, float* %9, align 4
  br label %98

98:                                               ; preds = %97, %94
  br label %99

99:                                               ; preds = %98, %59, %56
  %100 = load float, float* %9, align 4
  %101 = load float*, float** %7, align 8
  store float %100, float* %101, align 4
  %102 = load i64, i64* %10, align 8
  %103 = load i64*, i64** %8, align 8
  store i64 %102, i64* %103, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32*, i32** %5, align 8
  store i32 %104, i32* %105, align 4
  ret void
}

declare dso_local i64 @zfs_isnumber(i8*) #1

declare dso_local float @strtof(i8*, i8**) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
