; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_printf.c_test_fcvt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_printf.c_test_fcvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"bad return '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"dec wrong %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"sign wrong\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"1000000\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"11100010\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"dec wrong\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"00000\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"1000\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fcvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fcvt() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 100, i32* %2, align 4
  store i32 100, i32* %3, align 4
  %4 = call i8* @_fcvt(double 1.000000e-04, i32 1, i32* %2, i32* %3)
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i64 @strcmp(i8* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq i64 0, %6
  %8 = zext i1 %7 to i32
  %9 = load i8*, i8** %1, align 8
  %10 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 -3, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %2, align 4
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 0, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i8* @_fcvt(double 1.000000e-04, i32 -10, i32* %2, i32* %3)
  store i8* %20, i8** %1, align 8
  %21 = load i8*, i8** %1, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 0, %22
  %24 = zext i1 %23 to i32
  %25 = load i8*, i8** %1, align 8
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 -3, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %2, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 0, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i8* @_fcvt(double 1.000000e-04, i32 10, i32* %2, i32* %3)
  store i8* %36, i8** %1, align 8
  %37 = load i8*, i8** %1, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp eq i64 0, %38
  %40 = zext i1 %39 to i32
  %41 = load i8*, i8** %1, align 8
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* %2, align 4
  %44 = icmp eq i32 -3, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %2, align 4
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 0, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %52 = call i8* @_fcvt(double 0xC05BC001A36E2EB2, i32 5, i32* %2, i32* %3)
  store i8* %52, i8** %1, align 8
  %53 = load i8*, i8** %1, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %55 = icmp eq i64 0, %54
  %56 = zext i1 %55 to i32
  %57 = load i8*, i8** %1, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* %2, align 4
  %60 = icmp eq i32 3, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %2, align 4
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = icmp eq i32 1, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %68 = call i8* @_fcvt(double 0x405BC001A36E2EB2, i32 5, i32* %2, i32* %3)
  store i8* %68, i8** %1, align 8
  %69 = load i8*, i8** %1, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %71 = icmp eq i64 0, %70
  %72 = zext i1 %71 to i32
  %73 = load i8*, i8** %1, align 8
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* %2, align 4
  %76 = icmp eq i32 3, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %79 = load i32, i32* %3, align 4
  %80 = icmp eq i32 0, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %83 = call i8* @_fcvt(double 0.000000e+00, i32 5, i32* %2, i32* %3)
  store i8* %83, i8** %1, align 8
  %84 = load i8*, i8** %1, align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %86 = icmp eq i64 0, %85
  %87 = zext i1 %86 to i32
  %88 = load i8*, i8** %1, align 8
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* %2, align 4
  %91 = icmp eq i32 0, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %2, align 4
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %3, align 4
  %96 = icmp eq i32 0, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %99 = call i8* @_fcvt(double 0.000000e+00, i32 0, i32* %2, i32* %3)
  store i8* %99, i8** %1, align 8
  %100 = load i8*, i8** %1, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %102 = icmp eq i64 0, %101
  %103 = zext i1 %102 to i32
  %104 = load i8*, i8** %1, align 8
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %104)
  %106 = load i32, i32* %2, align 4
  %107 = icmp eq i32 0, %106
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %2, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %3, align 4
  %112 = icmp eq i32 0, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %115 = call i8* @_fcvt(double 0.000000e+00, i32 -1, i32* %2, i32* %3)
  store i8* %115, i8** %1, align 8
  %116 = load i8*, i8** %1, align 8
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %118 = icmp eq i64 0, %117
  %119 = zext i1 %118 to i32
  %120 = load i8*, i8** %1, align 8
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %120)
  %122 = load i32, i32* %2, align 4
  %123 = icmp eq i32 0, %122
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %2, align 4
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %3, align 4
  %128 = icmp eq i32 0, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %131 = call i8* @_fcvt(double 0xC05EC001A36E2EB2, i32 0, i32* %2, i32* %3)
  store i8* %131, i8** %1, align 8
  %132 = load i8*, i8** %1, align 8
  %133 = call i64 @strcmp(i8* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %134 = icmp eq i64 0, %133
  %135 = zext i1 %134 to i32
  %136 = load i8*, i8** %1, align 8
  %137 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %136)
  %138 = load i32, i32* %2, align 4
  %139 = icmp eq i32 3, %138
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %2, align 4
  %142 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %3, align 4
  %144 = icmp eq i32 1, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %147 = call i8* @_fcvt(double 0xC05EC001A36E2EB2, i32 -1, i32* %2, i32* %3)
  store i8* %147, i8** %1, align 8
  %148 = load i8*, i8** %1, align 8
  %149 = call i64 @strcmp(i8* %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %150 = icmp eq i64 0, %149
  %151 = zext i1 %150 to i32
  %152 = load i8*, i8** %1, align 8
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %152)
  %154 = load i32, i32* %2, align 4
  %155 = icmp eq i32 3, %154
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %2, align 4
  %158 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %3, align 4
  %160 = icmp eq i32 1, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %163 = call i8* @_fcvt(double 0xC05EC001A36E2EB2, i32 -2, i32* %2, i32* %3)
  store i8* %163, i8** %1, align 8
  %164 = load i8*, i8** %1, align 8
  %165 = call i64 @strcmp(i8* %164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %166 = icmp eq i64 0, %165
  %167 = zext i1 %166 to i32
  %168 = load i8*, i8** %1, align 8
  %169 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %168)
  %170 = load i32, i32* %2, align 4
  %171 = icmp eq i32 3, %170
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* %2, align 4
  %174 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* %3, align 4
  %176 = icmp eq i32 1, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %179 = call i8* @_fcvt(double 0xC05EC001A36E2EB2, i32 -3, i32* %2, i32* %3)
  store i8* %179, i8** %1, align 8
  %180 = load i8*, i8** %1, align 8
  %181 = call i64 @strcmp(i8* %180, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %182 = icmp eq i64 0, %181
  %183 = zext i1 %182 to i32
  %184 = load i8*, i8** %1, align 8
  %185 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %184)
  %186 = load i32, i32* %2, align 4
  %187 = icmp eq i32 3, %186
  %188 = zext i1 %187 to i32
  %189 = load i32, i32* %2, align 4
  %190 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %3, align 4
  %192 = icmp eq i32 1, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %195 = call i8* @_fcvt(double 0x4058FF5C28F5C28F, i32 1, i32* %2, i32* %3)
  store i8* %195, i8** %1, align 8
  %196 = load i8*, i8** %1, align 8
  %197 = call i64 @strcmp(i8* %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %198 = icmp eq i64 0, %197
  %199 = zext i1 %198 to i32
  %200 = load i8*, i8** %1, align 8
  %201 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %200)
  %202 = load i32, i32* %2, align 4
  %203 = icmp eq i32 3, %202
  %204 = zext i1 %203 to i32
  %205 = load i32, i32* %2, align 4
  %206 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* %3, align 4
  %208 = icmp eq i32 0, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %211 = call i8* @_fcvt(double 6.360000e-03, i32 2, i32* %2, i32* %3)
  store i8* %211, i8** %1, align 8
  %212 = load i8*, i8** %1, align 8
  %213 = call i64 @strcmp(i8* %212, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %214 = icmp eq i64 0, %213
  %215 = zext i1 %214 to i32
  %216 = load i8*, i8** %1, align 8
  %217 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %216)
  %218 = load i32, i32* %2, align 4
  %219 = icmp eq i32 -1, %218
  %220 = zext i1 %219 to i32
  %221 = load i32, i32* %2, align 4
  %222 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* %3, align 4
  %224 = icmp eq i32 0, %223
  %225 = zext i1 %224 to i32
  %226 = call i32 (i32, i8*, ...) @ok(i32 %225, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %227 = call i8* @_fcvt(double 6.360000e-03, i32 3, i32* %2, i32* %3)
  store i8* %227, i8** %1, align 8
  %228 = load i8*, i8** %1, align 8
  %229 = call i64 @strcmp(i8* %228, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %230 = icmp eq i64 0, %229
  %231 = zext i1 %230 to i32
  %232 = load i8*, i8** %1, align 8
  %233 = call i32 (i32, i8*, ...) @ok(i32 %231, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %232)
  %234 = load i32, i32* %2, align 4
  %235 = icmp eq i32 -2, %234
  %236 = zext i1 %235 to i32
  %237 = load i32, i32* %2, align 4
  %238 = call i32 (i32, i8*, ...) @ok(i32 %236, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* %3, align 4
  %240 = icmp eq i32 0, %239
  %241 = zext i1 %240 to i32
  %242 = call i32 (i32, i8*, ...) @ok(i32 %241, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %243 = call i8* @_fcvt(double 0x3FB99999996D9E9A, i32 2, i32* %2, i32* %3)
  store i8* %243, i8** %1, align 8
  %244 = load i8*, i8** %1, align 8
  %245 = call i64 @strcmp(i8* %244, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %246 = icmp eq i64 0, %245
  %247 = zext i1 %246 to i32
  %248 = load i8*, i8** %1, align 8
  %249 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %248)
  %250 = load i32, i32* %2, align 4
  %251 = icmp eq i32 0, %250
  %252 = zext i1 %251 to i32
  %253 = load i32, i32* %2, align 4
  %254 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %253)
  %255 = load i32, i32* %3, align 4
  %256 = icmp eq i32 0, %255
  %257 = zext i1 %256 to i32
  %258 = call i32 (i32, i8*, ...) @ok(i32 %257, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %259 = call i8* @_fcvt(double 6.000000e-01, i32 0, i32* %2, i32* %3)
  store i8* %259, i8** %1, align 8
  %260 = load i8*, i8** %1, align 8
  %261 = call i64 @strcmp(i8* %260, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %262 = icmp eq i64 0, %261
  %263 = zext i1 %262 to i32
  %264 = load i8*, i8** %1, align 8
  %265 = call i32 (i32, i8*, ...) @ok(i32 %263, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %264)
  %266 = load i32, i32* %2, align 4
  %267 = icmp eq i32 1, %266
  %268 = zext i1 %267 to i32
  %269 = load i32, i32* %2, align 4
  %270 = call i32 (i32, i8*, ...) @ok(i32 %268, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %269)
  %271 = load i32, i32* %3, align 4
  %272 = icmp eq i32 0, %271
  %273 = zext i1 %272 to i32
  %274 = call i32 (i32, i8*, ...) @ok(i32 %273, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i8* @_fcvt(double, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
