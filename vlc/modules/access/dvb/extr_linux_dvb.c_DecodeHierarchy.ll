; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_DecodeHierarchy.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_DecodeHierarchy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"dvb-hierarchy\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"using hierarchy=%d\00", align 1
@HIERARCHY_NONE = common dso_local global i32 0, align 4
@HIERARCHY_AUTO = common dso_local global i32 0, align 4
@HIERARCHY_1 = common dso_local global i32 0, align 4
@HIERARCHY_2 = common dso_local global i32 0, align 4
@HIERARCHY_4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"terrestrial dvb has hierarchy not set, using auto\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @DecodeHierarchy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeHierarchy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @var_GetInteger(i32* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %21 [
    i32 -1, label %11
    i32 0, label %13
    i32 1, label %15
    i32 2, label %17
    i32 4, label %19
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @HIERARCHY_NONE, align 4
  store i32 %12, i32* %3, align 4
  br label %25

13:                                               ; preds = %1
  %14 = load i32, i32* @HIERARCHY_AUTO, align 4
  store i32 %14, i32* %3, align 4
  br label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @HIERARCHY_1, align 4
  store i32 %16, i32* %3, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load i32, i32* @HIERARCHY_2, align 4
  store i32 %18, i32* %3, align 4
  br label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @HIERARCHY_4, align 4
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %1
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @HIERARCHY_AUTO, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %19, %17, %15, %13, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @var_GetInteger(i32*, i8*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
