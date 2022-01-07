; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-condition.c_test_condition_test_security.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-condition.c_test_condition_test_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONDITION_SECURITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"garbage oifdsjfoidsjoj\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"selinux\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"apparmor\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"tomoyo\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ima\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"smack\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"audit\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"uefi-secureboot\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_condition_test_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_condition_test_security() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @CONDITION_SECURITY, align 4
  %3 = call i32* @condition_new(i32 %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = ptrtoint i32* %4 to i32
  %6 = call i32 @assert_se(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i64 @condition_test(i32* %7)
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert_se(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @condition_free(i32* %12)
  %14 = load i32, i32* @CONDITION_SECURITY, align 4
  %15 = call i32* @condition_new(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 1)
  store i32* %15, i32** %1, align 8
  %16 = load i32*, i32** %1, align 8
  %17 = ptrtoint i32* %16 to i32
  %18 = call i32 @assert_se(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i64 @condition_test(i32* %19)
  %21 = call i64 (...) @mac_selinux_use()
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert_se(i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @condition_free(i32* %25)
  %27 = load i32, i32* @CONDITION_SECURITY, align 4
  %28 = call i32* @condition_new(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  store i32* %28, i32** %1, align 8
  %29 = load i32*, i32** %1, align 8
  %30 = ptrtoint i32* %29 to i32
  %31 = call i32 @assert_se(i32 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i64 @condition_test(i32* %32)
  %34 = call i64 (...) @mac_apparmor_use()
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert_se(i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @condition_free(i32* %38)
  %40 = load i32, i32* @CONDITION_SECURITY, align 4
  %41 = call i32* @condition_new(i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0)
  store i32* %41, i32** %1, align 8
  %42 = load i32*, i32** %1, align 8
  %43 = ptrtoint i32* %42 to i32
  %44 = call i32 @assert_se(i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i64 @condition_test(i32* %45)
  %47 = call i64 (...) @mac_tomoyo_use()
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert_se(i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @condition_free(i32* %51)
  %53 = load i32, i32* @CONDITION_SECURITY, align 4
  %54 = call i32* @condition_new(i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0)
  store i32* %54, i32** %1, align 8
  %55 = load i32*, i32** %1, align 8
  %56 = ptrtoint i32* %55 to i32
  %57 = call i32 @assert_se(i32 %56)
  %58 = load i32*, i32** %1, align 8
  %59 = call i64 @condition_test(i32* %58)
  %60 = call i64 (...) @use_ima()
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert_se(i32 %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @condition_free(i32* %64)
  %66 = load i32, i32* @CONDITION_SECURITY, align 4
  %67 = call i32* @condition_new(i32 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0)
  store i32* %67, i32** %1, align 8
  %68 = load i32*, i32** %1, align 8
  %69 = ptrtoint i32* %68 to i32
  %70 = call i32 @assert_se(i32 %69)
  %71 = load i32*, i32** %1, align 8
  %72 = call i64 @condition_test(i32* %71)
  %73 = call i64 (...) @mac_smack_use()
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert_se(i32 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @condition_free(i32* %77)
  %79 = load i32, i32* @CONDITION_SECURITY, align 4
  %80 = call i32* @condition_new(i32 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 0)
  store i32* %80, i32** %1, align 8
  %81 = load i32*, i32** %1, align 8
  %82 = ptrtoint i32* %81 to i32
  %83 = call i32 @assert_se(i32 %82)
  %84 = load i32*, i32** %1, align 8
  %85 = call i64 @condition_test(i32* %84)
  %86 = call i64 (...) @use_audit()
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert_se(i32 %88)
  %90 = load i32*, i32** %1, align 8
  %91 = call i32 @condition_free(i32* %90)
  %92 = load i32, i32* @CONDITION_SECURITY, align 4
  %93 = call i32* @condition_new(i32 %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0)
  store i32* %93, i32** %1, align 8
  %94 = load i32*, i32** %1, align 8
  %95 = ptrtoint i32* %94 to i32
  %96 = call i32 @assert_se(i32 %95)
  %97 = load i32*, i32** %1, align 8
  %98 = call i64 @condition_test(i32* %97)
  %99 = call i64 (...) @is_efi_secure_boot()
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert_se(i32 %101)
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @condition_free(i32* %103)
  ret void
}

declare dso_local i32* @condition_new(i32, i8*, i32, i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @condition_test(i32*) #1

declare dso_local i32 @condition_free(i32*) #1

declare dso_local i64 @mac_selinux_use(...) #1

declare dso_local i64 @mac_apparmor_use(...) #1

declare dso_local i64 @mac_tomoyo_use(...) #1

declare dso_local i64 @use_ima(...) #1

declare dso_local i64 @mac_smack_use(...) #1

declare dso_local i64 @use_audit(...) #1

declare dso_local i64 @is_efi_secure_boot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
