; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_dce.c_dce_propagate.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_opt_dce.c_dce_propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i64* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64, i64, %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32 }

@IR__MAX = common dso_local global i32 0, align 4
@REF_FIRST = common dso_local global i64 0, align 8
@IRT_NIL = common dso_local global i32 0, align 4
@IR_NOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @dce_propagate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_propagate(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %8 = load i32, i32* @IR__MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i64*, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %26, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @IR__MAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64*, i64** %11, i64 %24
  store i64* %22, i64** %25, align 8
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %12

29:                                               ; preds = %12
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %118, %29
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @REF_FIRST, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %121

39:                                               ; preds = %35
  %40 = load i64, i64* %5, align 8
  %41 = call %struct.TYPE_12__* @IR(i64 %40)
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %7, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @irt_ismarked(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %39
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @irt_clearmark(i32 %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i64*, i64** %11, i64 %58
  store i64* %55, i64** %59, align 8
  br label %87

60:                                               ; preds = %39
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = call i32 @ir_sideeff(%struct.TYPE_12__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %60
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i64*, i64** %11, i64 %70
  %72 = load i64*, i64** %71, align 8
  store i64 %67, i64* %72, align 8
  %73 = load i32, i32* @IRT_NIL, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load i64, i64* @IR_NOP, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 4
  store i64 0, i64* %85, align 8
  br label %118

86:                                               ; preds = %60
  br label %87

87:                                               ; preds = %86, %48
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @REF_FIRST, align 8
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call %struct.TYPE_12__* @IR(i64 %96)
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @irt_setmark(i32 %100)
  br label %102

102:                                              ; preds = %93, %87
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @REF_FIRST, align 8
  %107 = icmp sge i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call %struct.TYPE_12__* @IR(i64 %111)
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @irt_setmark(i32 %115)
  br label %117

117:                                              ; preds = %108, %102
  br label %118

118:                                              ; preds = %117, %64
  %119 = load i64, i64* %5, align 8
  %120 = add nsw i64 %119, -1
  store i64 %120, i64* %5, align 8
  br label %35

121:                                              ; preds = %35
  %122 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %122)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_12__* @IR(i64) #2

declare dso_local i64 @irt_ismarked(i32) #2

declare dso_local i32 @irt_clearmark(i32) #2

declare dso_local i32 @ir_sideeff(%struct.TYPE_12__*) #2

declare dso_local i32 @irt_setmark(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
