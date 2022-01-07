; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_path.c_test_PathMakePretty.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_path.c_test_PathMakePretty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"PathMakePretty: NULL path succeeded\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"PathMakePretty: Empty path failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"C:\\A LONG FILE NAME WITH \\SPACES.TXT\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"PathMakePretty: Long UC name failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"C:\\a long file name with \\spaces.txt\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"PathMakePretty: Long UC name not changed\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"C:\\A LONG FILE NAME WITH \\MixedCase.TXT\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"PathMakePretty: Long MC name succeeded\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"PathMakePretty: Failed but modified path\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"TEST\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"PathMakePretty: Short name failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"PathMakePretty: 1st char lowercased %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PathMakePretty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PathMakePretty() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @MAX_PATH, align 4
  %4 = zext i32 %3 to i64
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %1, align 8
  %6 = alloca i8, i64 %4, align 16
  store i64 %4, i64* %2, align 8
  %7 = call i64 @PathMakePrettyA(i8* null)
  %8 = load i64, i64* @FALSE, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %12 = getelementptr inbounds i8, i8* %6, i64 0
  store i8 0, i8* %12, align 16
  %13 = call i64 @PathMakePrettyA(i8* %6)
  %14 = load i64, i64* @TRUE, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @strcpy(i8* %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i64 @PathMakePrettyA(i8* %6)
  %20 = load i64, i64* @TRUE, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %28 = call i32 @strcpy(i8* %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %29 = call i64 @PathMakePrettyA(i8* %6)
  %30 = load i64, i64* @FALSE, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %34 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %38 = call i32 @strcpy(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %39 = call i64 @PathMakePrettyA(i8* %6)
  %40 = load i64, i64* @TRUE, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %44 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i8* %6)
  %48 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %48)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @PathMakePrettyA(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
