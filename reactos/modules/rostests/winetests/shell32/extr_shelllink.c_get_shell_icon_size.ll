; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shelllink.c_get_shell_icon_size.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shelllink.c_get_shell_icon_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Control Panel\\Desktop\\WindowMetrics\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Shell Icon Size\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_shell_icon_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_shell_icon_size() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 32, i32* %2, align 4
  store i32 10, i32* %3, align 4
  %6 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %7 = call i32 @RegOpenKeyA(i32 %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %5)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %12 = bitcast i8* %11 to i32*
  %13 = call i32 @RegQueryValueExA(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* %4, i32* %12, i32* %3)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @REG_SZ, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %21 = call i32 @atoi(i8* %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %15, %9
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @RegCloseKey(i32 %23)
  br label %25

25:                                               ; preds = %22, %0
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @RegOpenKeyA(i32, i8*, i32*) #1

declare dso_local i32 @RegQueryValueExA(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
