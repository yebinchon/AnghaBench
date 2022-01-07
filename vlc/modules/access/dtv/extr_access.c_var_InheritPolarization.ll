; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_access.c_var_InheritPolarization.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_access.c_var_InheritPolarization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"dvb-polarization\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"dvb-voltage\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"\22voltage=%u\22 option is obsolete. Use \22polarization=%c\22 instead.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32*)* @var_InheritPolarization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @var_InheritPolarization(i32* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @var_InheritString(i32* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %4, align 1
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @free(i8* %14)
  %16 = load i8, i8* %4, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sge i32 %17, 97
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load i8, i8* %4, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sle i32 %21, 122
  br label %23

23:                                               ; preds = %19, %11
  %24 = phi i1 [ false, %11 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8, i8* %4, align 1
  %30 = sext i8 %29 to i32
  %31 = sub nsw i32 %30, 32
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %4, align 1
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i8, i8* %4, align 1
  store i8 %34, i8* %2, align 1
  br label %48

35:                                               ; preds = %1
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @var_InheritInteger(i32* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %41 [
    i32 13, label %39
    i32 18, label %40
  ]

39:                                               ; preds = %35
  store i8 86, i8* %4, align 1
  br label %42

40:                                               ; preds = %35
  store i8 72, i8* %4, align 1
  br label %42

41:                                               ; preds = %35
  store i8 0, i8* %2, align 1
  br label %48

42:                                               ; preds = %40, %39
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i8, i8* %4, align 1
  %46 = call i32 @msg_Warn(i32* %43, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %44, i8 signext %45)
  %47 = load i8, i8* %4, align 1
  store i8 %47, i8* %2, align 1
  br label %48

48:                                               ; preds = %42, %41, %33
  %49 = load i8, i8* %2, align 1
  ret i8 %49
}

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @var_InheritInteger(i32*, i8*) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
