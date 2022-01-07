; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_unregister_zone_domains.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_unregister_zone_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@szZoneMapDomainsKey = common dso_local global i8* null, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"RegOpenKey failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"local.machine\00", align 1
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@zone_domain_mappings = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unregister_zone_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unregister_zone_domains() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %7 = load i8*, i8** @szZoneMapDomainsKey, align 8
  %8 = call i64 @RegOpenKeyA(i32 %6, i8* %7, i32* %1)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @ERROR_SUCCESS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %0
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @broken(i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %12, %0
  %20 = phi i1 [ true, %0 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %2, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @RegDeleteKeyA(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @RegCloseKey(i32 %30)
  br label %32

32:                                               ; preds = %27, %19
  %33 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %34 = load i8*, i8** @szZoneMapDomainsKey, align 8
  %35 = call i64 @RegOpenKeyA(i32 %33, i8* %34, i32* %1)
  store i64 %35, i64* %2, align 8
  %36 = load i64, i64* %2, align 8
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %2, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %40)
  store i64 0, i64* %3, align 8
  br label %42

42:                                               ; preds = %79, %32
  %43 = load i64, i64* %3, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @zone_domain_mappings, align 8
  %45 = call i64 @ARRAY_SIZE(%struct.TYPE_4__* %44)
  %46 = icmp slt i64 %43, %45
  br i1 %46, label %47, label %82

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @zone_domain_mappings, align 8
  %49 = load i64, i64* %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %4, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %47
  %56 = load i32, i32* %1, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @RegOpenKeyA(i32 %56, i8* %59, i32* %5)
  store i64 %60, i64* %2, align 8
  %61 = load i64, i64* %2, align 8
  %62 = load i64, i64* @ERROR_SUCCESS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @RegDeleteKeyA(i32 %65, i8* %68)
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @RegCloseKey(i32 %70)
  br label %72

72:                                               ; preds = %64, %55
  br label %73

73:                                               ; preds = %72, %47
  %74 = load i32, i32* %1, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @RegDeleteKeyA(i32 %74, i8* %77)
  br label %79

79:                                               ; preds = %73
  %80 = load i64, i64* %3, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %3, align 8
  br label %42

82:                                               ; preds = %42
  %83 = load i32, i32* %1, align 4
  %84 = call i32 @RegCloseKey(i32 %83)
  ret void
}

declare dso_local i64 @RegOpenKeyA(i32, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @RegDeleteKeyA(i32, i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
