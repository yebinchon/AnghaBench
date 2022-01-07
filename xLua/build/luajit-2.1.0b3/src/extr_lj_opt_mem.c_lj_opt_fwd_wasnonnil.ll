; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_mem.c_lj_opt_fwd_wasnonnil.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_opt_mem.c_lj_opt_fwd_wasnonnil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64* }
%struct.TYPE_6__ = type { i64, i64, i64, i32 }

@IRDELTA_L2S = common dso_local global i64 0, align 8
@IR_ALOAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_opt_fwd_wasnonnil(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @IRDELTA_L2S, align 8
  %18 = add i64 %16, %17
  %19 = getelementptr inbounds i64, i64* %15, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %88, %3
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %92

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = call %struct.TYPE_6__* @IR(i64 %26)
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %9, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @irt_isnil(i32 %36)
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %124

41:                                               ; preds = %25
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @irt_isnil(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %87

47:                                               ; preds = %41
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call %struct.TYPE_6__* @IR(i64 %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call %struct.TYPE_6__* @IR(i64 %54)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @IR_ALOAD, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %72, label %61

61:                                               ; preds = %47
  %62 = load i64, i64* %10, align 8
  %63 = call %struct.TYPE_6__* @IR(i64 %62)
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call %struct.TYPE_6__* @IR(i64 %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @irt_sametype(i32 %65, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %61, %47
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @irref_isk(i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @irref_isk(i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80, %76, %72
  store i32 0, i32* %4, align 4
  br label %124

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %61
  br label %87

87:                                               ; preds = %86, %41
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %8, align 8
  br label %21

92:                                               ; preds = %21
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %8, align 8
  br label %99

99:                                               ; preds = %119, %92
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %7, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %99
  %104 = load i64, i64* %8, align 8
  %105 = call %struct.TYPE_6__* @IR(i64 %104)
  store %struct.TYPE_6__* %105, %struct.TYPE_6__** %12, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %103
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @irt_isnil(i32 %114)
  %116 = icmp ne i64 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %4, align 4
  br label %124

119:                                              ; preds = %103
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %8, align 8
  br label %99

123:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %111, %84, %33
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.TYPE_6__* @IR(i64) #1

declare dso_local i64 @irt_isnil(i32) #1

declare dso_local i64 @irt_sametype(i32, i32) #1

declare dso_local i32 @irref_isk(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
