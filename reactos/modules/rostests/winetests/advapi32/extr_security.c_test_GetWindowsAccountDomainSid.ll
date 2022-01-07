; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_GetWindowsAccountDomainSid.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_GetWindowsAccountDomainSid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32************ }

@SECURITY_MAX_SID_SIZE = common dso_local global i32 0, align 4
@SECURITY_NT_AUTHORITY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TOKEN_READ = common dso_local global i32 0, align 4
@ERROR_NO_TOKEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to get current user token\0A\00", align 1
@TokenUser = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"GetTokenInformation(TokenUser) failed with error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"GetWindowsAccountDomainSid succeeded\0A\00", align 1
@ERROR_INVALID_SID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"expected ERROR_INVALID_SID, got %d\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"expected ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"expected size %d, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"expected ERROR_INSUFFICIENT_BUFFER, got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"GetWindowsAccountDomainSid failed with error %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"unexpected domain sid %s != %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetWindowsAccountDomainSid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetWindowsAccountDomainSid() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i32********, align 8
  %7 = alloca i32********, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32********, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i32, i32* @SECURITY_MAX_SID_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %2, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %3, align 8
  %18 = load i32, i32* @SECURITY_MAX_SID_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %22 = load i32, i32* @SECURITY_NT_AUTHORITY, align 4
  store i32 %22, i32* %21, align 4
  %23 = bitcast i8* %17 to i32*********
  %24 = bitcast i32********* %23 to i32********
  store i32******** %24, i32********* %6, align 8
  %25 = bitcast i8* %20 to i32*********
  %26 = bitcast i32********* %25 to i32********
  store i32******** %26, i32********* %7, align 8
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %11, align 4
  %28 = call i32 (...) @GetCurrentThread()
  %29 = load i32, i32* @TOKEN_READ, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @OpenThreadToken(i32 %28, i32 %29, i32 %30, i32* %10)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %0
  %34 = call i32 (...) @GetLastError()
  %35 = load i32, i32* @ERROR_NO_TOKEN, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %11, align 4
  br label %47

39:                                               ; preds = %33
  %40 = call i32 (...) @GetCurrentProcess()
  %41 = load i32, i32* @TOKEN_READ, align 4
  %42 = call i32 @OpenProcessToken(i32 %40, i32 %41, i32* %10)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %44, %39
  br label %47

47:                                               ; preds = %46, %37
  br label %48

48:                                               ; preds = %47, %0
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = call i32 @win_skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %215

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @TokenUser, align 4
  %56 = call i32 @GetTokenInformation(i32 %54, i32 %55, i8* null, i32 0, i32* %8)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = call i32 (...) @GetLastError()
  %61 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %62 = icmp eq i32 %60, %61
  br label %63

63:                                               ; preds = %59, %53
  %64 = phi i1 [ false, %53 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 (...) @GetLastError()
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = call i32 (...) @GetProcessHeap()
  %69 = load i32, i32* %8, align 4
  %70 = call i8* @HeapAlloc(i32 %68, i32 0, i32 %69)
  store i8* %70, i8** %1, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @TokenUser, align 4
  %73 = load i8*, i8** %1, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @GetTokenInformation(i32 %71, i32 %72, i8* %73, i32 %74, i32* %8)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 (...) @GetLastError()
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @CloseHandle(i32 %79)
  %81 = load i8*, i8** %1, align 8
  %82 = bitcast i8* %81 to %struct.TYPE_6__*
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32************, i32************* %84, align 8
  %86 = bitcast i32************ %85 to i32********
  store i32******** %86, i32********* %9, align 8
  %87 = call i32 @SetLastError(i32 -559038737)
  %88 = call i32 @pGetWindowsAccountDomainSid(i32******** null, i32******** null, i32* null)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %94 = call i32 (...) @GetLastError()
  %95 = load i32, i32* @ERROR_INVALID_SID, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 (...) @GetLastError()
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = call i32 @SetLastError(i32 -559038737)
  %101 = load i32********, i32********* %9, align 8
  %102 = call i32 @pGetWindowsAccountDomainSid(i32******** %101, i32******** null, i32* null)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %108 = call i32 (...) @GetLastError()
  %109 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 (...) @GetLastError()
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @SECURITY_MAX_SID_SIZE, align 4
  store i32 %114, i32* %8, align 4
  %115 = call i32 @SetLastError(i32 -559038737)
  %116 = load i32********, i32********* %9, align 8
  %117 = call i32 @pGetWindowsAccountDomainSid(i32******** %116, i32******** null, i32* %8)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %123 = call i32 (...) @GetLastError()
  %124 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %125 = icmp eq i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 (...) @GetLastError()
  %128 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @GetSidLengthRequired(i32 4)
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @GetSidLengthRequired(i32 4)
  %134 = load i32, i32* %8, align 4
  %135 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %133, i32 %134)
  %136 = call i32 @SetLastError(i32 -559038737)
  %137 = load i32********, i32********* %9, align 8
  %138 = load i32********, i32********* %6, align 8
  %139 = call i32 @pGetWindowsAccountDomainSid(i32******** %137, i32******** %138, i32* null)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %145 = call i32 (...) @GetLastError()
  %146 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 (...) @GetLastError()
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  store i32 1, i32* %8, align 4
  %151 = call i32 @SetLastError(i32 -559038737)
  %152 = load i32********, i32********* %9, align 8
  %153 = load i32********, i32********* %6, align 8
  %154 = call i32 @pGetWindowsAccountDomainSid(i32******** %152, i32******** %153, i32* %8)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %160 = call i32 (...) @GetLastError()
  %161 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %162 = icmp eq i32 %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 (...) @GetLastError()
  %165 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @GetSidLengthRequired(i32 4)
  %168 = icmp eq i32 %166, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @GetSidLengthRequired(i32 4)
  %171 = load i32, i32* %8, align 4
  %172 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %170, i32 %171)
  %173 = load i32, i32* @SECURITY_MAX_SID_SIZE, align 4
  store i32 %173, i32* %8, align 4
  %174 = load i32********, i32********* %9, align 8
  %175 = load i32********, i32********* %6, align 8
  %176 = call i32 @pGetWindowsAccountDomainSid(i32******** %174, i32******** %175, i32* %8)
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = call i32 (...) @GetLastError()
  %179 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @GetSidLengthRequired(i32 4)
  %182 = icmp eq i32 %180, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 @GetSidLengthRequired(i32 4)
  %185 = load i32, i32* %8, align 4
  %186 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %184, i32 %185)
  %187 = load i32********, i32********* %7, align 8
  %188 = call i32 @InitializeSid(i32******** %187, %struct.TYPE_7__* %5, i32 4)
  store i32 0, i32* %12, align 4
  br label %189

189:                                              ; preds = %200, %63
  %190 = load i32, i32* %12, align 4
  %191 = icmp slt i32 %190, 4
  br i1 %191, label %192, label %203

192:                                              ; preds = %189
  %193 = load i32********, i32********* %9, align 8
  %194 = load i32, i32* %12, align 4
  %195 = call i32* @GetSidSubAuthority(i32******** %193, i32 %194)
  %196 = load i32, i32* %195, align 4
  %197 = load i32********, i32********* %7, align 8
  %198 = load i32, i32* %12, align 4
  %199 = call i32* @GetSidSubAuthority(i32******** %197, i32 %198)
  store i32 %196, i32* %199, align 4
  br label %200

200:                                              ; preds = %192
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %12, align 4
  br label %189

203:                                              ; preds = %189
  %204 = load i32********, i32********* %6, align 8
  %205 = load i32********, i32********* %7, align 8
  %206 = call i32 @EqualSid(i32******** %204, i32******** %205)
  %207 = load i32********, i32********* %6, align 8
  %208 = call i32 @debugstr_sid(i32******** %207)
  %209 = load i32********, i32********* %7, align 8
  %210 = call i32 @debugstr_sid(i32******** %209)
  %211 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %208, i32 %210)
  %212 = call i32 (...) @GetProcessHeap()
  %213 = load i8*, i8** %1, align 8
  %214 = call i32 @HeapFree(i32 %212, i32 0, i8* %213)
  store i32 0, i32* %13, align 4
  br label %215

215:                                              ; preds = %203, %51
  %216 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %216)
  %217 = load i32, i32* %13, align 4
  switch i32 %217, label %219 [
    i32 0, label %218
    i32 1, label %218
  ]

218:                                              ; preds = %215, %215
  ret void

219:                                              ; preds = %215
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OpenThreadToken(i32, i32, i32, i32*) #2

declare dso_local i32 @GetCurrentThread(...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @OpenProcessToken(i32, i32, i32*) #2

declare dso_local i32 @GetCurrentProcess(...) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @GetTokenInformation(i32, i32, i8*, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i8* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @CloseHandle(i32) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @pGetWindowsAccountDomainSid(i32********, i32********, i32*) #2

declare dso_local i32 @GetSidLengthRequired(i32) #2

declare dso_local i32 @InitializeSid(i32********, %struct.TYPE_7__*, i32) #2

declare dso_local i32* @GetSidSubAuthority(i32********, i32) #2

declare dso_local i32 @EqualSid(i32********, i32********) #2

declare dso_local i32 @debugstr_sid(i32********) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
