; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckAlarmColorsContext.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckAlarmColorsContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.CheckAlarmColorsContext.codes = private unnamed_addr constant [16 x i32] [i32 0, i32 4369, i32 8738, i32 13107, i32 17476, i32 21845, i32 26214, i32 30583, i32 34952, i32 39321, i32 43690, i32 48059, i32 52428, i32 56797, i32 61166, i32 65535], align 16
@.str = private unnamed_addr constant [24 x i8] c"Bad alarm code %x != %x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckAlarmColorsContext() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i32], align 16
  %3 = alloca [16 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = bitcast [16 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([16 x i32]* @__const.CheckAlarmColorsContext.codes to i8*), i64 64, i1 false)
  %9 = call i32 @WatchDogContext(i32* null)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %12 = call i32 @cmsSetAlarmCodes(i32 %10, i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @DupContext(i32 %13, i32* null)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @DupContext(i32 %15, i32* null)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %19 = call i32 @cmsGetAlarmCodes(i32 %17, i32* %18)
  store i32 1, i32* %1, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %44, %0
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %27, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @Fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41)
  store i32 0, i32* %1, align 4
  br label %47

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %20

47:                                               ; preds = %33, %20
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @cmsDeleteContext(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @cmsDeleteContext(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @cmsDeleteContext(i32 %52)
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @WatchDogContext(i32*) #2

declare dso_local i32 @cmsSetAlarmCodes(i32, i32*) #2

declare dso_local i32 @DupContext(i32, i32*) #2

declare dso_local i32 @cmsGetAlarmCodes(i32, i32*) #2

declare dso_local i32 @Fail(i8*, i32, i32) #2

declare dso_local i32 @cmsDeleteContext(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
