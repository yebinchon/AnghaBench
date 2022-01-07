; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testCursor.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"No handle\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"GetLastError: expecting %u got %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Cursor in upper-left\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Cursor in lower-right\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Cursor is outside\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @testCursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testCursor(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = bitcast %struct.TYPE_5__* %3 to i64*
  store i64 %1, i64* %6, align 4
  store i32 %0, i32* %4, align 4
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = bitcast %struct.TYPE_5__* %5 to i64*
  %10 = load i64, i64* %9, align 4
  %11 = call i64 @SetConsoleCursorPosition(i32 0, i64 %10)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = call i64 (...) @GetLastError()
  %16 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %20 = call i64 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %19, i64 %20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = bitcast %struct.TYPE_5__* %5 to i64*
  %26 = load i64, i64* %25, align 4
  %27 = call i64 @SetConsoleCursorPosition(i32 %24, i64 %26)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* %4, align 4
  %32 = bitcast %struct.TYPE_5__* %5 to i64*
  %33 = load i64, i64* %32, align 4
  %34 = call i32 @okCURSOR(i32 %31, i64 %33)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %4, align 4
  %44 = bitcast %struct.TYPE_5__* %5 to i64*
  %45 = load i64, i64* %44, align 4
  %46 = call i64 @SetConsoleCursorPosition(i32 %43, i64 %45)
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* %4, align 4
  %51 = bitcast %struct.TYPE_5__* %5 to i64*
  %52 = load i64, i64* %51, align 4
  %53 = call i32 @okCURSOR(i32 %50, i64 %52)
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %4, align 4
  %62 = bitcast %struct.TYPE_5__* %5 to i64*
  %63 = load i64, i64* %62, align 4
  %64 = call i64 @SetConsoleCursorPosition(i32 %61, i64 %63)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %68 = call i64 (...) @GetLastError()
  %69 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %73 = call i64 (...) @GetLastError()
  %74 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %72, i64 %73)
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %4, align 4
  %83 = bitcast %struct.TYPE_5__* %5 to i64*
  %84 = load i64, i64* %83, align 4
  %85 = call i64 @SetConsoleCursorPosition(i32 %82, i64 %84)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %89 = call i64 (...) @GetLastError()
  %90 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %94 = call i64 (...) @GetLastError()
  %95 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %93, i64 %94)
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 -1, i32* %96, align 4
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 0, i32* %97, align 4
  %98 = load i32, i32* %4, align 4
  %99 = bitcast %struct.TYPE_5__* %5 to i64*
  %100 = load i64, i64* %99, align 4
  %101 = call i64 @SetConsoleCursorPosition(i32 %98, i64 %100)
  %102 = icmp eq i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %105 = call i64 (...) @GetLastError()
  %106 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %110 = call i64 (...) @GetLastError()
  %111 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %109, i64 %110)
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 -1, i32* %113, align 4
  %114 = load i32, i32* %4, align 4
  %115 = bitcast %struct.TYPE_5__* %5 to i64*
  %116 = load i64, i64* %115, align 4
  %117 = call i64 @SetConsoleCursorPosition(i32 %114, i64 %116)
  %118 = icmp eq i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %121 = call i64 (...) @GetLastError()
  %122 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %126 = call i64 (...) @GetLastError()
  %127 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %125, i64 %126)
  ret void
}

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @SetConsoleCursorPosition(i32, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @okCURSOR(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
