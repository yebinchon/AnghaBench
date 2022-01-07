; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleacc/extr_main.c_test_getroletext.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleacc/extr_main.c_test_getroletext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [63 x i8] c"GetRoleTextA doesn't return zero on wrong role number, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"GetRoleTextA doesn't return NULL char on wrong role number\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"GetRoleTextA modified buffer on wrong role number\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"GetRoleTextW doesn't return zero on wrong role number, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"GetRoleTextW doesn't return NULL char on wrong role number\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"GetRoleTextA doesn't return (>0) for zero role number, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"GetRoleTextW doesn't return (>0) for zero role number, got %d\0A\00", align 1
@ROLE_SYSTEM_TITLEBAR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [59 x i8] c"GetRoleTextA doesn't return length on NULL buffer, got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"GetRoleTextW doesn't return length on NULL buffer, got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"GetRoleTextA doesn't return 0, got %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"GetRoleTextA modified buffer\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"GetRoleTextW doesn't return length\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"GetRoleTextW doesn't modify buffer\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"GetRoleTextA returned wrong length\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"GetRoleTextA returned not zero-length buffer\0A\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"GetRoleTextA returned wrong length, got %d, expected 0\0A\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"GetRoleTextA returned not zero-length buffer : (%c)\0A\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"GetRoleTextW returned wrong length, got %d, expected 1\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"GetRoleTextW returned not zero-length buffer\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"GetRoleTextA shouldn't modify this part of buffer\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"GetRoleTextW shouldn't modify this part of buffer\0A\00", align 1
@ROLE_SYSTEM_OUTLINEBUTTON = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [33 x i8] c"Expected the role to be present\0A\00", align 1
@.str.22 = private unnamed_addr constant [73 x i8] c"GetRoleTextA: returned length doesn't match returned buffer for role %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [73 x i8] c"GetRoleTextW: returned length doesn't match returned buffer for role %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getroletext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getroletext() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i8], align 1
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i8], align 1
  %6 = alloca i8*, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca [100 x i8], align 16
  %9 = call i32 @GetRoleTextA(i32 -1, i8* null, i32 0)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %1, align 4
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 42, i8* %15, align 1
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %17 = call i32 @GetRoleTextA(i32 -1, i8* %16, i32 2)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %1, align 4
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %29 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 42, i8* %29, align 1
  %30 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %31 = call i32 @GetRoleTextA(i32 -1, i8* %30, i32 0)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %1, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 42
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @GetRoleTextW(i32 -1, i8* null, i32 0)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %1, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8 42, i8* %49, align 1
  %50 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %51 = call i32 @GetRoleTextW(i32 -1, i8* %50, i32 2)
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %1, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %1, align 4
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8 42, i8* %63, align 1
  %64 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %65 = call i32 @GetRoleTextW(i32 -1, i8* %64, i32 0)
  store i32 %65, i32* %1, align 4
  %66 = load i32, i32* %1, align 4
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %1, align 4
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = call i32 @GetRoleTextA(i32 0, i8* null, i32 0)
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* %1, align 4
  %73 = icmp sgt i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %1, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = call i32 @GetRoleTextW(i32 0, i8* null, i32 0)
  store i32 %77, i32* %1, align 4
  %78 = load i32, i32* %1, align 4
  %79 = icmp sgt i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %1, align 4
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @ROLE_SYSTEM_TITLEBAR, align 4
  %84 = call i32 @GetRoleTextA(i32 %83, i8* null, i32 0)
  store i32 %84, i32* %1, align 4
  %85 = load i32, i32* %1, align 4
  %86 = icmp sgt i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %1, align 4
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @ROLE_SYSTEM_TITLEBAR, align 4
  %91 = call i32 @GetRoleTextA(i32 %90, i8* null, i32 1)
  store i32 %91, i32* %1, align 4
  %92 = load i32, i32* %1, align 4
  %93 = icmp sgt i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %1, align 4
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @ROLE_SYSTEM_TITLEBAR, align 4
  %98 = call i32 @GetRoleTextW(i32 %97, i8* null, i32 0)
  store i32 %98, i32* %1, align 4
  %99 = load i32, i32* %1, align 4
  %100 = icmp sgt i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %1, align 4
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @ROLE_SYSTEM_TITLEBAR, align 4
  %105 = call i32 @GetRoleTextW(i32 %104, i8* null, i32 1)
  store i32 %105, i32* %1, align 4
  %106 = load i32, i32* %1, align 4
  %107 = icmp sgt i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %1, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  %111 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8 42, i8* %111, align 1
  %112 = load i32, i32* @ROLE_SYSTEM_TITLEBAR, align 4
  %113 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %114 = call i32 @GetRoleTextA(i32 %112, i8* %113, i32 0)
  store i32 %114, i32* %1, align 4
  %115 = load i32, i32* %1, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %1, align 4
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %119)
  %121 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 42
  %125 = zext i1 %124 to i32
  %126 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  store i8* null, i8** %6, align 8
  %127 = load i32, i32* @ROLE_SYSTEM_TITLEBAR, align 4
  %128 = bitcast i8** %6 to i8*
  %129 = call i32 @GetRoleTextW(i32 %127, i8* %128, i32 0)
  store i32 %129, i32* %1, align 4
  %130 = load i32, i32* %1, align 4
  %131 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %132 = load i8*, i8** %6, align 8
  %133 = icmp ne i8* %132, null
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  %136 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 42, i8* %136, align 1
  %137 = load i32, i32* @ROLE_SYSTEM_TITLEBAR, align 4
  %138 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %139 = call i32 @GetRoleTextA(i32 %137, i8* %138, i32 1)
  store i32 %139, i32* %1, align 4
  %140 = load i32, i32* %1, align 4
  %141 = icmp eq i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0))
  %144 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0))
  %150 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 42, i8* %150, align 1
  %151 = load i32, i32* @ROLE_SYSTEM_TITLEBAR, align 4
  %152 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %153 = call i32 @GetRoleTextA(i32 %151, i8* %152, i32 2)
  store i32 %153, i32* %1, align 4
  %154 = load i32, i32* %1, align 4
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %1, align 4
  %159 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i64 0, i64 0), i32 %158)
  %160 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %161 = load i8, i8* %160, align 1
  %162 = icmp ne i8 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %0
  %164 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 42
  %168 = zext i1 %167 to i32
  %169 = call i64 @broken(i32 %168)
  %170 = icmp ne i64 %169, 0
  br label %171

171:                                              ; preds = %163, %0
  %172 = phi i1 [ true, %0 ], [ %170, %163 ]
  %173 = zext i1 %172 to i32
  %174 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0), i32 %176)
  %178 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8 42, i8* %178, align 1
  %179 = load i32, i32* @ROLE_SYSTEM_TITLEBAR, align 4
  %180 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %181 = call i32 @GetRoleTextW(i32 %179, i8* %180, i32 1)
  store i32 %181, i32* %1, align 4
  %182 = load i32, i32* %1, align 4
  %183 = icmp eq i32 %182, 0
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* %1, align 4
  %186 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0), i32 %185)
  %187 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0))
  %193 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  store i8 42, i8* %193, align 1
  %194 = load i32, i32* @ROLE_SYSTEM_TITLEBAR, align 4
  %195 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %196 = call i32 @GetRoleTextW(i32 %194, i8* %195, i32 2)
  store i32 %196, i32* %1, align 4
  %197 = load i32, i32* %1, align 4
  %198 = icmp eq i32 %197, 1
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %1, align 4
  %201 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0), i32 %200)
  %202 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 0
  %206 = zext i1 %205 to i32
  %207 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0))
  %208 = load i32, i32* @ROLE_SYSTEM_TITLEBAR, align 4
  %209 = call i32 @GetRoleTextA(i32 %208, i8* null, i32 0)
  store i32 %209, i32* %1, align 4
  %210 = call i32 (...) @GetProcessHeap()
  %211 = load i32, i32* %1, align 4
  %212 = mul nsw i32 2, %211
  %213 = call i8* @HeapAlloc(i32 %210, i32 0, i32 %212)
  store i8* %213, i8** %4, align 8
  %214 = load i8*, i8** %4, align 8
  %215 = load i32, i32* %1, align 4
  %216 = mul nsw i32 2, %215
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %214, i64 %218
  store i8 42, i8* %219, align 1
  %220 = load i32, i32* @ROLE_SYSTEM_TITLEBAR, align 4
  %221 = load i8*, i8** %4, align 8
  %222 = load i32, i32* %1, align 4
  %223 = mul nsw i32 2, %222
  %224 = call i32 @GetRoleTextA(i32 %220, i8* %221, i32 %223)
  store i32 %224, i32* %1, align 4
  %225 = load i8*, i8** %4, align 8
  %226 = load i32, i32* %1, align 4
  %227 = mul nsw i32 2, %226
  %228 = sub nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %225, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 42
  %234 = zext i1 %233 to i32
  %235 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i64 0, i64 0))
  %236 = call i32 (...) @GetProcessHeap()
  %237 = load i8*, i8** %4, align 8
  %238 = call i32 @HeapFree(i32 %236, i32 0, i8* %237)
  %239 = load i32, i32* @ROLE_SYSTEM_TITLEBAR, align 4
  %240 = call i32 @GetRoleTextW(i32 %239, i8* null, i32 0)
  store i32 %240, i32* %1, align 4
  %241 = call i32 (...) @GetProcessHeap()
  %242 = load i32, i32* %1, align 4
  %243 = mul nsw i32 2, %242
  %244 = sext i32 %243 to i64
  %245 = mul i64 %244, 1
  %246 = trunc i64 %245 to i32
  %247 = call i8* @HeapAlloc(i32 %241, i32 0, i32 %246)
  store i8* %247, i8** %6, align 8
  %248 = load i8*, i8** %6, align 8
  %249 = load i32, i32* %1, align 4
  %250 = mul nsw i32 2, %249
  %251 = sub nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %248, i64 %252
  store i8 42, i8* %253, align 1
  %254 = load i32, i32* @ROLE_SYSTEM_TITLEBAR, align 4
  %255 = load i8*, i8** %6, align 8
  %256 = load i32, i32* %1, align 4
  %257 = mul nsw i32 2, %256
  %258 = call i32 @GetRoleTextW(i32 %254, i8* %255, i32 %257)
  store i32 %258, i32* %1, align 4
  %259 = load i8*, i8** %6, align 8
  %260 = load i32, i32* %1, align 4
  %261 = mul nsw i32 2, %260
  %262 = sub nsw i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %259, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 42
  %268 = zext i1 %267 to i32
  %269 = call i32 (i32, i8*, ...) @ok(i32 %268, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20, i64 0, i64 0))
  %270 = call i32 (...) @GetProcessHeap()
  %271 = load i8*, i8** %6, align 8
  %272 = call i32 @HeapFree(i32 %270, i32 0, i8* %271)
  store i32 0, i32* %2, align 4
  br label %273

273:                                              ; preds = %312, %171
  %274 = load i32, i32* %2, align 4
  %275 = load i32, i32* @ROLE_SYSTEM_OUTLINEBUTTON, align 4
  %276 = icmp sle i32 %274, %275
  br i1 %276, label %277, label %315

277:                                              ; preds = %273
  %278 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %279 = call i32 @memset(i8* %278, i32 0, i32 100)
  %280 = load i32, i32* %2, align 4
  %281 = call i32 @GetRoleTextA(i32 %280, i8* null, i32 0)
  store i32 %281, i32* %1, align 4
  %282 = load i32, i32* %1, align 4
  %283 = icmp sgt i32 %282, 0
  %284 = zext i1 %283 to i32
  %285 = call i32 (i32, i8*, ...) @ok(i32 %284, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  %286 = load i32, i32* %2, align 4
  %287 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %288 = call i32 @GetRoleTextA(i32 %286, i8* %287, i32 100)
  %289 = load i32, i32* %1, align 4
  %290 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %291 = call i32 @lstrlenA(i8* %290)
  %292 = icmp eq i32 %289, %291
  %293 = zext i1 %292 to i32
  %294 = load i32, i32* %2, align 4
  %295 = call i32 (i32, i8*, ...) @ok(i32 %293, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.22, i64 0, i64 0), i32 %294)
  %296 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %297 = call i32 @memset(i8* %296, i32 0, i32 100)
  %298 = load i32, i32* %2, align 4
  %299 = call i32 @GetRoleTextW(i32 %298, i8* null, i32 0)
  store i32 %299, i32* %1, align 4
  %300 = load i32, i32* %2, align 4
  %301 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %302 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %303 = call i32 @ARRAY_SIZE(i8* %302)
  %304 = call i32 @GetRoleTextW(i32 %300, i8* %301, i32 %303)
  %305 = load i32, i32* %1, align 4
  %306 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %307 = call i32 @lstrlenW(i8* %306)
  %308 = icmp eq i32 %305, %307
  %309 = zext i1 %308 to i32
  %310 = load i32, i32* %2, align 4
  %311 = call i32 (i32, i8*, ...) @ok(i32 %309, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.23, i64 0, i64 0), i32 %310)
  br label %312

312:                                              ; preds = %277
  %313 = load i32, i32* %2, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %2, align 4
  br label %273

315:                                              ; preds = %273
  ret void
}

declare dso_local i32 @GetRoleTextA(i32, i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetRoleTextW(i32, i8*, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @lstrlenA(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @lstrlenW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
