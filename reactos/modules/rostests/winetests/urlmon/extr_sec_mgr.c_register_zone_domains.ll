; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_register_zone_domains.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_register_zone_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i32 }

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@szZoneMapDomainsKey = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"RegOpenKey failed: %d\0A\00", align 1
@URLZONE_CUSTOM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"local.machine\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"need admin rights\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"RegCreateKey failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"RegSetValueEx failed: %d\0A\00", align 1
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@zone_domain_mappings = common dso_local global %struct.TYPE_4__* null, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"RegCreateKey failed with %d on test %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"RegSetValueEx failed with %d on test %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @register_zone_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_zone_domains() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %11 = load i32, i32* @szZoneMapDomainsKey, align 4
  %12 = call i64 @RegOpenKeyA(i32 %10, i32 %11, i32* %2)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %0
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @broken(i32 %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %16, %0
  %24 = phi i1 [ true, %0 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %3, align 8
  %27 = call i32 (i32, i8*, i64, ...) @ok(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %23
  %32 = load i64, i64* @URLZONE_CUSTOM, align 8
  store i64 %32, i64* %6, align 8
  %33 = load i32, i32* %2, align 4
  %34 = call i64 @RegCreateKeyA(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = call i32 @skip(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @RegCloseKey(i32 %40)
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %1, align 4
  br label %155

43:                                               ; preds = %31
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %3, align 8
  %49 = call i32 (i32, i8*, i64, ...) @ok(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @REG_DWORD, align 4
  %52 = bitcast i64* %6 to i32*
  %53 = call i64 @RegSetValueExA(i32 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %51, i32* %52, i32 8)
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* @ERROR_SUCCESS, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %3, align 8
  %59 = call i32 (i32, i8*, i64, ...) @ok(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @RegCloseKey(i32 %60)
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @RegCloseKey(i32 %62)
  br label %64

64:                                               ; preds = %43, %23
  %65 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %66 = load i32, i32* @szZoneMapDomainsKey, align 4
  %67 = call i64 @RegOpenKeyA(i32 %65, i32 %66, i32* %2)
  store i64 %67, i64* %3, align 8
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* @ERROR_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %3, align 8
  %73 = call i32 (i32, i8*, i64, ...) @ok(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %72)
  store i64 0, i64* %4, align 8
  br label %74

74:                                               ; preds = %148, %64
  %75 = load i64, i64* %4, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @zone_domain_mappings, align 8
  %77 = call i64 @ARRAY_SIZE(%struct.TYPE_4__* %76)
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %79, label %151

79:                                               ; preds = %74
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @zone_domain_mappings, align 8
  %81 = load i64, i64* %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %81
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %7, align 8
  %83 = load i32, i32* %2, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @RegCreateKeyA(i32 %83, i8* %86, i32* %8)
  store i64 %87, i64* %3, align 8
  %88 = load i64, i64* %3, align 8
  %89 = load i64, i64* @ERROR_SUCCESS, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %3, align 8
  %93 = load i64, i64* %4, align 8
  %94 = call i32 (i32, i8*, i64, ...) @ok(i32 %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 %92, i64 %93)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %115, label %99

99:                                               ; preds = %79
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @REG_DWORD, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = call i64 @RegSetValueExA(i32 %100, i8* %103, i32 0, i32 %104, i32* %106, i32 8)
  store i64 %107, i64* %3, align 8
  %108 = load i64, i64* %3, align 8
  %109 = load i64, i64* @ERROR_SUCCESS, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i64, i64* %3, align 8
  %113 = load i64, i64* %4, align 8
  %114 = call i32 (i32, i8*, i64, ...) @ok(i32 %111, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 %112, i64 %113)
  br label %145

115:                                              ; preds = %79
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @RegCreateKeyA(i32 %116, i8* %119, i32* %9)
  store i64 %120, i64* %3, align 8
  %121 = load i64, i64* %3, align 8
  %122 = load i64, i64* @ERROR_SUCCESS, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i64, i64* %3, align 8
  %126 = load i64, i64* %4, align 8
  %127 = call i32 (i32, i8*, i64, ...) @ok(i32 %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 %125, i64 %126)
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* @REG_DWORD, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  %135 = call i64 @RegSetValueExA(i32 %128, i8* %131, i32 0, i32 %132, i32* %134, i32 8)
  store i64 %135, i64* %3, align 8
  %136 = load i64, i64* %3, align 8
  %137 = load i64, i64* @ERROR_SUCCESS, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i64, i64* %3, align 8
  %141 = load i64, i64* %4, align 8
  %142 = call i32 (i32, i8*, i64, ...) @ok(i32 %139, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 %140, i64 %141)
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @RegCloseKey(i32 %143)
  br label %145

145:                                              ; preds = %115, %99
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @RegCloseKey(i32 %146)
  br label %148

148:                                              ; preds = %145
  %149 = load i64, i64* %4, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %4, align 8
  br label %74

151:                                              ; preds = %74
  %152 = load i32, i32* %2, align 4
  %153 = call i32 @RegCloseKey(i32 %152)
  %154 = load i32, i32* @TRUE, align 4
  store i32 %154, i32* %1, align 4
  br label %155

155:                                              ; preds = %151, %38
  %156 = load i32, i32* %1, align 4
  ret i32 %156
}

declare dso_local i64 @RegOpenKeyA(i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @RegCreateKeyA(i32, i8*, i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @RegSetValueExA(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
