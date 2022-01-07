; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/regtest/extr_regtest.c_test8.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/regtest/extr_regtest.c_test8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@TOKEN_ADJUST_PRIVILEGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"\09\09\09\09Status =%x\0A\00", align 1
@SE_PRIVILEGE_ENABLED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"\09\09\09\09bRes =%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i32] [i32 116, i32 101, i32 115, i32 116, i32 53, i32 0], align 4
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"test5\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\09\09\09\09dwError =%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"NtOpenKey \\Registry\\Machine : \00", align 1
@.str.7 = private unnamed_addr constant [18 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 0], align 4
@MAXIMUM_ALLOWED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"\09\09\09Status =%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test8() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = call i32 (...) @GetCurrentProcess()
  %11 = load i32, i32* @TOKEN_ADJUST_PRIVILEGES, align 4
  %12 = call i32 @NtOpenProcessToken(i32 %10, i32 %11, i32* %6)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* @SE_PRIVILEGE_ENABLED, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = call i32 @AdjustTokenPrivileges(i32 %26, i32 %27, %struct.TYPE_5__* %5, i32 0, i32* null, i32* null)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %2, i8* bitcast ([6 x i32]* @.str.2 to i8*))
  %32 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %33 = call i32 @InitializeObjectAttributes(i32* %1, i32* %2, i32 %32, i32* null, i32* null)
  %34 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %35 = call i32 @NtLoadKey(i32 %34, i32* %1)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %39 = call i32 @RegLoadKey(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %43 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %2, i8* bitcast ([18 x i32]* @.str.7 to i8*))
  %44 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %45 = call i32 @InitializeObjectAttributes(i32* %1, i32* %2, i32 %44, i32* null, i32* null)
  %46 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %47 = call i32 @NtOpenKey(i32* %7, i32 %46, i32* %1)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %48)
  %50 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %2, i8* bitcast ([6 x i32]* @.str.2 to i8*))
  %51 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %52 = call i32 @InitializeObjectAttributes(i32* %1, i32* %2, i32 %51, i32* null, i32* null)
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @NtLoadKey(i32 %53, i32* %1)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %55)
  ret void
}

declare dso_local i32 @NtOpenProcessToken(i32, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @AdjustTokenPrivileges(i32, i32, %struct.TYPE_5__*, i32, i32*, i32*) #1

declare dso_local i32 @RtlRosInitUnicodeStringFromLiteral(i32*, i8*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @NtLoadKey(i32, i32*) #1

declare dso_local i32 @RegLoadKey(i32, i8*, i8*) #1

declare dso_local i32 @NtOpenKey(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
