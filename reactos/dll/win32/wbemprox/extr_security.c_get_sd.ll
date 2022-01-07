; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_security.c_get_sd.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_security.c_get_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECURITY_MAX_SID_SIZE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@WinBuiltinAdministratorsSid = common dso_local global i32 0, align 4
@WinNetworkServiceSid = common dso_local global i32 0, align 4
@WinLocalServiceSid = common dso_local global i32 0, align 4
@WinAuthenticatedUserSid = common dso_local global i32 0, align 4
@ACL_REVISION = common dso_local global i32 0, align 4
@CONTAINER_INHERIT_ACE = common dso_local global i32 0, align 4
@INHERITED_ACE = common dso_local global i32 0, align 4
@ADS_RIGHT_DS_CREATE_CHILD = common dso_local global i32 0, align 4
@ADS_RIGHT_DS_DELETE_CHILD = common dso_local global i32 0, align 4
@ADS_RIGHT_ACTRL_DS_LIST = common dso_local global i32 0, align 4
@ADS_RIGHT_DS_SELF = common dso_local global i32 0, align 4
@ADS_RIGHT_DS_READ_PROP = common dso_local global i32 0, align 4
@ADS_RIGHT_DS_WRITE_PROP = common dso_local global i32 0, align 4
@READ_CONTROL = common dso_local global i32 0, align 4
@WRITE_DAC = common dso_local global i32 0, align 4
@SECURITY_DESCRIPTOR_REVISION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @get_sd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sd(i32** %0, i32* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  %19 = load i32, i32* @SECURITY_MAX_SID_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %5, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  store i32* %22, i32** %7, align 8
  %23 = load i32, i32* @SECURITY_MAX_SID_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  store i32* %25, i32** %9, align 8
  %26 = load i32, i32* @SECURITY_MAX_SID_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %10, align 8
  store i32* %28, i32** %11, align 8
  %29 = load i32, i32* @SECURITY_MAX_SID_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  store i32* %31, i32** %13, align 8
  %32 = load i32, i32* @SECURITY_MAX_SID_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 0, %33
  %35 = mul i64 4, %34
  %36 = add i64 4, %35
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %14, align 8
  store i32* %37, i32** %15, align 8
  %38 = load i32, i32* @S_OK, align 4
  store i32 %38, i32* %18, align 4
  %39 = mul nuw i64 4, %20
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* @WinBuiltinAdministratorsSid, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @CreateWellKnownSid(i32 %41, i32* null, i32* %42, i32* %16)
  %44 = mul nuw i64 4, %24
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* @WinNetworkServiceSid, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @CreateWellKnownSid(i32 %46, i32* null, i32* %47, i32* %16)
  %49 = mul nuw i64 4, %27
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* @WinLocalServiceSid, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @CreateWellKnownSid(i32 %51, i32* null, i32* %52, i32* %16)
  %54 = mul nuw i64 4, %30
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* @WinAuthenticatedUserSid, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @CreateWellKnownSid(i32 %56, i32* null, i32* %57, i32* %16)
  %59 = load i32*, i32** %15, align 8
  %60 = mul nuw i64 4, %36
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @ACL_REVISION, align 4
  %63 = call i32 @InitializeAcl(i32* %59, i32 %61, i32 %62)
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* @ACL_REVISION, align 4
  %66 = load i32, i32* @CONTAINER_INHERIT_ACE, align 4
  %67 = load i32, i32* @INHERITED_ACE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @ADS_RIGHT_DS_CREATE_CHILD, align 4
  %70 = load i32, i32* @ADS_RIGHT_DS_DELETE_CHILD, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @ADS_RIGHT_ACTRL_DS_LIST, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @ADS_RIGHT_DS_SELF, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @ADS_RIGHT_DS_READ_PROP, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @ADS_RIGHT_DS_WRITE_PROP, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @READ_CONTROL, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @WRITE_DAC, align 4
  %83 = or i32 %81, %82
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @AddAccessAllowedAceEx(i32* %64, i32 %65, i32 %68, i32 %83, i32* %84)
  %86 = load i32*, i32** %15, align 8
  %87 = load i32, i32* @ACL_REVISION, align 4
  %88 = load i32, i32* @CONTAINER_INHERIT_ACE, align 4
  %89 = load i32, i32* @INHERITED_ACE, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @ADS_RIGHT_DS_CREATE_CHILD, align 4
  %92 = load i32, i32* @ADS_RIGHT_DS_DELETE_CHILD, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @ADS_RIGHT_DS_READ_PROP, align 4
  %95 = or i32 %93, %94
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @AddAccessAllowedAceEx(i32* %86, i32 %87, i32 %90, i32 %95, i32* %96)
  %98 = load i32*, i32** %15, align 8
  %99 = load i32, i32* @ACL_REVISION, align 4
  %100 = load i32, i32* @CONTAINER_INHERIT_ACE, align 4
  %101 = load i32, i32* @INHERITED_ACE, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @ADS_RIGHT_DS_CREATE_CHILD, align 4
  %104 = load i32, i32* @ADS_RIGHT_DS_DELETE_CHILD, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @ADS_RIGHT_DS_READ_PROP, align 4
  %107 = or i32 %105, %106
  %108 = load i32*, i32** %11, align 8
  %109 = call i32 @AddAccessAllowedAceEx(i32* %98, i32 %99, i32 %102, i32 %107, i32* %108)
  %110 = load i32*, i32** %15, align 8
  %111 = load i32, i32* @ACL_REVISION, align 4
  %112 = load i32, i32* @CONTAINER_INHERIT_ACE, align 4
  %113 = load i32, i32* @INHERITED_ACE, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @ADS_RIGHT_DS_CREATE_CHILD, align 4
  %116 = load i32, i32* @ADS_RIGHT_DS_DELETE_CHILD, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @ADS_RIGHT_DS_READ_PROP, align 4
  %119 = or i32 %117, %118
  %120 = load i32*, i32** %13, align 8
  %121 = call i32 @AddAccessAllowedAceEx(i32* %110, i32 %111, i32 %114, i32 %119, i32* %120)
  %122 = load i32, i32* @SECURITY_DESCRIPTOR_REVISION, align 4
  %123 = call i32 @InitializeSecurityDescriptor(i32* %17, i32 %122)
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* @TRUE, align 4
  %126 = call i32 @SetSecurityDescriptorOwner(i32* %17, i32* %124, i32 %125)
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* @TRUE, align 4
  %129 = call i32 @SetSecurityDescriptorGroup(i32* %17, i32* %127, i32 %128)
  %130 = load i32, i32* @TRUE, align 4
  %131 = load i32*, i32** %15, align 8
  %132 = load i32, i32* @TRUE, align 4
  %133 = call i32 @SetSecurityDescriptorDacl(i32* %17, i32 %130, i32* %131, i32 %132)
  %134 = call i32 @GetSecurityDescriptorLength(i32* %17)
  %135 = load i32*, i32** %4, align 8
  store i32 %134, i32* %135, align 4
  %136 = call i32 (...) @GetProcessHeap()
  %137 = load i32*, i32** %4, align 8
  %138 = load i32, i32* %137, align 4
  %139 = call i32* @HeapAlloc(i32 %136, i32 0, i32 %138)
  %140 = load i32**, i32*** %3, align 8
  store i32* %139, i32** %140, align 8
  %141 = load i32**, i32*** %3, align 8
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %2
  %145 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %145, i32* %18, align 4
  br label %146

146:                                              ; preds = %144, %2
  %147 = load i32, i32* %18, align 4
  %148 = call i64 @SUCCEEDED(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %146
  %151 = load i32**, i32*** %3, align 8
  %152 = load i32*, i32** %151, align 8
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @MakeSelfRelativeSD(i32* %17, i32* %152, i32* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %150
  %157 = call i32 (...) @GetProcessHeap()
  %158 = load i32**, i32*** %3, align 8
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @HeapFree(i32 %157, i32 0, i32* %159)
  %161 = load i32**, i32*** %3, align 8
  store i32* null, i32** %161, align 8
  %162 = load i32, i32* @E_FAIL, align 4
  store i32 %162, i32* %18, align 4
  br label %163

163:                                              ; preds = %156, %150
  br label %164

164:                                              ; preds = %163, %146
  %165 = load i32, i32* %18, align 4
  %166 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %166)
  ret i32 %165
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CreateWellKnownSid(i32, i32*, i32*, i32*) #2

declare dso_local i32 @InitializeAcl(i32*, i32, i32) #2

declare dso_local i32 @AddAccessAllowedAceEx(i32*, i32, i32, i32, i32*) #2

declare dso_local i32 @InitializeSecurityDescriptor(i32*, i32) #2

declare dso_local i32 @SetSecurityDescriptorOwner(i32*, i32*, i32) #2

declare dso_local i32 @SetSecurityDescriptorGroup(i32*, i32*, i32) #2

declare dso_local i32 @SetSecurityDescriptorDacl(i32*, i32, i32*, i32) #2

declare dso_local i32 @GetSecurityDescriptorLength(i32*) #2

declare dso_local i32* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @SUCCEEDED(i32) #2

declare dso_local i32 @MakeSelfRelativeSD(i32*, i32*, i32*) #2

declare dso_local i32 @HeapFree(i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
