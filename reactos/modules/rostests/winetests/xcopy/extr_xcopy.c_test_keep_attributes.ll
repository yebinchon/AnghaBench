; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xcopy/extr_xcopy.c_test_keep_attributes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xcopy/extr_xcopy.c_test_keep_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"xcopy1\00", align 1
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"xcopy xcopy1 xcopytest\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"xcopy failed to copy read only file\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"xcopytest\\xcopy1\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"xcopy should not have copied file permissions\0A\00", align 1
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"xcopy /K xcopy1 xcopytest\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"xcopy failed to copy read only file with /k\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"xcopy did not keep file permissions\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_keep_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_keep_attributes() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %3 = call i32 @SetFileAttributesA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %2)
  %4 = call i64 @runcmd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 @GetFileAttributesA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %10 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %13 = icmp ne i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %16 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %17 = call i32 @SetFileAttributesA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %16)
  %18 = call i32 @DeleteFileA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i64 @runcmd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i64 %19, i64* %1, align 8
  %20 = load i64, i64* %1, align 8
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %24 = call i32 @GetFileAttributesA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %31 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %32 = call i32 @SetFileAttributesA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = call i32 @DeleteFileA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %35 = call i32 @SetFileAttributesA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %34)
  ret void
}

declare dso_local i32 @SetFileAttributesA(i8*, i32) #1

declare dso_local i64 @runcmd(i8*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GetFileAttributesA(i8*) #1

declare dso_local i32 @DeleteFileA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
