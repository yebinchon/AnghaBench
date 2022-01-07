; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_print_distance.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_print_distance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@ROFI_PU_PX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%upx \00", align 1
@ROFI_PU_PERCENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%% \00", align 1
@stdout = common dso_local global i32 0, align 4
@ROFI_PU_CH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"ch \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"em \00", align 1
@ROFI_HL_DASH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"dash \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @rofi_theme_print_distance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rofi_theme_print_distance(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @ROFI_PU_PX, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %41

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ROFI_PU_PERCENT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @printf_double(i64 %18)
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %40

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ROFI_PU_CH, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @printf_double(i64 %29)
  %31 = load i32, i32* @stdout, align 4
  %32 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %39

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @printf_double(i64 %35)
  %37 = load i32, i32* @stdout, align 4
  %38 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %27
  br label %40

40:                                               ; preds = %39, %16
  br label %41

41:                                               ; preds = %40, %6
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ROFI_HL_DASH, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @printf_double(i64) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
