; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wmiutils/extr_path.c_test_IWbemPath_GetInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wmiutils/extr_path.c_test_IWbemPath_GetInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WBEM_E_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@WBEMPATH_INFO_ANON_LOCAL_MACHINE = common dso_local global i32 0, align 4
@WBEMPATH_INFO_SERVER_NAMESPACE_ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@WBEMPATH_CREATE_ACCEPT_ALL = common dso_local global i32 0, align 4
@path17 = common dso_local global i32 0, align 4
@WBEMPATH_INFO_IS_INST_REF = common dso_local global i32 0, align 4
@WBEMPATH_INFO_HAS_SUBSCOPES = common dso_local global i32 0, align 4
@WBEMPATH_INFO_V2_COMPLIANT = common dso_local global i32 0, align 4
@WBEMPATH_INFO_CIM_COMPLIANT = common dso_local global i32 0, align 4
@WBEMPATH_INFO_PATH_HAD_SERVER = common dso_local global i32 0, align 4
@path12 = common dso_local global i32 0, align 4
@WBEMPATH_INFO_IS_CLASS_REF = common dso_local global i32 0, align 4
@path1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IWbemPath_GetInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IWbemPath_GetInfo() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i32* (...) @create_path()
  store i32* %4, i32** %1, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %160

7:                                                ; preds = %0
  %8 = load i32*, i32** %1, align 8
  %9 = call i64 @IWbemPath_GetInfo(i32* %8, i32 0, i32* null)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @WBEM_E_INVALID_PARAMETER, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i64 @IWbemPath_GetInfo(i32* %16, i32 1, i32* null)
  store i64 %17, i64* %2, align 8
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @WBEM_E_INVALID_PARAMETER, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %2, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %22)
  store i32 -559038737, i32* %3, align 4
  %24 = load i32*, i32** %1, align 8
  %25 = call i64 @IWbemPath_GetInfo(i32* %24, i32 0, i32* %3)
  store i64 %25, i64* %2, align 8
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %2, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @WBEMPATH_INFO_ANON_LOCAL_MACHINE, align 4
  %34 = load i32, i32* @WBEMPATH_INFO_SERVER_NAMESPACE_ONLY, align 4
  %35 = or i32 %33, %34
  %36 = icmp eq i32 %32, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @wine_dbgstr_longlong(i32 %38)
  %40 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* @WBEMPATH_CREATE_ACCEPT_ALL, align 4
  %43 = load i32, i32* @path17, align 4
  %44 = call i64 @IWbemPath_SetText(i32* %41, i32 %42, i32 %43)
  store i64 %44, i64* %2, align 8
  %45 = load i64, i64* %2, align 8
  %46 = load i64, i64* @S_OK, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %2, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i64 @IWbemPath_GetInfo(i32* %51, i32 0, i32* null)
  store i64 %52, i64* %2, align 8
  %53 = load i64, i64* %2, align 8
  %54 = load i64, i64* @WBEM_E_INVALID_PARAMETER, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %2, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i32*, i32** %1, align 8
  %60 = call i64 @IWbemPath_GetInfo(i32* %59, i32 1, i32* null)
  store i64 %60, i64* %2, align 8
  %61 = load i64, i64* %2, align 8
  %62 = load i64, i64* @WBEM_E_INVALID_PARAMETER, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %2, align 8
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %65)
  store i32 -559038737, i32* %3, align 4
  %67 = load i32*, i32** %1, align 8
  %68 = call i64 @IWbemPath_GetInfo(i32* %67, i32 0, i32* %3)
  store i64 %68, i64* %2, align 8
  %69 = load i64, i64* %2, align 8
  %70 = load i64, i64* @S_OK, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %2, align 8
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %73)
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @WBEMPATH_INFO_ANON_LOCAL_MACHINE, align 4
  %77 = load i32, i32* @WBEMPATH_INFO_IS_INST_REF, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @WBEMPATH_INFO_HAS_SUBSCOPES, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @WBEMPATH_INFO_V2_COMPLIANT, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @WBEMPATH_INFO_CIM_COMPLIANT, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @WBEMPATH_INFO_PATH_HAD_SERVER, align 4
  %86 = or i32 %84, %85
  %87 = icmp eq i32 %75, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %3, align 4
  %90 = call i64 @wine_dbgstr_longlong(i32 %89)
  %91 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %90)
  %92 = load i32*, i32** %1, align 8
  %93 = call i32 @IWbemPath_Release(i32* %92)
  %94 = call i32* (...) @create_path()
  store i32* %94, i32** %1, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %7
  br label %160

97:                                               ; preds = %7
  %98 = load i32*, i32** %1, align 8
  %99 = load i32, i32* @WBEMPATH_CREATE_ACCEPT_ALL, align 4
  %100 = load i32, i32* @path12, align 4
  %101 = call i64 @IWbemPath_SetText(i32* %98, i32 %99, i32 %100)
  store i64 %101, i64* %2, align 8
  %102 = load i64, i64* %2, align 8
  %103 = load i64, i64* @S_OK, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i64, i64* %2, align 8
  %107 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %106)
  store i32 -559038737, i32* %3, align 4
  %108 = load i32*, i32** %1, align 8
  %109 = call i64 @IWbemPath_GetInfo(i32* %108, i32 0, i32* %3)
  store i64 %109, i64* %2, align 8
  %110 = load i64, i64* %2, align 8
  %111 = load i64, i64* @S_OK, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i64, i64* %2, align 8
  %115 = call i32 @ok(i32 %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %114)
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @WBEMPATH_INFO_ANON_LOCAL_MACHINE, align 4
  %118 = load i32, i32* @WBEMPATH_INFO_IS_CLASS_REF, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @WBEMPATH_INFO_HAS_SUBSCOPES, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @WBEMPATH_INFO_V2_COMPLIANT, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @WBEMPATH_INFO_CIM_COMPLIANT, align 4
  %125 = or i32 %123, %124
  %126 = icmp eq i32 %116, %125
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %3, align 4
  %129 = call i64 @wine_dbgstr_longlong(i32 %128)
  %130 = call i32 @ok(i32 %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %129)
  %131 = load i32*, i32** %1, align 8
  %132 = load i32, i32* @WBEMPATH_CREATE_ACCEPT_ALL, align 4
  %133 = load i32, i32* @path1, align 4
  %134 = call i64 @IWbemPath_SetText(i32* %131, i32 %132, i32 %133)
  store i64 %134, i64* %2, align 8
  %135 = load i64, i64* %2, align 8
  %136 = load i64, i64* @S_OK, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = load i64, i64* %2, align 8
  %140 = call i32 @ok(i32 %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %139)
  store i32 -559038737, i32* %3, align 4
  %141 = load i32*, i32** %1, align 8
  %142 = call i64 @IWbemPath_GetInfo(i32* %141, i32 0, i32* %3)
  store i64 %142, i64* %2, align 8
  %143 = load i64, i64* %2, align 8
  %144 = load i64, i64* @S_OK, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i64, i64* %2, align 8
  %148 = call i32 @ok(i32 %146, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %147)
  %149 = load i32, i32* %3, align 4
  %150 = load i32, i32* @WBEMPATH_INFO_ANON_LOCAL_MACHINE, align 4
  %151 = load i32, i32* @WBEMPATH_INFO_SERVER_NAMESPACE_ONLY, align 4
  %152 = or i32 %150, %151
  %153 = icmp eq i32 %149, %152
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %3, align 4
  %156 = call i64 @wine_dbgstr_longlong(i32 %155)
  %157 = call i32 @ok(i32 %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %156)
  %158 = load i32*, i32** %1, align 8
  %159 = call i32 @IWbemPath_Release(i32* %158)
  br label %160

160:                                              ; preds = %97, %96, %6
  ret void
}

declare dso_local i32* @create_path(...) #1

declare dso_local i64 @IWbemPath_GetInfo(i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @wine_dbgstr_longlong(i32) #1

declare dso_local i64 @IWbemPath_SetText(i32*, i32, i32) #1

declare dso_local i32 @IWbemPath_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
