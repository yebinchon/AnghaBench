; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_stringtable.c_test_StringTableStringFromId.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_stringtable.c_test_StringTableStringFromId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"Failed to Initialize String Table\0A\00", align 1
@string = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to add 'string' to string table\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"got %d and %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to lookup string %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"got %s, expected %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_StringTableStringFromId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_StringTableStringFromId() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32* (...) @pStringTableInitialize()
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %1, align 8
  %11 = load i32*, i32** @string, align 8
  %12 = call i32 @pStringTableAddString(i32* %10, i32* %11, i32 0)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, -1
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32*, i32** %1, align 8
  %18 = load i32*, i32** @string, align 8
  %19 = call i32 @pStringTableLookUpString(i32* %17, i32* %18, i32 0)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32* @pStringTableStringFromId(i32* %27, i32 %28)
  store i32* %29, i32** %2, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** @string, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @lstrcmpiW(i32* %35, i32* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @wine_dbgstr_w(i32* %41)
  %43 = load i32*, i32** @string, align 8
  %44 = call i32 @wine_dbgstr_w(i32* %43)
  %45 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %42, i32 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @pStringTableDestroy(i32* %46)
  ret void
}

declare dso_local i32* @pStringTableInitialize(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pStringTableAddString(i32*, i32*, i32) #1

declare dso_local i32 @pStringTableLookUpString(i32*, i32*, i32) #1

declare dso_local i32* @pStringTableStringFromId(i32*, i32) #1

declare dso_local i32 @lstrcmpiW(i32*, i32*) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @pStringTableDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
