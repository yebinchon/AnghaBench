; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_rpc.c_set_firewall.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_rpc.c_set_firewall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@set_firewall.testW = internal constant [12 x i8] c"rpcrt4_test\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i64 0, align 8
@COINIT_APARTMENTTHREADED = common dso_local global i32 0, align 4
@CLSID_NetFwMgr = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_INetFwMgr = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@CLSID_NetFwAuthorizedApplication = common dso_local global i32 0, align 4
@IID_INetFwAuthorizedApplication = common dso_local global i32 0, align 4
@APP_ADD = common dso_local global i32 0, align 4
@APP_REMOVE = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @set_firewall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_firewall(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = call i32 @SysAllocStringLen(i32* null, i32 %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = call i32 @GetModuleFileNameW(i32* null, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @SysFreeString(i32 %20)
  %22 = load i64, i64* @E_FAIL, align 8
  store i64 %22, i64* %2, align 8
  br label %171

23:                                               ; preds = %1
  %24 = load i32, i32* @COINIT_APARTMENTTHREADED, align 4
  %25 = call i64 @CoInitializeEx(i32 0, i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %27 = bitcast i32** %6 to i8**
  %28 = call i64 @CoCreateInstance(i32* @CLSID_NetFwMgr, i32* null, i32 %26, i32* @IID_INetFwMgr, i8** %27)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  br label %131

39:                                               ; preds = %23
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @INetFwMgr_get_LocalPolicy(i32* %40, i32** %7)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %131

52:                                               ; preds = %39
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @INetFwPolicy_get_CurrentProfile(i32* %53, i32** %8)
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %131

59:                                               ; preds = %52
  %60 = load i32*, i32** %8, align 8
  %61 = call i64 @INetFwProfile_get_AuthorizedApplications(i32* %60, i32** %10)
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @S_OK, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %66)
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @S_OK, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %131

72:                                               ; preds = %59
  %73 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %74 = bitcast i32** %9 to i8**
  %75 = call i64 @CoCreateInstance(i32* @CLSID_NetFwAuthorizedApplication, i32* null, i32 %73, i32* @IID_INetFwAuthorizedApplication, i8** %74)
  store i64 %75, i64* %4, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @S_OK, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %80)
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @S_OK, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %131

86:                                               ; preds = %72
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i64 @INetFwAuthorizedApplication_put_ProcessImageFileName(i32* %87, i32 %88)
  store i64 %89, i64* %4, align 8
  %90 = load i64, i64* %4, align 8
  %91 = load i64, i64* @S_OK, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %131

94:                                               ; preds = %86
  %95 = call i32 @SysAllocString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @set_firewall.testW, i64 0, i64 0))
  store i32 %95, i32* %11, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i64 @INetFwAuthorizedApplication_put_Name(i32* %96, i32 %97)
  store i64 %98, i64* %4, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @SysFreeString(i32 %99)
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* @S_OK, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i64, i64* %4, align 8
  %106 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %105)
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* @S_OK, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %94
  br label %131

111:                                              ; preds = %94
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @APP_ADD, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32*, i32** %10, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = call i64 @INetFwAuthorizedApplications_Add(i32* %116, i32* %117)
  store i64 %118, i64* %4, align 8
  br label %130

119:                                              ; preds = %111
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @APP_REMOVE, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i64 @INetFwAuthorizedApplications_Remove(i32* %124, i32 %125)
  store i64 %126, i64* %4, align 8
  br label %129

127:                                              ; preds = %119
  %128 = load i64, i64* @E_INVALIDARG, align 8
  store i64 %128, i64* %4, align 8
  br label %129

129:                                              ; preds = %127, %123
  br label %130

130:                                              ; preds = %129, %115
  br label %131

131:                                              ; preds = %130, %110, %93, %85, %71, %58, %51, %38
  %132 = load i32*, i32** %9, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32*, i32** %9, align 8
  %136 = call i32 @INetFwAuthorizedApplication_Release(i32* %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i32*, i32** %10, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32*, i32** %10, align 8
  %142 = call i32 @INetFwAuthorizedApplications_Release(i32* %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32*, i32** %7, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @INetFwPolicy_Release(i32* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32*, i32** %8, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @INetFwProfile_Release(i32* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32*, i32** %6, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32*, i32** %6, align 8
  %160 = call i32 @INetFwMgr_Release(i32* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i64, i64* %5, align 8
  %163 = call i64 @SUCCEEDED(i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = call i32 (...) @CoUninitialize()
  br label %167

167:                                              ; preds = %165, %161
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @SysFreeString(i32 %168)
  %170 = load i64, i64* %4, align 8
  store i64 %170, i64* %2, align 8
  br label %171

171:                                              ; preds = %167, %19
  %172 = load i64, i64* %2, align 8
  ret i64 %172
}

declare dso_local i32 @SysAllocStringLen(i32*, i32) #1

declare dso_local i32 @GetModuleFileNameW(i32*, i32, i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @CoInitializeEx(i32, i32) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @INetFwMgr_get_LocalPolicy(i32*, i32**) #1

declare dso_local i64 @INetFwPolicy_get_CurrentProfile(i32*, i32**) #1

declare dso_local i64 @INetFwProfile_get_AuthorizedApplications(i32*, i32**) #1

declare dso_local i64 @INetFwAuthorizedApplication_put_ProcessImageFileName(i32*, i32) #1

declare dso_local i32 @SysAllocString(i8*) #1

declare dso_local i64 @INetFwAuthorizedApplication_put_Name(i32*, i32) #1

declare dso_local i64 @INetFwAuthorizedApplications_Add(i32*, i32*) #1

declare dso_local i64 @INetFwAuthorizedApplications_Remove(i32*, i32) #1

declare dso_local i32 @INetFwAuthorizedApplication_Release(i32*) #1

declare dso_local i32 @INetFwAuthorizedApplications_Release(i32*) #1

declare dso_local i32 @INetFwPolicy_Release(i32*) #1

declare dso_local i32 @INetFwProfile_Release(i32*) #1

declare dso_local i32 @INetFwMgr_Release(i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @CoUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
