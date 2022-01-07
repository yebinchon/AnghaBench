; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testWriteWrappedNotProcessed.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testWriteWrappedNotProcessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"abcd\0Af\09g\00", align 1
@ENABLE_WRAP_AT_EOL_OUTPUT = common dso_local global i32 0, align 4
@ENABLE_PROCESSED_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"setting wrap at EOL & clearing processed output\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Cursor in upper-left-9\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"WriteConsole\0A\00", align 1
@TEST_ATTRIB = common dso_local global i32 0, align 4
@DEFAULT_ATTRIB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Cursor in upper-left-3\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @testWriteWrappedNotProcessed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testWriteWrappedNotProcessed(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_5__* %3 to i64*
  store i64 %1, i64* %11, align 4
  store i32 %0, i32* %4, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @GetConsoleMode(i32 %14, i32* %7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ENABLE_WRAP_AT_EOL_OUTPUT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @ENABLE_PROCESSED_OUTPUT, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = call i64 @SetConsoleMode(i32 %18, i32 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %17, %2
  %28 = phi i1 [ false, %2 ], [ %26, %17 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 9
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  %37 = bitcast %struct.TYPE_5__* %5 to i64*
  %38 = load i64, i64* %37, align 4
  %39 = call i64 @SetConsoleCursorPosition(i32 %36, i64 %38)
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* %4, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @WriteConsoleA(i32 %43, i8* %44, i32 %45, i32* %6, i32* null)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %27
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %49, %50
  br label %52

52:                                               ; preds = %48, %27
  %53 = phi i1 [ false, %27 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 0, i32* %56, align 4
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %78, %52
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 9
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %64, %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = load i32, i32* @TEST_ATTRIB, align 4
  %75 = bitcast %struct.TYPE_5__* %5 to i64*
  %76 = load i64, i64* %75, align 4
  %77 = call i32 @okCHAR(i32 %68, i64 %76, i8 signext %73, i32 %74)
  br label %78

78:                                               ; preds = %61
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %57

81:                                               ; preds = %57
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 9
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %84, %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @DEFAULT_ATTRIB, align 4
  %90 = bitcast %struct.TYPE_5__* %5 to i64*
  %91 = load i64, i64* %90, align 4
  %92 = call i32 @okCHAR(i32 %88, i64 %91, i8 signext 32, i32 %89)
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 0, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @DEFAULT_ATTRIB, align 4
  %97 = bitcast %struct.TYPE_5__* %5 to i64*
  %98 = load i64, i64* %97, align 4
  %99 = call i32 @okCHAR(i32 %95, i64 %98, i8 signext 32, i32 %96)
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, 3
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 0, i32* %104, align 4
  %105 = load i32, i32* %4, align 4
  %106 = bitcast %struct.TYPE_5__* %5 to i64*
  %107 = load i64, i64* %106, align 4
  %108 = call i64 @SetConsoleCursorPosition(i32 %105, i64 %107)
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = load i32, i32* %9, align 4
  %114 = sub nsw i32 %113, 3
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @DEFAULT_ATTRIB, align 4
  %118 = bitcast %struct.TYPE_5__* %5 to i64*
  %119 = load i64, i64* %118, align 4
  %120 = call i32 @okCHAR(i32 %116, i64 %119, i8 signext 32, i32 %117)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @GetConsoleMode(i32, i32*) #1

declare dso_local i64 @SetConsoleMode(i32, i32) #1

declare dso_local i64 @SetConsoleCursorPosition(i32, i64) #1

declare dso_local i64 @WriteConsoleA(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @okCHAR(i32, i64, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
