; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-cap-list.c_test_capability_set.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-cap-list.c_test_capability_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0 1 2 3\00", align 1
@CAP_DAC_OVERRIDE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"cap_dac_override\00", align 1
@CAP_CHOWN = common dso_local global i32 0, align 4
@CAP_DAC_READ_SEARCH = common dso_local global i32 0, align 4
@CAP_FOWNER = common dso_local global i32 0, align 4
@CAP_SETGID = common dso_local global i32 0, align 4
@CAP_SETUID = common dso_local global i32 0, align 4
@CAP_SYS_PTRACE = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@CAP_AUDIT_CONTROL = common dso_local global i32 0, align 4
@CAP_MAC_OVERRIDE = common dso_local global i32 0, align 4
@CAP_SYSLOG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [155 x i8] c"cap_chown cap_dac_override cap_dac_read_search cap_fowner cap_setgid cap_setuid cap_sys_ptrace cap_sys_admin cap_audit_control cap_mac_override cap_syslog\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_capability_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_capability_set() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @capability_set_from_string(i8* null, i32* %1)
  %3 = icmp eq i64 %2, 0
  %4 = zext i1 %3 to i32
  %5 = call i32 @assert_se(i32 %4)
  %6 = load i32, i32* %1, align 4
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert_se(i32 %8)
  %10 = call i64 @capability_set_from_string(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %1)
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  %14 = load i32, i32* %1, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert_se(i32 %16)
  %18 = call i64 @capability_set_from_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %1)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert_se(i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @UINT64_C(i32 1)
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert_se(i32 %25)
  %27 = call i64 @capability_set_from_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert_se(i32 %29)
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @UINT64_C(i32 1)
  %33 = shl i32 %32, 1
  %34 = icmp eq i32 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert_se(i32 %35)
  %37 = call i64 @capability_set_from_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %1)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert_se(i32 %39)
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @UINT64_C(i32 1)
  %43 = shl i32 %42, 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp eq i32 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert_se(i32 %46)
  %48 = call i32 @test_capability_set_one(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 @UINT64_C(i32 1)
  %50 = load i32, i32* @CAP_DAC_OVERRIDE, align 4
  %51 = shl i32 %49, %50
  %52 = call i32 @test_capability_set_one(i32 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %53 = call i32 @UINT64_C(i32 1)
  %54 = load i32, i32* @CAP_DAC_OVERRIDE, align 4
  %55 = shl i32 %53, %54
  %56 = call i32 @UINT64_C(i32 1)
  %57 = call i32 (...) @capability_list_length()
  %58 = shl i32 %56, %57
  %59 = or i32 %55, %58
  %60 = call i32 @test_capability_set_one(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %61 = call i32 @UINT64_C(i32 1)
  %62 = call i32 (...) @capability_list_length()
  %63 = shl i32 %61, %62
  %64 = call i32 @test_capability_set_one(i32 %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %65 = call i32 @UINT64_C(i32 1)
  %66 = load i32, i32* @CAP_CHOWN, align 4
  %67 = shl i32 %65, %66
  %68 = call i32 @UINT64_C(i32 1)
  %69 = load i32, i32* @CAP_DAC_OVERRIDE, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %67, %70
  %72 = call i32 @UINT64_C(i32 1)
  %73 = load i32, i32* @CAP_DAC_READ_SEARCH, align 4
  %74 = shl i32 %72, %73
  %75 = or i32 %71, %74
  %76 = call i32 @UINT64_C(i32 1)
  %77 = load i32, i32* @CAP_FOWNER, align 4
  %78 = shl i32 %76, %77
  %79 = or i32 %75, %78
  %80 = call i32 @UINT64_C(i32 1)
  %81 = load i32, i32* @CAP_SETGID, align 4
  %82 = shl i32 %80, %81
  %83 = or i32 %79, %82
  %84 = call i32 @UINT64_C(i32 1)
  %85 = load i32, i32* @CAP_SETUID, align 4
  %86 = shl i32 %84, %85
  %87 = or i32 %83, %86
  %88 = call i32 @UINT64_C(i32 1)
  %89 = load i32, i32* @CAP_SYS_PTRACE, align 4
  %90 = shl i32 %88, %89
  %91 = or i32 %87, %90
  %92 = call i32 @UINT64_C(i32 1)
  %93 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %94 = shl i32 %92, %93
  %95 = or i32 %91, %94
  %96 = call i32 @UINT64_C(i32 1)
  %97 = load i32, i32* @CAP_AUDIT_CONTROL, align 4
  %98 = shl i32 %96, %97
  %99 = or i32 %95, %98
  %100 = call i32 @UINT64_C(i32 1)
  %101 = load i32, i32* @CAP_MAC_OVERRIDE, align 4
  %102 = shl i32 %100, %101
  %103 = or i32 %99, %102
  %104 = call i32 @UINT64_C(i32 1)
  %105 = load i32, i32* @CAP_SYSLOG, align 4
  %106 = shl i32 %104, %105
  %107 = or i32 %103, %106
  %108 = call i32 @UINT64_C(i32 1)
  %109 = call i32 (...) @capability_list_length()
  %110 = add nsw i32 %109, 1
  %111 = shl i32 %108, %110
  %112 = or i32 %107, %111
  %113 = call i32 @test_capability_set_one(i32 %112, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @capability_set_from_string(i8*, i32*) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @test_capability_set_one(i32, i8*) #1

declare dso_local i32 @capability_list_length(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
