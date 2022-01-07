; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_sid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_fill_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32, i64 }
%struct.expr = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.record_sid = type { i32, i32, i32, i32, i32 }

@FILL_STATUS_FAILED = common dso_local global i32 0, align 4
@POLICY_ALL_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"created 1 row\0A\00", align 1
@FILL_STATUS_FILTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, %struct.expr*)* @fill_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_sid(%struct.table* %0, %struct.expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.record_sid*, align 8
  %13 = alloca i32, align 4
  store %struct.table* %0, %struct.table** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  %14 = load %struct.expr*, %struct.expr** %5, align 8
  %15 = call i32* @find_sid_str(%struct.expr* %14)
  store i32* %15, i32** %11, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %18, i32* %3, align 4
  br label %90

19:                                               ; preds = %2
  %20 = load %struct.table*, %struct.table** %4, align 8
  %21 = call i32 @resize_table(%struct.table* %20, i32 1, i32 20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %24, i32* %3, align 4
  br label %90

25:                                               ; preds = %19
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @ConvertStringSidToSidW(i32* %26, i32* %6)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %30, i32* %3, align 4
  br label %90

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @GetLengthSid(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = call i32 @memset(%struct.TYPE_4__* %10, i32 0, i32 4)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 4, i32* %35, align 4
  %36 = load i32, i32* @POLICY_ALL_ACCESS, align 4
  %37 = call i64 @LsaOpenPolicy(i32* null, %struct.TYPE_4__* %10, i32 %36, i32* %9)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @LocalFree(i32 %40)
  %42 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %42, i32* %3, align 4
  br label %90

43:                                               ; preds = %31
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @LsaLookupSids(i32 %44, i32 1, i32* %6, i32** %7, i32** %8)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @LocalFree(i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @LsaClose(i32 %50)
  %52 = load i32, i32* @FILL_STATUS_FAILED, align 4
  store i32 %52, i32* %3, align 4
  br label %90

53:                                               ; preds = %43
  %54 = load %struct.table*, %struct.table** %4, align 8
  %55 = getelementptr inbounds %struct.table, %struct.table* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.record_sid*
  store %struct.record_sid* %57, %struct.record_sid** %12, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @get_accountname(i32* %58)
  %60 = load %struct.record_sid*, %struct.record_sid** %12, align 8
  %61 = getelementptr inbounds %struct.record_sid, %struct.record_sid* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @get_binaryrepresentation(i32 %62, i32 %63)
  %65 = load %struct.record_sid*, %struct.record_sid** %12, align 8
  %66 = getelementptr inbounds %struct.record_sid, %struct.record_sid* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @get_referenceddomainname(i32* %67)
  %69 = load %struct.record_sid*, %struct.record_sid** %12, align 8
  %70 = getelementptr inbounds %struct.record_sid, %struct.record_sid* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @heap_strdupW(i32* %71)
  %73 = load %struct.record_sid*, %struct.record_sid** %12, align 8
  %74 = getelementptr inbounds %struct.record_sid, %struct.record_sid* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.record_sid*, %struct.record_sid** %12, align 8
  %77 = getelementptr inbounds %struct.record_sid, %struct.record_sid* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.table*, %struct.table** %4, align 8
  %80 = getelementptr inbounds %struct.table, %struct.table* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @LsaFreeMemory(i32* %81)
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @LsaFreeMemory(i32* %83)
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @LocalFree(i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @LsaClose(i32 %87)
  %89 = load i32, i32* @FILL_STATUS_FILTERED, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %53, %47, %39, %29, %23, %17
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32* @find_sid_str(%struct.expr*) #1

declare dso_local i32 @resize_table(%struct.table*, i32, i32) #1

declare dso_local i32 @ConvertStringSidToSidW(i32*, i32*) #1

declare dso_local i32 @GetLengthSid(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @LsaOpenPolicy(i32*, %struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i64 @LsaLookupSids(i32, i32, i32*, i32**, i32**) #1

declare dso_local i32 @LsaClose(i32) #1

declare dso_local i32 @get_accountname(i32*) #1

declare dso_local i32 @get_binaryrepresentation(i32, i32) #1

declare dso_local i32 @get_referenceddomainname(i32*) #1

declare dso_local i32 @heap_strdupW(i32*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @LsaFreeMemory(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
