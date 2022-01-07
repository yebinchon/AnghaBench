; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_mbcs_mblen.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_mbcs_mblen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32)* @mbcs_mblen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbcs_mblen(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 54936
  br i1 %12, label %13, label %84

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %16, 127
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %8, align 4
  br label %82

19:                                               ; preds = %13
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 129
  br i1 %23, label %24, label %53

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 %27, 254
  br i1 %28, label %29, label %53

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %35, 64
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %40, 126
  br i1 %41, label %52, label %42

42:                                               ; preds = %37, %32
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 128
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sle i32 %50, 254
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %37
  store i32 2, i32* %8, align 4
  br label %81

53:                                               ; preds = %47, %42, %29, %24, %19
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %56, 129
  br i1 %57, label %58, label %77

58:                                               ; preds = %53
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %61, 254
  br i1 %62, label %63, label %77

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = icmp sge i32 %64, 4
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %69, 48
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sle i32 %74, 57
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 4, i32* %8, align 4
  br label %80

77:                                               ; preds = %71, %66, %63, %58, %53
  %78 = load i32, i32* @EINVAL, align 4
  %79 = call i32 @seterror(i32 %78)
  store i32 %79, i32* %4, align 4
  br label %87

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %52
  br label %82

82:                                               ; preds = %81, %18
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %87

84:                                               ; preds = %3
  %85 = load i32, i32* @EINVAL, align 4
  %86 = call i32 @seterror(i32 %85)
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %84, %82, %77
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @seterror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
