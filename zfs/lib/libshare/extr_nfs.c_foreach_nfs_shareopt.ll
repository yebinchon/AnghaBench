; ModuleID = '/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_foreach_nfs_shareopt.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_foreach_nfs_shareopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SA_OK = common dso_local global i32 0, align 4
@SA_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32 (i8*, i8*, i8*)*, i8*)* @foreach_nfs_shareopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreach_nfs_shareopt(i8* %0, i32 (i8*, i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 (i8*, i8*, i8*)* %1, i32 (i8*, i8*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @SA_OK, align 4
  store i32 %17, i32* %4, align 4
  br label %88

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @strdup(i8* %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @SA_NO_MEMORY, align 4
  store i32 %24, i32* %4, align 4
  br label %88

25:                                               ; preds = %18
  %26 = load i8*, i8** %8, align 8
  store i8* %26, i8** %9, align 8
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %25, %84
  %28 = load i8*, i8** %9, align 8
  store i8* %28, i8** %10, align 8
  br label %29

29:                                               ; preds = %41, %27
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 44
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %10, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %10, align 8
  br label %29

44:                                               ; preds = %39
  %45 = load i8*, i8** %10, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 1, i32* %12, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = load i8*, i8** %10, align 8
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ugt i8* %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %50
  %56 = load i8*, i8** %9, align 8
  %57 = call i8* @strchr(i8* %56, i8 signext 61)
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i8*, i8** %11, align 8
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %11, align 8
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %6, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 %65(i8* %66, i8* %67, i8* %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @SA_OK, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %4, align 4
  br label %88

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %50
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8* %80, i8** %9, align 8
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %85

84:                                               ; preds = %78
  br label %27

85:                                               ; preds = %83
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @free(i8* %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %85, %73, %23, %16
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
