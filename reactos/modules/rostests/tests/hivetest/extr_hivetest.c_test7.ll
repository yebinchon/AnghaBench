; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/hivetest/extr_hivetest.c_test7.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/hivetest/extr_hivetest.c_test7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Open link key\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"  Key: \\Registry\\Machine\\SOFTWARE\\Test\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 79, i32 70, i32 84, i32 87, i32 65, i32 82, i32 69, i32 92, i32 84, i32 101, i32 115, i32 116, i32 0], align 4
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@OBJ_OPENIF = common dso_local global i32 0, align 4
@OBJ_OPENLINK = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@REG_OPTION_VOLATILE = common dso_local global i32 0, align 4
@REG_OPTION_OPEN_LINK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"  NtCreateKey() called (Status %lx)\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"Could not open the link key. Please run the link create test first!\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Delete link value\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i32] [i32 83, i32 121, i32 109, i32 98, i32 111, i32 108, i32 105, i32 99, i32 76, i32 105, i32 110, i32 107, i32 86, i32 97, i32 108, i32 117, i32 101, i32 0], align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"  NtDeleteValueKey() called (Status %lx)\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Delete link key\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"  NtDeleteKey() called (Status %lx)\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Close link key\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test7() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %3, i8* bitcast ([32 x i32]* @.str.2 to i8*))
  %9 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %10 = load i32, i32* @OBJ_OPENIF, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @OBJ_OPENLINK, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @InitializeObjectAttributes(i32* %2, i32* %3, i32 %13, i32* null, i32* null)
  %15 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %16 = load i32, i32* @REG_OPTION_VOLATILE, align 4
  %17 = load i32, i32* @REG_OPTION_OPEN_LINK, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @NtCreateKey(i32* %1, i32 %15, i32* %2, i32 0, i32* null, i32 %18, i32* null)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @NT_SUCCESS(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %0
  %26 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  br label %42

27:                                               ; preds = %0
  %28 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %29 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([18 x i32]* @.str.6 to i8*))
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @NtDeleteValueKey(i32 %30, i32* %4)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %32)
  %34 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @NtDeleteKey(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %37)
  %39 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @NtClose(i32 %40)
  br label %42

42:                                               ; preds = %27, %25
  ret void
}

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @RtlRosInitUnicodeStringFromLiteral(i32*, i8*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @NtCreateKey(i32*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @NtDeleteValueKey(i32, i32*) #1

declare dso_local i32 @NtDeleteKey(i32) #1

declare dso_local i32 @NtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
