; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_mktemp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_mktemp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"_mktemp(\22a\22) != NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"testXXXXX\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"_mktemp(\22testXXXXX\22) != NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"testXXXXXX\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"_mktemp(\22testXXXXXX\22) == NULL\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"testXXXXXXa\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"_mktemp(\22testXXXXXXa\22) != NULL\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"**XXXXXX\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"_mktemp(\22**XXXXXX\22) == NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mktemp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mktemp() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %3 = call i32 @strcpy(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %5 = call i32* @_mktemp(i8* %4)
  %6 = icmp ne i32* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %11 = call i32 @strcpy(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %13 = call i32* @_mktemp(i8* %12)
  %14 = icmp ne i32* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %19 = call i32 @strcpy(i8* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %21 = call i32* @_mktemp(i8* %20)
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %26 = call i32 @strcpy(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %28 = call i32* @_mktemp(i8* %27)
  %29 = icmp ne i32* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %34 = call i32 @strcpy(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %36 = call i32* @_mktemp(i8* %35)
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32* @_mktemp(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
