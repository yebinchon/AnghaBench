; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_security.c_LsapCreateAccountSd.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_security.c_LsapCreateAccountSd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@SECURITY_DESCRIPTOR_REVISION = common dso_local global i32 0, align 4
@NtAuthority = common dso_local global i32 0, align 4
@SECURITY_BUILTIN_DOMAIN_RID = common dso_local global i32 0, align 4
@DOMAIN_ALIAS_RID_ADMINS = common dso_local global i32 0, align 4
@WorldSidAuthority = common dso_local global i32 0, align 4
@SECURITY_WORLD_RID = common dso_local global i32 0, align 4
@SECURITY_LOCAL_SYSTEM_RID = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@ACL_REVISION = common dso_local global i32 0, align 4
@ACCOUNT_ALL_ACCESS = common dso_local global i32 0, align 4
@ACCOUNT_EXECUTE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STATUS_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LsapCreateAccountSd(i32** %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %15 = load i32**, i32*** %4, align 8
  %16 = icmp eq i32** %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %2
  %21 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  store i64 %21, i64* %3, align 8
  br label %198

22:                                               ; preds = %17
  %23 = load i32**, i32*** %4, align 8
  store i32* null, i32** %23, align 8
  %24 = load i32*, i32** %5, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* @SECURITY_DESCRIPTOR_REVISION, align 4
  %26 = call i64 @RtlCreateSecurityDescriptor(i32* %6, i32 %25)
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = call i32 @NT_SUCCESS(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = load i64, i64* %14, align 8
  store i64 %31, i64* %3, align 8
  br label %198

32:                                               ; preds = %22
  %33 = load i32, i32* @SECURITY_BUILTIN_DOMAIN_RID, align 4
  %34 = load i32, i32* @DOMAIN_ALIAS_RID_ADMINS, align 4
  %35 = call i64 @RtlAllocateAndInitializeSid(i32* @NtAuthority, i32 2, i32 %33, i32 %34, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32** %9)
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = call i32 @NT_SUCCESS(i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %156

40:                                               ; preds = %32
  %41 = load i32, i32* @SECURITY_WORLD_RID, align 4
  %42 = call i64 @RtlAllocateAndInitializeSid(i32* @WorldSidAuthority, i32 1, i32 %41, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32** %10)
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @NT_SUCCESS(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %156

47:                                               ; preds = %40
  %48 = load i32, i32* @SECURITY_LOCAL_SYSTEM_RID, align 4
  %49 = call i64 @RtlAllocateAndInitializeSid(i32* @NtAuthority, i32 1, i32 %48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32** %11)
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call i32 @NT_SUCCESS(i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %156

54:                                               ; preds = %47
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @RtlLengthSid(i32* %55)
  %57 = sext i32 %56 to i64
  %58 = add i64 4, %57
  %59 = add i64 %58, 4
  %60 = sub i64 %59, 4
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @RtlLengthSid(i32* %61)
  %63 = sext i32 %62 to i64
  %64 = add i64 %60, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %13, align 4
  %66 = call i32 (...) @RtlGetProcessHeap()
  %67 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32* @RtlAllocateHeap(i32 %66, i32 %67, i32 %68)
  store i32* %69, i32** %12, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %54
  %73 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %73, i64* %14, align 8
  br label %156

74:                                               ; preds = %54
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @ACL_REVISION, align 4
  %78 = call i64 @RtlCreateAcl(i32* %75, i32 %76, i32 %77)
  store i64 %78, i64* %14, align 8
  %79 = load i64, i64* %14, align 8
  %80 = call i32 @NT_SUCCESS(i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %74
  br label %156

83:                                               ; preds = %74
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* @ACL_REVISION, align 4
  %86 = load i32, i32* @ACCOUNT_ALL_ACCESS, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = call i64 @RtlAddAccessAllowedAce(i32* %84, i32 %85, i32 %86, i32* %87)
  store i64 %88, i64* %14, align 8
  %89 = load i64, i64* %14, align 8
  %90 = call i32 @NT_SUCCESS(i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %83
  br label %156

93:                                               ; preds = %83
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* @ACL_REVISION, align 4
  %96 = load i32, i32* @ACCOUNT_EXECUTE, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = call i64 @RtlAddAccessAllowedAce(i32* %94, i32 %95, i32 %96, i32* %97)
  store i64 %98, i64* %14, align 8
  %99 = load i64, i64* %14, align 8
  %100 = call i32 @NT_SUCCESS(i64 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %93
  br label %156

103:                                              ; preds = %93
  %104 = load i32, i32* @TRUE, align 4
  %105 = load i32*, i32** %12, align 8
  %106 = load i32, i32* @FALSE, align 4
  %107 = call i64 @RtlSetDaclSecurityDescriptor(i32* %6, i32 %104, i32* %105, i32 %106)
  store i64 %107, i64* %14, align 8
  %108 = load i64, i64* %14, align 8
  %109 = call i32 @NT_SUCCESS(i64 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %103
  br label %156

112:                                              ; preds = %103
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* @FALSE, align 4
  %115 = call i64 @RtlSetGroupSecurityDescriptor(i32* %6, i32* %113, i32 %114)
  store i64 %115, i64* %14, align 8
  %116 = load i64, i64* %14, align 8
  %117 = call i32 @NT_SUCCESS(i64 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %112
  br label %156

120:                                              ; preds = %112
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* @FALSE, align 4
  %123 = call i64 @RtlSetOwnerSecurityDescriptor(i32* %6, i32* %121, i32 %122)
  store i64 %123, i64* %14, align 8
  %124 = load i64, i64* %14, align 8
  %125 = call i32 @NT_SUCCESS(i64 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  br label %156

128:                                              ; preds = %120
  %129 = load i32*, i32** %7, align 8
  %130 = call i64 @RtlAbsoluteToSelfRelativeSD(i32* %6, i32* %129, i32* %8)
  store i64 %130, i64* %14, align 8
  %131 = load i64, i64* %14, align 8
  %132 = load i64, i64* @STATUS_BUFFER_TOO_SMALL, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %156

135:                                              ; preds = %128
  %136 = call i32 (...) @RtlGetProcessHeap()
  %137 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32* @RtlAllocateHeap(i32 %136, i32 %137, i32 %138)
  store i32* %139, i32** %7, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %143, i64* %14, align 8
  br label %156

144:                                              ; preds = %135
  %145 = load i32*, i32** %7, align 8
  %146 = call i64 @RtlAbsoluteToSelfRelativeSD(i32* %6, i32* %145, i32* %8)
  store i64 %146, i64* %14, align 8
  %147 = load i64, i64* %14, align 8
  %148 = call i32 @NT_SUCCESS(i64 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %144
  br label %156

151:                                              ; preds = %144
  %152 = load i32*, i32** %7, align 8
  %153 = load i32**, i32*** %4, align 8
  store i32* %152, i32** %153, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i32*, i32** %5, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %151, %150, %142, %134, %127, %119, %111, %102, %92, %82, %72, %53, %46, %39
  %157 = load i32*, i32** %12, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = call i32 (...) @RtlGetProcessHeap()
  %161 = load i32*, i32** %12, align 8
  %162 = call i32 @RtlFreeHeap(i32 %160, i32 0, i32* %161)
  br label %163

163:                                              ; preds = %159, %156
  %164 = load i32*, i32** %9, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = call i32 (...) @RtlGetProcessHeap()
  %168 = load i32*, i32** %9, align 8
  %169 = call i32 @RtlFreeHeap(i32 %167, i32 0, i32* %168)
  br label %170

170:                                              ; preds = %166, %163
  %171 = load i32*, i32** %10, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = call i32 (...) @RtlGetProcessHeap()
  %175 = load i32*, i32** %10, align 8
  %176 = call i32 @RtlFreeHeap(i32 %174, i32 0, i32* %175)
  br label %177

177:                                              ; preds = %173, %170
  %178 = load i32*, i32** %11, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = call i32 (...) @RtlGetProcessHeap()
  %182 = load i32*, i32** %11, align 8
  %183 = call i32 @RtlFreeHeap(i32 %181, i32 0, i32* %182)
  br label %184

184:                                              ; preds = %180, %177
  %185 = load i64, i64* %14, align 8
  %186 = call i32 @NT_SUCCESS(i64 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %196, label %188

188:                                              ; preds = %184
  %189 = load i32*, i32** %7, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = call i32 (...) @RtlGetProcessHeap()
  %193 = load i32*, i32** %7, align 8
  %194 = call i32 @RtlFreeHeap(i32 %192, i32 0, i32* %193)
  br label %195

195:                                              ; preds = %191, %188
  br label %196

196:                                              ; preds = %195, %184
  %197 = load i64, i64* %14, align 8
  store i64 %197, i64* %3, align 8
  br label %198

198:                                              ; preds = %196, %30, %20
  %199 = load i64, i64* %3, align 8
  ret i64 %199
}

declare dso_local i64 @RtlCreateSecurityDescriptor(i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i64 @RtlAllocateAndInitializeSid(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @RtlLengthSid(i32*) #1

declare dso_local i32* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i64 @RtlCreateAcl(i32*, i32, i32) #1

declare dso_local i64 @RtlAddAccessAllowedAce(i32*, i32, i32, i32*) #1

declare dso_local i64 @RtlSetDaclSecurityDescriptor(i32*, i32, i32*, i32) #1

declare dso_local i64 @RtlSetGroupSecurityDescriptor(i32*, i32*, i32) #1

declare dso_local i64 @RtlSetOwnerSecurityDescriptor(i32*, i32*, i32) #1

declare dso_local i64 @RtlAbsoluteToSelfRelativeSD(i32*, i32*, i32*) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
