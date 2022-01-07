; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wldap32/extr_parse.c_test_ldap_set_optionW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wldap32/extr_parse.c_test_ldap_set_optionW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDAP_OPT_REFERRALS = common dso_local global i32 0, align 4
@LDAP_SERVER_DOWN = common dso_local global i64 0, align 8
@LDAP_UNAVAILABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"test server can't be reached\0A\00", align 1
@LDAP_OPT_OFF = common dso_local global i8* null, align 8
@LDAP_PARAM_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"ldap_set_optionW failed 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_ldap_set_optionW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ldap_set_optionW(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @LDAP_OPT_REFERRALS, align 4
  %7 = call i64 @ldap_get_optionW(i32* %5, i32 %6, i64* %4)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @LDAP_SERVER_DOWN, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @LDAP_UNAVAILABLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %1
  %16 = call i32 @skip(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %46

17:                                               ; preds = %11
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @LDAP_OPT_REFERRALS, align 4
  %20 = load i8*, i8** @LDAP_OPT_OFF, align 8
  %21 = call i64 @ldap_set_optionW(i32* %18, i32 %19, i8* %20)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @LDAP_PARAM_ERROR, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @broken(i32 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %24, %17
  %32 = phi i1 [ true, %17 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @LDAP_OPT_REFERRALS, align 4
  %38 = bitcast i64* %4 to i8*
  %39 = call i64 @ldap_set_optionW(i32* %36, i32 %37, i8* %38)
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %31, %15
  ret void
}

declare dso_local i64 @ldap_get_optionW(i32*, i32, i64*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @ldap_set_optionW(i32*, i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
