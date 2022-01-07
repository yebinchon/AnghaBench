; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb.c_KdbpStepIntoInstruction.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb.c_KdbpStepIntoInstruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@KdbCurrentTrapFrame = common dso_local global %struct.TYPE_6__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@KdbBreakPointTemporary = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @KdbpStepIntoInstruction(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @KdbpSafeReadMemory(i32* %10, i32 %11, i32 8)
  %13 = call i32 @NT_SUCCESS(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %121

17:                                               ; preds = %1
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 204
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 3, i32* %6, align 4
  br label %45

22:                                               ; preds = %17
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 205
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  br label %44

29:                                               ; preds = %22
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 206
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @KdbCurrentTrapFrame, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 2048
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 4, i32* %6, align 4
  br label %43

41:                                               ; preds = %33, %29
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %2, align 4
  br label %121

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %26
  br label %45

45:                                               ; preds = %44, %21
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 32
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %2, align 4
  br label %121

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %52 = call i32 @__sidt(i32* %51)
  %53 = load i32, i32* %6, align 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  %57 = sdiv i32 %56, 8
  %58 = icmp sge i32 %53, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %2, align 4
  br label %121

61:                                               ; preds = %50
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = mul nsw i32 %65, 8
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %64, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @KdbpSafeReadMemory(i32* %62, i32 %69, i32 8)
  %71 = call i32 @NT_SUCCESS(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %2, align 4
  br label %121

75:                                               ; preds = %61
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 32768
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %2, align 4
  br label %121

82:                                               ; preds = %75
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 7936
  %86 = icmp eq i32 %85, 1280
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %2, align 4
  br label %121

89:                                               ; preds = %82
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 8160
  %93 = icmp eq i32 %92, 3584
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 8160
  %98 = icmp eq i32 %97, 3840
  br i1 %98, label %99, label %107

99:                                               ; preds = %94, %89
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, -65536
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 65535
  %106 = or i32 %102, %105
  store i32 %106, i32* %8, align 4
  br label %109

107:                                              ; preds = %94
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %2, align 4
  br label %121

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @KdbBreakPointTemporary, align 4
  %113 = load i32, i32* @FALSE, align 4
  %114 = call i32 @KdbpInsertBreakPoint(i32 %111, i32 %112, i32 0, i32 0, i32* null, i32 %113, i32* null)
  %115 = call i32 @NT_SUCCESS(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %110
  %118 = load i32, i32* @FALSE, align 4
  store i32 %118, i32* %2, align 4
  br label %121

119:                                              ; preds = %110
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %119, %117, %107, %87, %80, %73, %59, %48, %41, %15
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @NT_SUCCESS(i32) #2

declare dso_local i32 @KdbpSafeReadMemory(i32*, i32, i32) #2

declare dso_local i32 @__sidt(i32*) #2

declare dso_local i32 @KdbpInsertBreakPoint(i32, i32, i32, i32, i32*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
