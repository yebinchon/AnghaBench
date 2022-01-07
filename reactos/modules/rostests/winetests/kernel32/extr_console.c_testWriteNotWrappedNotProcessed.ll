; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testWriteNotWrappedNotProcessed.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testWriteNotWrappedNotProcessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"123\00", align 1
@ENABLE_PROCESSED_OUTPUT = common dso_local global i32 0, align 4
@ENABLE_WRAP_AT_EOL_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"clearing wrap at EOL & processed output\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Cursor in upper-left-3\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Couldn't write, ret = %d, len = %d\0A\00", align 1
@TEST_ATTRIB = common dso_local global i32 0, align 4
@DEFAULT_ATTRIB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"WriteConsole\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @testWriteNotWrappedNotProcessed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testWriteNotWrappedNotProcessed(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = bitcast %struct.TYPE_5__* %3 to i64*
  store i64 %1, i64* %12, align 4
  store i32 %0, i32* %4, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @GetConsoleMode(i32 %15, i32* %7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ENABLE_PROCESSED_OUTPUT, align 4
  %22 = load i32, i32* @ENABLE_WRAP_AT_EOL_OUTPUT, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  %26 = call i64 @SetConsoleMode(i32 %19, i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %18, %2
  %29 = phi i1 [ false, %2 ], [ %27, %18 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = bitcast %struct.TYPE_5__* %5 to i64*
  %39 = load i64, i64* %38, align 4
  %40 = call i64 @SetConsoleCursorPosition(i32 %37, i64 %39)
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %4, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @WriteConsoleA(i32 %44, i8* %45, i32 %46, i32* %6, i32* null)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %28
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %51, %52
  br label %54

54:                                               ; preds = %50, %28
  %55 = phi i1 [ false, %28 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %61, 3
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %85, %54
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 3
  %71 = load i32, i32* %11, align 4
  %72 = srem i32 %71, 3
  %73 = add nsw i32 %70, %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = load i32, i32* @TEST_ATTRIB, align 4
  %82 = bitcast %struct.TYPE_5__* %5 to i64*
  %83 = load i64, i64* %82, align 4
  %84 = call i32 @okCHAR(i32 %75, i64 %83, i8 signext %80, i32 %81)
  br label %85

85:                                               ; preds = %67
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %63

88:                                               ; preds = %63
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 0, i32* %89, align 4
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @DEFAULT_ATTRIB, align 4
  %93 = bitcast %struct.TYPE_5__* %5 to i64*
  %94 = load i64, i64* %93, align 4
  %95 = call i32 @okCHAR(i32 %91, i64 %94, i8 signext 32, i32 %92)
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 3
  %99 = load i32, i32* %9, align 4
  %100 = srem i32 %99, 3
  %101 = add nsw i32 %98, %100
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 0, i32* %104, align 4
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sub nsw i32 %106, %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = load i32, i32* %4, align 4
  %112 = bitcast %struct.TYPE_5__* %5 to i64*
  %113 = load i64, i64* %112, align 4
  %114 = call i64 @SetConsoleCursorPosition(i32 %111, i64 %113)
  %115 = icmp ne i64 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %118 = load i32, i32* %4, align 4
  %119 = load i8*, i8** %8, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @WriteConsoleA(i32 %118, i8* %119, i32 %120, i32* %6, i32* null)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %88
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %124, %125
  br label %127

127:                                              ; preds = %123, %88
  %128 = phi i1 [ false, %88 ], [ %126, %123 ]
  %129 = zext i1 %128 to i32
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetConsoleMode(i32, i32*) #1

declare dso_local i64 @SetConsoleMode(i32, i32) #1

declare dso_local i64 @SetConsoleCursorPosition(i32, i64) #1

declare dso_local i32 @WriteConsoleA(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @okCHAR(i32, i64, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
