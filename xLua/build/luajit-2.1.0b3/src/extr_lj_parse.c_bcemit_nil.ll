; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_bcemit_nil.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_bcemit_nil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@LJ_TNIL = common dso_local global i32 0, align 4
@VKNIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32)* @bcemit_nil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcemit_nil(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %100

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bc_a(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bc_op(i32 %32)
  switch i32 %33, label %98 [
    i32 128, label %34
    i32 129, label %70
  ]

34:                                               ; preds = %17
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bc_d(i32 %36)
  %38 = load i32, i32* @LJ_TNIL, align 4
  %39 = xor i32 %38, -1
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %99

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %118

50:                                               ; preds = %46
  br label %62

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %61

60:                                               ; preds = %51
  br label %99

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %50
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %64, %65
  %67 = sub nsw i32 %66, 1
  %68 = call i32 @BCINS_AD(i32 129, i32 %63, i32 %67)
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  br label %118

70:                                               ; preds = %17
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @bc_d(i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %70
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  %81 = icmp sle i32 %78, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %83, %84
  %86 = sub nsw i32 %85, 1
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %91, %92
  %94 = sub nsw i32 %93, 1
  %95 = call i32 @setbc_d(i32* %90, i32 %94)
  br label %96

96:                                               ; preds = %89, %82
  br label %118

97:                                               ; preds = %77, %70
  br label %99

98:                                               ; preds = %17
  br label %99

99:                                               ; preds = %98, %97, %60, %41
  br label %100

100:                                              ; preds = %99, %3
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @VKNIL, align 4
  %107 = call i32 @BCINS_AD(i32 128, i32 %105, i32 %106)
  br label %115

108:                                              ; preds = %100
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %110, %111
  %113 = sub nsw i32 %112, 1
  %114 = call i32 @BCINS_AD(i32 129, i32 %109, i32 %113)
  br label %115

115:                                              ; preds = %108, %104
  %116 = phi i32 [ %107, %104 ], [ %114, %108 ]
  %117 = call i32 @bcemit_INS(%struct.TYPE_6__* %101, i32 %116)
  br label %118

118:                                              ; preds = %115, %96, %62, %49
  ret void
}

declare dso_local i32 @bc_a(i32) #1

declare dso_local i32 @bc_op(i32) #1

declare dso_local i32 @bc_d(i32) #1

declare dso_local i32 @BCINS_AD(i32, i32, i32) #1

declare dso_local i32 @setbc_d(i32*, i32) #1

declare dso_local i32 @bcemit_INS(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
