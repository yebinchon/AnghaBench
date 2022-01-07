; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/hivetest/extr_hivetest.c_test3.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/hivetest/extr_hivetest.c_test3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"NtCreateKey non volatile: \0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"  \\Registry\\Machine\\Software\\test3reactos: \00", align 1
@.str.2 = private unnamed_addr constant [40 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 92, i32 116, i32 101, i32 115, i32 116, i32 51, i32 114, i32 101, i32 97, i32 99, i32 116, i32 111, i32 115, i32 0], align 4
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"\09\09Status=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"delete \\Registry\\Machine\\software\\test3reactos ?\00", align 1
@InputHandle = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"NtOpenKey : \00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"\09\09\09\09Status =%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"NtDeleteKey : \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x i8], align 1
  %6 = alloca i32, align 4
  %7 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %3, i8* bitcast ([40 x i32]* @.str.2 to i8*))
  %10 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %11 = call i32 @InitializeObjectAttributes(i32* %2, i32* %3, i32 %10, i32* null, i32* null)
  %12 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %13 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %14 = call i32 @NtCreateKey(i32* %1, i32 %12, i32* %2, i32 0, i32* null, i32 %13, i32* null)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @NtClose(i32 %17)
  %19 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i32, i32* @InputHandle, align 4
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %22 = call i32 @ReadConsoleA(i32 %20, i8* %21, i32 3, i32* %6, i32* null)
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 121
  br i1 %26, label %27, label %33

27:                                               ; preds = %0
  %28 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 89
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %50

33:                                               ; preds = %27, %0
  %34 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %35 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %3, i8* bitcast ([40 x i32]* @.str.2 to i8*))
  %36 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %37 = call i32 @InitializeObjectAttributes(i32* %2, i32* %3, i32 %36, i32* null, i32* null)
  %38 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %39 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %40 = call i32 @NtOpenKey(i32* %1, i32 %39, i32* %2)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %41)
  %43 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %44 = load i32, i32* %1, align 4
  %45 = call i32 @NtDeleteKey(i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @NtClose(i32 %48)
  br label %50

50:                                               ; preds = %33, %32
  ret void
}

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @RtlRosInitUnicodeStringFromLiteral(i32*, i8*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @NtCreateKey(i32*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @NtClose(i32) #1

declare dso_local i32 @ReadConsoleA(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @NtOpenKey(i32*, i32, i32*) #1

declare dso_local i32 @NtDeleteKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
