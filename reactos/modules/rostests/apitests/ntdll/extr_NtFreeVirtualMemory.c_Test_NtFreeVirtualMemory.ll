; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtFreeVirtualMemory.c_Test_NtFreeVirtualMemory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_NtFreeVirtualMemory.c_Test_NtFreeVirtualMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@MEM_RESERVE = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"NtAllocateVirtualMemory failed : 0x%08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Length mismatch : 0x%08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"The buffer is not aligned to PAGE_SIZE.\0A\00", align 1
@MEM_DECOMMIT = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"NtFreeVirtualMemory failed : 0x%08lx\0A\00", align 1
@STATUS_UNABLE_TO_FREE_VM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"NtFreeVirtualMemory returned status : 0x%08lx\0A\00", align 1
@MEM_RELEASE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"NtFreeVirtualMemory set wrong buffer.\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"NtFreeVirtualMemory did not round Length to PAGE_SIZE.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_NtFreeVirtualMemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_NtFreeVirtualMemory() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %5 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @NtCurrentProcess()
  %7 = load i32, i32* @MEM_RESERVE, align 4
  %8 = load i32, i32* @PAGE_READWRITE, align 4
  %9 = call i64 @NtAllocateVirtualMemory(i32 %6, i64* %1, i32 0, i32* %3, i32 %7, i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @NT_SUCCESS(i64 %10)
  %12 = load i64, i64* %4, align 8
  %13 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %3, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* %1, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = srem i32 %21, %22
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 (...) @NtCurrentProcess()
  %28 = load i32, i32* @MEM_DECOMMIT, align 4
  %29 = call i64 @NtFreeVirtualMemory(i32 %27, i64* %1, i32* %3, i32 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @STATUS_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %4, align 8
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  %38 = call i32 (...) @NtCurrentProcess()
  %39 = load i32, i32* @MEM_DECOMMIT, align 4
  %40 = call i64 @NtFreeVirtualMemory(i32 %38, i64* %1, i32* %3, i32 %39)
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @STATUS_UNABLE_TO_FREE_VM, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %4, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %45)
  %47 = call i32 (...) @NtCurrentProcess()
  %48 = load i32, i32* @MEM_RELEASE, align 4
  %49 = call i64 @NtFreeVirtualMemory(i32 %47, i64* %1, i32* %3, i32 %48)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @STATUS_UNABLE_TO_FREE_VM, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %4, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %56, i32* %3, align 4
  %57 = load i64, i64* %1, align 8
  %58 = trunc i64 %57 to i32
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %2, align 8
  %61 = call i32 (...) @NtCurrentProcess()
  %62 = load i32, i32* @MEM_DECOMMIT, align 4
  %63 = call i64 @NtFreeVirtualMemory(i32 %61, i64* %2, i32* %3, i32 %62)
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @STATUS_UNABLE_TO_FREE_VM, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %4, align 8
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %68)
  %70 = load i64, i64* %1, align 8
  %71 = trunc i64 %70 to i32
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %2, align 8
  %74 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %74, i32* %3, align 4
  %75 = call i32 (...) @NtCurrentProcess()
  %76 = load i32, i32* @MEM_RELEASE, align 4
  %77 = call i64 @NtFreeVirtualMemory(i32 %75, i64* %2, i32* %3, i32 %76)
  store i64 %77, i64* %4, align 8
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* @STATUS_UNABLE_TO_FREE_VM, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %4, align 8
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %82)
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  %86 = load i64, i64* %1, align 8
  %87 = trunc i64 %86 to i32
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %2, align 8
  %90 = call i32 (...) @NtCurrentProcess()
  %91 = load i32, i32* @MEM_DECOMMIT, align 4
  %92 = call i64 @NtFreeVirtualMemory(i32 %90, i64* %2, i32* %3, i32 %91)
  store i64 %92, i64* %4, align 8
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* @STATUS_SUCCESS, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i64, i64* %4, align 8
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %97)
  %99 = load i64, i64* %2, align 8
  %100 = load i64, i64* %1, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i64, i64* %1, align 8
  %110 = trunc i64 %109 to i32
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %2, align 8
  %113 = load i32, i32* @PAGE_SIZE, align 4
  %114 = sub nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  %115 = call i32 (...) @NtCurrentProcess()
  %116 = load i32, i32* @MEM_RELEASE, align 4
  %117 = call i64 @NtFreeVirtualMemory(i32 %115, i64* %2, i32* %3, i32 %116)
  store i64 %117, i64* %4, align 8
  %118 = load i64, i64* %4, align 8
  %119 = load i64, i64* @STATUS_SUCCESS, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i64, i64* %4, align 8
  %123 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %122)
  %124 = load i64, i64* %2, align 8
  %125 = load i64, i64* %1, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @PAGE_SIZE, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %134 = load i32, i32* @PAGE_SIZE, align 4
  %135 = mul nsw i32 2, %134
  store i32 %135, i32* %3, align 4
  %136 = call i32 (...) @NtCurrentProcess()
  %137 = load i32, i32* @MEM_RESERVE, align 4
  %138 = load i32, i32* @PAGE_READWRITE, align 4
  %139 = call i64 @NtAllocateVirtualMemory(i32 %136, i64* %1, i32 0, i32* %3, i32 %137, i32 %138)
  store i64 %139, i64* %4, align 8
  %140 = load i64, i64* %4, align 8
  %141 = call i32 @NT_SUCCESS(i64 %140)
  %142 = load i64, i64* %4, align 8
  %143 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %142)
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* @PAGE_SIZE, align 4
  %146 = mul nsw i32 2, %145
  %147 = icmp eq i32 %144, %146
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %3, align 4
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  %151 = load i64, i64* %1, align 8
  %152 = trunc i64 %151 to i32
  %153 = load i32, i32* @PAGE_SIZE, align 4
  %154 = srem i32 %152, %153
  %155 = icmp eq i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %158 = load i64, i64* %1, align 8
  store i64 %158, i64* %2, align 8
  %159 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %159, i32* %3, align 4
  %160 = call i32 (...) @NtCurrentProcess()
  %161 = load i32, i32* @MEM_RELEASE, align 4
  %162 = call i64 @NtFreeVirtualMemory(i32 %160, i64* %2, i32* %3, i32 %161)
  store i64 %162, i64* %4, align 8
  %163 = load i64, i64* %4, align 8
  %164 = call i32 @NT_SUCCESS(i64 %163)
  %165 = load i64, i64* %4, align 8
  %166 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %165)
  %167 = load i32, i32* %3, align 4
  %168 = load i32, i32* @PAGE_SIZE, align 4
  %169 = icmp eq i32 %167, %168
  %170 = zext i1 %169 to i32
  %171 = load i32, i32* %3, align 4
  %172 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %171)
  %173 = load i64, i64* %2, align 8
  %174 = load i64, i64* %1, align 8
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %178 = load i64, i64* %1, align 8
  %179 = trunc i64 %178 to i32
  %180 = load i32, i32* @PAGE_SIZE, align 4
  %181 = add nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  store i64 %182, i64* %2, align 8
  %183 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %183, i32* %3, align 4
  %184 = call i32 (...) @NtCurrentProcess()
  %185 = load i32, i32* @MEM_RELEASE, align 4
  %186 = call i64 @NtFreeVirtualMemory(i32 %184, i64* %2, i32* %3, i32 %185)
  store i64 %186, i64* %4, align 8
  %187 = load i64, i64* %4, align 8
  %188 = call i32 @NT_SUCCESS(i64 %187)
  %189 = load i64, i64* %4, align 8
  %190 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %189)
  %191 = load i32, i32* %3, align 4
  %192 = load i32, i32* @PAGE_SIZE, align 4
  %193 = icmp eq i32 %191, %192
  %194 = zext i1 %193 to i32
  %195 = load i32, i32* %3, align 4
  %196 = call i32 (i32, i8*, ...) @ok(i32 %194, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %195)
  %197 = load i64, i64* %2, align 8
  %198 = load i64, i64* %1, align 8
  %199 = trunc i64 %198 to i32
  %200 = load i32, i32* @PAGE_SIZE, align 4
  %201 = add nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = icmp eq i64 %197, %202
  %204 = zext i1 %203 to i32
  %205 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %206 = load i32, i32* @PAGE_SIZE, align 4
  %207 = mul nsw i32 2, %206
  store i32 %207, i32* %3, align 4
  %208 = call i32 (...) @NtCurrentProcess()
  %209 = load i32, i32* @MEM_RESERVE, align 4
  %210 = load i32, i32* @PAGE_READWRITE, align 4
  %211 = call i64 @NtAllocateVirtualMemory(i32 %208, i64* %1, i32 0, i32* %3, i32 %209, i32 %210)
  store i64 %211, i64* %4, align 8
  %212 = load i64, i64* %4, align 8
  %213 = call i32 @NT_SUCCESS(i64 %212)
  %214 = load i64, i64* %4, align 8
  %215 = call i32 (i32, i8*, ...) @ok(i32 %213, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %214)
  %216 = load i32, i32* %3, align 4
  %217 = load i32, i32* @PAGE_SIZE, align 4
  %218 = mul nsw i32 2, %217
  %219 = icmp eq i32 %216, %218
  %220 = zext i1 %219 to i32
  %221 = load i32, i32* %3, align 4
  %222 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %221)
  %223 = load i64, i64* %1, align 8
  %224 = trunc i64 %223 to i32
  %225 = load i32, i32* @PAGE_SIZE, align 4
  %226 = srem i32 %224, %225
  %227 = icmp eq i32 %226, 0
  %228 = zext i1 %227 to i32
  %229 = call i32 (i32, i8*, ...) @ok(i32 %228, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %230 = load i64, i64* %1, align 8
  %231 = trunc i64 %230 to i32
  %232 = load i32, i32* @PAGE_SIZE, align 4
  %233 = add nsw i32 %231, %232
  %234 = sext i32 %233 to i64
  store i64 %234, i64* %2, align 8
  %235 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %235, i32* %3, align 4
  %236 = call i32 (...) @NtCurrentProcess()
  %237 = load i32, i32* @MEM_RELEASE, align 4
  %238 = call i64 @NtFreeVirtualMemory(i32 %236, i64* %2, i32* %3, i32 %237)
  store i64 %238, i64* %4, align 8
  %239 = load i64, i64* %4, align 8
  %240 = call i32 @NT_SUCCESS(i64 %239)
  %241 = load i64, i64* %4, align 8
  %242 = call i32 (i32, i8*, ...) @ok(i32 %240, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %241)
  %243 = load i32, i32* %3, align 4
  %244 = load i32, i32* @PAGE_SIZE, align 4
  %245 = icmp eq i32 %243, %244
  %246 = zext i1 %245 to i32
  %247 = load i32, i32* %3, align 4
  %248 = call i32 (i32, i8*, ...) @ok(i32 %246, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %247)
  %249 = load i64, i64* %2, align 8
  %250 = load i64, i64* %1, align 8
  %251 = trunc i64 %250 to i32
  %252 = load i32, i32* @PAGE_SIZE, align 4
  %253 = add nsw i32 %251, %252
  %254 = sext i32 %253 to i64
  %255 = icmp eq i64 %249, %254
  %256 = zext i1 %255 to i32
  %257 = call i32 (i32, i8*, ...) @ok(i32 %256, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %258 = load i64, i64* %1, align 8
  store i64 %258, i64* %2, align 8
  %259 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %259, i32* %3, align 4
  %260 = call i32 (...) @NtCurrentProcess()
  %261 = load i32, i32* @MEM_RELEASE, align 4
  %262 = call i64 @NtFreeVirtualMemory(i32 %260, i64* %2, i32* %3, i32 %261)
  store i64 %262, i64* %4, align 8
  %263 = load i64, i64* %4, align 8
  %264 = call i32 @NT_SUCCESS(i64 %263)
  %265 = load i64, i64* %4, align 8
  %266 = call i32 (i32, i8*, ...) @ok(i32 %264, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %265)
  %267 = load i32, i32* %3, align 4
  %268 = load i32, i32* @PAGE_SIZE, align 4
  %269 = icmp eq i32 %267, %268
  %270 = zext i1 %269 to i32
  %271 = load i32, i32* %3, align 4
  %272 = call i32 (i32, i8*, ...) @ok(i32 %270, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %271)
  %273 = load i64, i64* %2, align 8
  %274 = load i64, i64* %1, align 8
  %275 = icmp eq i64 %273, %274
  %276 = zext i1 %275 to i32
  %277 = call i32 (i32, i8*, ...) @ok(i32 %276, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %278 = load i32, i32* @PAGE_SIZE, align 4
  %279 = mul nsw i32 2, %278
  store i32 %279, i32* %3, align 4
  %280 = call i32 (...) @NtCurrentProcess()
  %281 = load i32, i32* @MEM_RESERVE, align 4
  %282 = load i32, i32* @PAGE_READWRITE, align 4
  %283 = call i64 @NtAllocateVirtualMemory(i32 %280, i64* %1, i32 0, i32* %3, i32 %281, i32 %282)
  store i64 %283, i64* %4, align 8
  %284 = load i64, i64* %4, align 8
  %285 = call i32 @NT_SUCCESS(i64 %284)
  %286 = load i64, i64* %4, align 8
  %287 = call i32 (i32, i8*, ...) @ok(i32 %285, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %286)
  %288 = load i32, i32* %3, align 4
  %289 = load i32, i32* @PAGE_SIZE, align 4
  %290 = mul nsw i32 2, %289
  %291 = icmp eq i32 %288, %290
  %292 = zext i1 %291 to i32
  %293 = load i32, i32* %3, align 4
  %294 = call i32 (i32, i8*, ...) @ok(i32 %292, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %293)
  %295 = load i64, i64* %1, align 8
  %296 = trunc i64 %295 to i32
  %297 = load i32, i32* @PAGE_SIZE, align 4
  %298 = srem i32 %296, %297
  %299 = icmp eq i32 %298, 0
  %300 = zext i1 %299 to i32
  %301 = call i32 (i32, i8*, ...) @ok(i32 %300, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %302 = load i64, i64* %1, align 8
  %303 = trunc i64 %302 to i32
  %304 = add nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  store i64 %305, i64* %2, align 8
  %306 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %306, i32* %3, align 4
  %307 = call i32 (...) @NtCurrentProcess()
  %308 = load i32, i32* @MEM_RELEASE, align 4
  %309 = call i64 @NtFreeVirtualMemory(i32 %307, i64* %2, i32* %3, i32 %308)
  store i64 %309, i64* %4, align 8
  %310 = load i64, i64* %4, align 8
  %311 = call i32 @NT_SUCCESS(i64 %310)
  %312 = load i64, i64* %4, align 8
  %313 = call i32 (i32, i8*, ...) @ok(i32 %311, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %312)
  %314 = load i32, i32* %3, align 4
  %315 = load i32, i32* @PAGE_SIZE, align 4
  %316 = mul nsw i32 2, %315
  %317 = icmp eq i32 %314, %316
  %318 = zext i1 %317 to i32
  %319 = load i32, i32* %3, align 4
  %320 = call i32 (i32, i8*, ...) @ok(i32 %318, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %319)
  %321 = load i64, i64* %2, align 8
  %322 = load i64, i64* %1, align 8
  %323 = icmp eq i64 %321, %322
  %324 = zext i1 %323 to i32
  %325 = call i32 (i32, i8*, ...) @ok(i32 %324, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i64 @NtAllocateVirtualMemory(i32, i64*, i32, i32*, i32, i32) #1

declare dso_local i32 @NtCurrentProcess(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i64 @NtFreeVirtualMemory(i32, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
