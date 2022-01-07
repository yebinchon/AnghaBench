; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wldap32/extr_parse.c_test_ldap_parse_sort_control.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wldap32/extr_parse.c_test_ldap_parse_sort_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32* }
%struct.l_timeval = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"ou\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"ldap_create_sort_controlA failed 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LDAP_SCOPE_ONELEVEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"(ou=*)\00", align 1
@LDAP_SERVER_DOWN = common dso_local global i32 0, align 4
@LDAP_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"test server can't be reached\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"ldap_search_ext_sA failed 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"expected res != NULL\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"wldap32.dll\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"ber_init\00", align 1
@LDAP_PARAM_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"ldap_parse_resultA failed 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Test would crash on older wldap32 versions\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"got 0x%x expected 0\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"ldap_parse_sort_controlA failed 0x%d\0A\00", align 1
@LDAP_CONTROL_NOT_FOUND = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"ldap_parse_sort_controlA failed 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_ldap_parse_sort_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ldap_parse_sort_control(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x %struct.TYPE_3__*], align 16
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i32*], align 16
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.l_timeval, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store i32* null, i32** %13, align 8
  %14 = load i32, i32* @FALSE, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds [2 x %struct.TYPE_3__*], [2 x %struct.TYPE_3__*]* %5, i64 0, i64 0
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %16, align 16
  %17 = getelementptr inbounds [2 x %struct.TYPE_3__*], [2 x %struct.TYPE_3__*]* %5, i64 0, i64 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %17, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds [2 x %struct.TYPE_3__*], [2 x %struct.TYPE_3__*]* %5, i64 0, i64 0
  %20 = call i32 @ldap_create_sort_controlA(i32* %18, %struct.TYPE_3__** %19, i32 0, i32** %7)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 0
  store i32* %27, i32** %28, align 16
  %29 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 1
  store i32* null, i32** %29, align 8
  %30 = getelementptr inbounds %struct.l_timeval, %struct.l_timeval* %11, i32 0, i32 0
  store i32 20, i32* %30, align 8
  %31 = getelementptr inbounds %struct.l_timeval, %struct.l_timeval* %11, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @LDAP_SCOPE_ONELEVEL, align 4
  %34 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 0
  %35 = call i32 @ldap_search_ext_sA(i32* %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0, i32** %34, i32* null, %struct.l_timeval* %11, i32 10, i32** %10)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @LDAP_SERVER_DOWN, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @LDAP_TIMEOUT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39, %1
  %44 = call i32 @skip(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @ldap_control_freeA(i32* %45)
  br label %124

47:                                               ; preds = %39
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %3, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %10, align 8
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %58 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %59 = call i64 @GetProcAddress(i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %47
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @ldap_parse_resultA(i32* null, i32* %62, i32* %4, i32* null, i32* null, i32* null, i32*** %9, i32 1)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @LDAP_PARAM_ERROR, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %3, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %68)
  br label %72

70:                                               ; preds = %47
  %71 = call i32 @win_skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %61
  store i32 -1, i32* %4, align 4
  %73 = load i32*, i32** %2, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @ldap_parse_resultA(i32* %73, i32* %74, i32* %4, i32* null, i32* null, i32* null, i32*** %9, i32 1)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %3, align 4
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %4, align 4
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %86)
  %88 = call i32 @ldap_parse_sort_controlA(i32* null, i32** null, i32* null, i32* null)
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @LDAP_PARAM_ERROR, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %3, align 4
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 @ldap_parse_sort_controlA(i32* %95, i32** null, i32* null, i32* null)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @LDAP_CONTROL_NOT_FOUND, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %3, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %2, align 8
  %104 = call i32 @ldap_parse_sort_controlA(i32* %103, i32** null, i32* %4, i32* null)
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @LDAP_CONTROL_NOT_FOUND, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %3, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %109)
  %111 = load i32*, i32** %2, align 8
  %112 = load i32**, i32*** %9, align 8
  %113 = call i32 @ldap_parse_sort_controlA(i32* %111, i32** %112, i32* %4, i32* null)
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @LDAP_CONTROL_NOT_FOUND, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %3, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %118)
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @ldap_control_freeA(i32* %120)
  %122 = load i32**, i32*** %9, align 8
  %123 = call i32 @ldap_controls_freeA(i32** %122)
  br label %124

124:                                              ; preds = %72, %43
  ret void
}

declare dso_local i32 @ldap_create_sort_controlA(i32*, %struct.TYPE_3__**, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @ldap_search_ext_sA(i32*, i8*, i32, i8*, i32*, i32, i32**, i32*, %struct.l_timeval*, i32, i32**) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ldap_control_freeA(i32*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i32 @ldap_parse_resultA(i32*, i32*, i32*, i32*, i32*, i32*, i32***, i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ldap_parse_sort_controlA(i32*, i32**, i32*, i32*) #1

declare dso_local i32 @ldap_controls_freeA(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
