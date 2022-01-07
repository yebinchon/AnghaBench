; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest6.c_testRestoreDb.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest6.c_testRestoreDb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s-save\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s-%s-save\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testRestoreDb(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* (i8*, i8*, ...) @testMallocPrintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %8, i8* %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* (i8*, i8*, ...) @testMallocPrintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* (i8*, i8*, ...) @testMallocPrintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %13, i8* %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @copy_file(i8* %16, i8* %17, i32 1)
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @copy_file(i8* %19, i8* %20, i32 0)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @testFree(i8* %22)
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @testFree(i8* %24)
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @testFree(i8* %26)
  ret void
}

declare dso_local i8* @testMallocPrintf(i8*, i8*, ...) #1

declare dso_local i32 @copy_file(i8*, i8*, i32) #1

declare dso_local i32 @testFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
