; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_strscan.c_strscan_oct.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_strscan.c_strscan_oct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@STRSCAN_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*, i32, i32, i32)* @strscan_oct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strscan_oct(i8* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %11, align 4
  %14 = icmp sgt i32 %13, 22
  br i1 %14, label %23, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, 22
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sgt i32 %21, 49
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %5
  %24 = load i32, i32* @STRSCAN_ERROR, align 4
  store i32 %24, i32* %6, align 4
  br label %93

25:                                               ; preds = %18, %15
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %11, align 4
  %29 = icmp sgt i32 %27, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sge i32 %33, 48
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sle i32 %38, 55
  br i1 %39, label %42, label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @STRSCAN_ERROR, align 4
  store i32 %41, i32* %6, align 4
  br label %93

42:                                               ; preds = %35
  %43 = load i32, i32* %12, align 4
  %44 = shl i32 %43, 3
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %7, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  %49 = and i32 %48, 7
  %50 = add nsw i32 %44, %49
  store i32 %50, i32* %12, align 4
  br label %26

51:                                               ; preds = %26
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %78 [
    i32 130, label %53
    i32 129, label %60
    i32 131, label %79
    i32 128, label %79
  ]

53:                                               ; preds = %51
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = add i32 -2147483648, %55
  %57 = icmp uge i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 129, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %53
  br label %60

60:                                               ; preds = %51, %59
  %61 = load i32, i32* %12, align 4
  %62 = ashr i32 %61, 32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @STRSCAN_ERROR, align 4
  store i32 %65, i32* %6, align 4
  br label %93

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  %71 = sub nsw i32 0, %70
  br label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %12, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i32 [ %71, %69 ], [ %73, %72 ]
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %91

78:                                               ; preds = %51
  br label %79

79:                                               ; preds = %51, %51, %78
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 0, %83
  br label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %12, align 4
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi i32 [ %84, %82 ], [ %86, %85 ]
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %87, %74
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %91, %64, %40, %23
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
