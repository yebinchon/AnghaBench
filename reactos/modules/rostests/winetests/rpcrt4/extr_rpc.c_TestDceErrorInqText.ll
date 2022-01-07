; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_rpc.c_TestDceErrorInqText.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_rpc.c_TestDceErrorInqText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@RPC_S_NOT_RPC_ERROR = common dso_local global i32 0, align 4
@RPC_S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"DceErrorInqTextA(0...)\0A\00", align 1
@RPC_S_INVALID_STRING_UUID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"DceErrorInqTextA(valid...)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"DceErrorInqTextA(unformattable...)\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"DceErrorInqTextA(deviation...)\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Cannot set up for DceErrorInqText\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @TestDceErrorInqText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TestDceErrorInqText() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i64, align 8
  %4 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %5 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @RPC_S_NOT_RPC_ERROR, align 4
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %10 = call i32 @ARRAY_SIZE(i8* %9)
  %11 = call i64 @FormatMessageA(i32 %6, i32* null, i32 %7, i32 0, i8* %8, i32 %10, i32* null)
  store i64 %11, i64* %3, align 8
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %13 = call i64 @DceErrorInqTextA(i32 0, i8* %12)
  %14 = load i64, i64* @RPC_S_OK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @RPC_S_INVALID_STRING_UUID, align 4
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %20 = call i64 @DceErrorInqTextA(i32 %18, i8* %19)
  %21 = load i64, i64* @RPC_S_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i64, i64* %3, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %0
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %29 = call i64 @DceErrorInqTextA(i32 35, i8* %28)
  %30 = load i64, i64* @RPC_S_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %35 = call i64 @strcmp(i8* %33, i8* %34)
  %36 = icmp eq i64 %35, 0
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ false, %27 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %42 = call i64 @DceErrorInqTextA(i32 3814, i8* %41)
  %43 = load i64, i64* @RPC_S_OK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %48 = call i64 @strcmp(i8* %46, i8* %47)
  %49 = icmp eq i64 %48, 0
  br label %50

50:                                               ; preds = %45, %37
  %51 = phi i1 [ false, %37 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %56

54:                                               ; preds = %0
  %55 = call i32 @ok(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %50
  ret void
}

declare dso_local i64 @FormatMessageA(i32, i32*, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @DceErrorInqTextA(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
