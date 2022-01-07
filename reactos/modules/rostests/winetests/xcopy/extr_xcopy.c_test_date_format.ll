; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xcopy/extr_xcopy.c_test_date_format.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xcopy/extr_xcopy.c_test_date_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"xcopy /D:20-01-2000 xcopy1 xcopytest\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"xcopy /D:d-m-y test returned rc=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"xcopytest\\xcopy1\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"xcopy should not have created xcopytest\\xcopy1\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"xcopy /D:01-20-2000 xcopy1 xcopytest\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"xcopy /D:m-d-y test failed rc=%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"xcopy did not create xcopytest\\xcopy1\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"xcopy /D:1-20-2000 xcopy1 xcopytest\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_date_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_date_format() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @runcmd(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp eq i32 %3, 4
  %5 = zext i1 %4 to i32
  %6 = load i32, i32* %1, align 4
  %7 = call i32 (i32, i8*, ...) @ok(i32 %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = call i64 @GetFileAttributesA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %13 = call i32 @runcmd(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %1, align 4
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %17)
  %19 = call i64 @GetFileAttributesA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %24 = call i32 @DeleteFileA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @runcmd(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %1, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %29)
  %31 = call i64 @GetFileAttributesA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %36 = call i32 @DeleteFileA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @runcmd(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetFileAttributesA(i8*) #1

declare dso_local i32 @DeleteFileA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
