; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/hivetest/extr_hivetest.c_DeleteKeyTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/hivetest/extr_hivetest.c_DeleteKeyTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 92, i32 116, i32 101, i32 115, i32 116, i32 107, i32 101, i32 121, i32 0], align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Delete key '\\Registry\\Machine\\Software\\testkey':\0A\00", align 1
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"NtOpenKey:\0A\00", align 1
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"  Status = %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"NtDeleteKey:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeleteKeyTest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @RTL_CONSTANT_STRING(i8* bitcast ([35 x i32]* @.str to i8*))
  store i32 %5, i32* %2, align 4
  %6 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %8 = call i32 @InitializeObjectAttributes(i32* %1, i32* %2, i32 %7, i32* null, i32* null)
  %9 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %11 = call i32 @NtOpenKey(i32* %3, i32 %10, i32* %1)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @NT_SUCCESS(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %0
  br label %26

18:                                               ; preds = %0
  %19 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @NtDeleteKey(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @NtClose(i32 %24)
  br label %26

26:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @RTL_CONSTANT_STRING(i8*) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @NtOpenKey(i32*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @NtDeleteKey(i32) #1

declare dso_local i32 @NtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
