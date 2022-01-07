; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_proxy_manager_query_local_interface.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_proxy_manager_query_local_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proxy_manager = type { i32, i32, i32 }
%struct.ifproxy = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@IID_IMultiQI = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@IID_IMarshal = common dso_local global i32 0, align 4
@IID_IClientSecurity = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.proxy_manager*, i32, i8**)* @proxy_manager_query_local_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @proxy_manager_query_local_interface(%struct.proxy_manager* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.proxy_manager*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ifproxy*, align 8
  store %struct.proxy_manager* %0, %struct.proxy_manager** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @debugstr_guid(i32 %10)
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @IsEqualIID(i32 %13, i32* @IID_IUnknown)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @IsEqualIID(i32 %17, i32* @IID_IMultiQI)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16, %3
  %21 = load %struct.proxy_manager*, %struct.proxy_manager** %5, align 8
  %22 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %21, i32 0, i32 2
  %23 = bitcast i32* %22 to i8*
  %24 = load i8**, i8*** %7, align 8
  store i8* %23, i8** %24, align 8
  %25 = load %struct.proxy_manager*, %struct.proxy_manager** %5, align 8
  %26 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %25, i32 0, i32 2
  %27 = call i32 @IMultiQI_AddRef(i32* %26)
  %28 = load i64, i64* @S_OK, align 8
  store i64 %28, i64* %4, align 8
  br label %75

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @IsEqualIID(i32 %30, i32* @IID_IMarshal)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.proxy_manager*, %struct.proxy_manager** %5, align 8
  %35 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %34, i32 0, i32 1
  %36 = bitcast i32* %35 to i8*
  %37 = load i8**, i8*** %7, align 8
  store i8* %36, i8** %37, align 8
  %38 = load %struct.proxy_manager*, %struct.proxy_manager** %5, align 8
  %39 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %38, i32 0, i32 1
  %40 = call i32 @IMarshal_AddRef(i32* %39)
  %41 = load i64, i64* @S_OK, align 8
  store i64 %41, i64* %4, align 8
  br label %75

42:                                               ; preds = %29
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @IsEqualIID(i32 %43, i32* @IID_IClientSecurity)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.proxy_manager*, %struct.proxy_manager** %5, align 8
  %48 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %47, i32 0, i32 0
  %49 = bitcast i32* %48 to i8*
  %50 = load i8**, i8*** %7, align 8
  store i8* %49, i8** %50, align 8
  %51 = load %struct.proxy_manager*, %struct.proxy_manager** %5, align 8
  %52 = getelementptr inbounds %struct.proxy_manager, %struct.proxy_manager* %51, i32 0, i32 0
  %53 = call i32 @IClientSecurity_AddRef(i32* %52)
  %54 = load i64, i64* @S_OK, align 8
  store i64 %54, i64* %4, align 8
  br label %75

55:                                               ; preds = %42
  %56 = load %struct.proxy_manager*, %struct.proxy_manager** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @proxy_manager_find_ifproxy(%struct.proxy_manager* %56, i32 %57, %struct.ifproxy** %9)
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load %struct.ifproxy*, %struct.ifproxy** %9, align 8
  %64 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8**, i8*** %7, align 8
  store i8* %65, i8** %66, align 8
  %67 = load i8**, i8*** %7, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = call i32 @IUnknown_AddRef(i32* %69)
  %71 = load i64, i64* @S_OK, align 8
  store i64 %71, i64* %4, align 8
  br label %75

72:                                               ; preds = %55
  %73 = load i8**, i8*** %7, align 8
  store i8* null, i8** %73, align 8
  %74 = load i64, i64* @E_NOINTERFACE, align 8
  store i64 %74, i64* %4, align 8
  br label %75

75:                                               ; preds = %72, %62, %46, %33, %20
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local i64 @IsEqualIID(i32, i32*) #1

declare dso_local i32 @IMultiQI_AddRef(i32*) #1

declare dso_local i32 @IMarshal_AddRef(i32*) #1

declare dso_local i32 @IClientSecurity_AddRef(i32*) #1

declare dso_local i64 @proxy_manager_find_ifproxy(%struct.proxy_manager*, i32, %struct.ifproxy**) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
