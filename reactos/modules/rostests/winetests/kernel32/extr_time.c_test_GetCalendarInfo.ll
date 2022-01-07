; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_time.c_test_GetCalendarInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_time.c_test_GetCalendarInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAL_GREGORIAN = common dso_local global i32 0, align 4
@CAL_ITWODIGITYEARMAX = common dso_local global i32 0, align 4
@CAL_RETURN_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"GetCalendarInfoA failed err %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"wrong size %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"wrong value %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"GetCalendarInfoW failed err %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"A/W mismatch %u/%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"wrong value %s/%u\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"GetCalendarInfoA succeeded\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"wrong error %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"GetCalendarInfoW succeeded\0A\00", align 1
@LANG_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@CAL_SDAYNAME1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"got %d, expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetCalendarInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetCalendarInfo() #0 {
  %1 = alloca [20 x i8], align 16
  %2 = alloca [20 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @CAL_GREGORIAN, align 4
  %8 = load i32, i32* @CAL_ITWODIGITYEARMAX, align 4
  %9 = load i32, i32* @CAL_RETURN_NUMBER, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @pGetCalendarInfoA(i32 1033, i32 %7, i32 %10, i8* null, i32 0, i32* %3)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 (...) @GetLastError()
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp eq i64 %16, 4
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = icmp sge i32 %21, 2000
  br i1 %22, label %23, label %26

23:                                               ; preds = %0
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 2100
  br label %26

26:                                               ; preds = %23, %0
  %27 = phi i1 [ false, %0 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %3, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @CAL_GREGORIAN, align 4
  %32 = load i32, i32* @CAL_ITWODIGITYEARMAX, align 4
  %33 = load i32, i32* @CAL_RETURN_NUMBER, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @pGetCalendarInfoW(i32 1033, i32 %31, i32 %34, i32* null, i32 0, i32* %4)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (...) @GetLastError()
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp eq i64 %40, 1
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* @CAL_GREGORIAN, align 4
  %53 = load i32, i32* @CAL_ITWODIGITYEARMAX, align 4
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %55 = call i32 @pGetCalendarInfoA(i32 1033, i32 %52, i32 %53, i8* %54, i32 20, i32* null)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (...) @GetLastError()
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 5
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %65 = call i32 @atoi(i8* %64)
  %66 = load i32, i32* %3, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %70 = load i32, i32* %3, align 4
  %71 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %69, i32 %70)
  %72 = load i32, i32* @CAL_GREGORIAN, align 4
  %73 = load i32, i32* @CAL_ITWODIGITYEARMAX, align 4
  %74 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %75 = call i32 @pGetCalendarInfoW(i32 1033, i32 %72, i32 %73, i32* %74, i32 80, i32* null)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 (...) @GetLastError()
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 5
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %85 = call i32 @memset(i8* %84, i32 85, i32 20)
  %86 = load i32, i32* @CP_ACP, align 4
  %87 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %88 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %89 = call i32 @WideCharToMultiByte(i32 %86, i32 0, i32* %87, i32 -1, i8* %88, i32 20, i32* null, i32* null)
  %90 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %91 = call i32 @atoi(i8* %90)
  %92 = load i32, i32* %3, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %96 = load i32, i32* %3, align 4
  %97 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %95, i32 %96)
  %98 = load i32, i32* @CAL_GREGORIAN, align 4
  %99 = load i32, i32* @CAL_ITWODIGITYEARMAX, align 4
  %100 = load i32, i32* @CAL_RETURN_NUMBER, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @pGetCalendarInfoA(i32 1033, i32 %98, i32 %101, i8* null, i32 0, i32* null)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %108 = call i32 (...) @GetLastError()
  %109 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 (...) @GetLastError()
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @CAL_GREGORIAN, align 4
  %115 = load i32, i32* @CAL_ITWODIGITYEARMAX, align 4
  %116 = call i32 @pGetCalendarInfoA(i32 1033, i32 %114, i32 %115, i8* null, i32 0, i32* null)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 (...) @GetLastError()
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = icmp eq i32 %120, 5
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %5, align 4
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @CAL_GREGORIAN, align 4
  %126 = load i32, i32* @CAL_ITWODIGITYEARMAX, align 4
  %127 = load i32, i32* @CAL_RETURN_NUMBER, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @pGetCalendarInfoW(i32 1033, i32 %125, i32 %128, i32* null, i32 0, i32* null)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %135 = call i32 (...) @GetLastError()
  %136 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 (...) @GetLastError()
  %140 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @CAL_GREGORIAN, align 4
  %142 = load i32, i32* @CAL_ITWODIGITYEARMAX, align 4
  %143 = call i32 @pGetCalendarInfoW(i32 1033, i32 %141, i32 %142, i32* null, i32 0, i32* null)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = call i32 (...) @GetLastError()
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %5, align 4
  %148 = icmp eq i32 %147, 5
  %149 = zext i1 %148 to i32
  %150 = load i32, i32* %5, align 4
  %151 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @LANG_SYSTEM_DEFAULT, align 4
  %153 = load i32, i32* @CAL_GREGORIAN, align 4
  %154 = load i32, i32* @CAL_SDAYNAME1, align 4
  %155 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %156 = call i32 @pGetCalendarInfoA(i32 %152, i32 %153, i32 %154, i8* %155, i32 20, i32* null)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = call i32 (...) @GetLastError()
  %159 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @LANG_SYSTEM_DEFAULT, align 4
  %161 = load i32, i32* @CAL_GREGORIAN, align 4
  %162 = load i32, i32* @CAL_SDAYNAME1, align 4
  %163 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %164 = call i32 @pGetCalendarInfoA(i32 %160, i32 %161, i32 %162, i8* %163, i32 0, i32* null)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = call i32 (...) @GetLastError()
  %167 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp eq i32 %168, %169
  %171 = zext i1 %170 to i32
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %5, align 4
  %174 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %172, i32 %173)
  %175 = load i32, i32* @LANG_SYSTEM_DEFAULT, align 4
  %176 = load i32, i32* @CAL_GREGORIAN, align 4
  %177 = load i32, i32* @CAL_SDAYNAME1, align 4
  %178 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %179 = call i32 @pGetCalendarInfoW(i32 %175, i32 %176, i32 %177, i32* %178, i32 80, i32* null)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = call i32 (...) @GetLastError()
  %182 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* @CP_ACP, align 4
  %184 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %185 = call i32 @WideCharToMultiByte(i32 %183, i32 0, i32* %184, i32 -1, i8* null, i32 0, i32* null, i32* null)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i32
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %6, align 4
  %192 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %190, i32 %191)
  ret void
}

declare dso_local i32 @pGetCalendarInfoA(i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @pGetCalendarInfoW(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
