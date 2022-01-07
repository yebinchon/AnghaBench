; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_update_ppr.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_update_ppr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"isrvec_stk is corrupted: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"isrvec_stk does not satisfy invariant\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ISR and isrvec_stk out of sync\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"vlapic_update_ppr 0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlapic*)* @vlapic_update_ppr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlapic_update_ppr(%struct.vlapic* %0) #0 {
  %2 = alloca %struct.vlapic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.vlapic* %0, %struct.vlapic** %2, align 8
  %12 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %13 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %16 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  %20 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %21 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  %26 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %27 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (i8*, ...) @xhyve_abort(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %30, %1
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %63, %36
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %41 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ule i64 %39, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %37
  %45 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %46 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @PRIO(i32 %51)
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %44
  %58 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %59 = call i32 @dump_isrvec_stk(%struct.vlapic* %58)
  %60 = call i32 (i8*, ...) @xhyve_abort(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %44
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %61
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %37

66:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  %67 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %68 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32* %70, i32** %11, align 8
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %113, %66
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 256
  br i1 %73, label %74, label %116

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = sdiv i32 %75, 32
  %77 = mul nsw i32 %76, 4
  store i32 %77, i32* %10, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = srem i32 %83, 32
  %85 = shl i32 1, %84
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %74
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %92 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ugt i64 %90, %93
  br i1 %94, label %105, label %95

95:                                               ; preds = %88
  %96 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %97 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %95, %88
  %106 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %107 = call i32 @dump_isrvec_stk(%struct.vlapic* %106)
  %108 = call i32 (i8*, ...) @xhyve_abort(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %109

109:                                              ; preds = %105, %95
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %109, %74
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %71

116:                                              ; preds = %71
  %117 = load i32, i32* %4, align 4
  %118 = call i64 @PRIO(i32 %117)
  %119 = load i32, i32* %3, align 4
  %120 = call i64 @PRIO(i32 %119)
  %121 = icmp sge i64 %118, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* %4, align 4
  store i32 %123, i32* %5, align 4
  br label %127

124:                                              ; preds = %116
  %125 = load i32, i32* %3, align 4
  %126 = and i32 %125, 240
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %124, %122
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %130 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %129, i32 0, i32 2
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  store i32 %128, i32* %132, align 4
  %133 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @VLAPIC_CTR1(%struct.vlapic* %133, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %134)
  ret void
}

declare dso_local i32 @xhyve_abort(i8*, ...) #1

declare dso_local i64 @PRIO(i32) #1

declare dso_local i32 @dump_isrvec_stk(%struct.vlapic*) #1

declare dso_local i32 @VLAPIC_CTR1(%struct.vlapic*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
