; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_widl.c_add_widl_version_define.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_widl.c_add_widl_version_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACKAGE_VERSION = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"__WIDL__\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @add_widl_version_define to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_widl_version_define() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [11 x i8], align 1
  %4 = load i8*, i8** @PACKAGE_VERSION, align 8
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @atoi(i8* %5)
  %7 = mul i32 %6, 65536
  store i32 %7, i32* %1, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @strchr(i8* %8, i8 signext 46)
  store i8* %9, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %0
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = call i32 @atoi(i8* %14)
  %16 = mul i32 %15, 256
  %17 = load i32, i32* %1, align 4
  %18 = add i32 %17, %16
  store i32 %18, i32* %1, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = call i8* @strchr(i8* %20, i8 signext 46)
  store i8* %21, i8** %2, align 8
  br label %22

22:                                               ; preds = %12, %0
  %23 = load i8*, i8** %2, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i32 @atoi(i8* %27)
  %29 = load i32, i32* %1, align 4
  %30 = add i32 %29, %28
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %25, %22
  %32 = load i32, i32* %1, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @snprintf(i8* %35, i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds [11 x i8], [11 x i8]* %3, i64 0, i64 0
  %39 = call i32 @wpp_add_define(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  br label %42

40:                                               ; preds = %31
  %41 = call i32 @wpp_add_define(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* null)
  br label %42

42:                                               ; preds = %40, %34
  ret void
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @wpp_add_define(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
