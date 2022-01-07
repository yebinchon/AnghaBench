; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wldap32/extr_parse.c_test_ldap_search_extW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wldap32/extr_parse.c_test_ldap_search_extW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_ldap_search_extW.filter = private unnamed_addr constant [5 x i8] c"ou=*\00", align 1
@LDAP_SCOPE_SUBTREE = common dso_local global i32 0, align 4
@LDAP_SERVER_DOWN = common dso_local global i64 0, align 8
@LDAP_UNAVAILABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"test server can't be reached\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ldap_search_extW failed 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_ldap_search_extW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ldap_search_extW(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [1 x i8], align 1
  %7 = alloca [5 x i8], align 1
  store i32* %0, i32** %2, align 8
  %8 = bitcast [1 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 0, i64 1, i1 false)
  %9 = bitcast [5 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_ldap_search_extW.filter, i32 0, i32 0), i64 5, i1 false)
  store i64 20, i64* %5, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %12 = load i32, i32* @LDAP_SCOPE_SUBTREE, align 4
  %13 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @ldap_search_extW(i32* %10, i8* %11, i32 %12, i8* %13, i32* null, i32 0, i32* null, i32* null, i64 %14, i32 0, i64* %4)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @LDAP_SERVER_DOWN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @LDAP_UNAVAILABLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %1
  %24 = call i32 @skip(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %44

25:                                               ; preds = %19
  %26 = load i64, i64* %3, align 8
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  store i64 0, i64* %5, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %34 = load i32, i32* @LDAP_SCOPE_SUBTREE, align 4
  %35 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @ldap_search_extW(i32* %32, i8* %33, i32 %34, i8* %35, i32* null, i32 0, i32* null, i32* null, i64 %36, i32 0, i64* %4)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %25, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ldap_search_extW(i32*, i8*, i32, i8*, i32*, i32, i32*, i32*, i64, i32, i64*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
