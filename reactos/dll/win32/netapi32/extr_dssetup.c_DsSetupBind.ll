; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_dssetup.c_DsSetupBind.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_dssetup.c_DsSetupBind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"DsSetupBind() called\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i32] [i32 110, i32 99, i32 97, i32 99, i32 110, i32 95, i32 110, i32 112, i32 0], align 4
@.str.2 = private unnamed_addr constant [13 x i32] [i32 92, i32 112, i32 105, i32 112, i32 101, i32 92, i32 108, i32 115, i32 97, i32 114, i32 112, i32 99, i32 0], align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"RpcStringBindingCompose returned 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"RpcBindingFromStringBinding returned 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"RpcStringFree returned 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32**)* @DsSetupBind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DsSetupBind(i32 %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %8 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load i32**, i32*** %5, align 8
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @RpcStringBindingComposeW(i32* null, i8* bitcast ([9 x i32]* @.str.1 to i8*), i32 %10, i8* bitcast ([13 x i32]* @.str.2 to i8*), i32* null, i32* %6)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i64, i64* %7, align 8
  %16 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* %7, align 8
  store i64 %17, i64* %3, align 8
  br label %36

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32**, i32*** %5, align 8
  %21 = call i64 @RpcBindingFromStringBindingW(i32 %19, i32** %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i64, i64* %7, align 8
  %26 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = call i64 @RpcStringFreeW(i32* %6)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i64, i64* %7, align 8
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %34, %14
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @RpcStringBindingComposeW(i32*, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i64 @RpcBindingFromStringBindingW(i32, i32**) #1

declare dso_local i64 @RpcStringFreeW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
