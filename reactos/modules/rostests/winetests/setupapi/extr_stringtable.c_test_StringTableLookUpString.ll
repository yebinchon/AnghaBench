; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_stringtable.c_test_StringTableLookUpString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_stringtable.c_test_StringTableLookUpString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"failed to initialize string table\0A\00", align 1
@string = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to add 'string' to string table\0A\00", align 1
@String = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to add 'String' to string table\0A\00", align 1
@foo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to add 'foo' to string table\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to duplicate String Table\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed find string in String Table 1\0A\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"Lookup for string (%x) does not match previous handle (%x) in String Table 1\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Failed find string in String Table 2\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Failed find String in String Table 1\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Failed find String in String Table 2\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Failed find foo in String Table 1\0A\00", align 1
@.str.11 = private unnamed_addr constant [75 x i8] c"Lookup for foo (%x) does not match previous handle (%x) in String Table 1\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Failed find foo in String Table 2\0A\00", align 1
@ST_CASE_SENSITIVE_COMPARE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [43 x i8] c"Lookup of string equals String in Table 1\0A\00", align 1
@.str.14 = private unnamed_addr constant [78 x i8] c"Lookup for String (%x) does not match previous handle (%x) in String Table 1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_StringTableLookUpString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_StringTableLookUpString() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = call i32* (...) @pStringTableInitialize()
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @string, align 4
  %15 = call i32 @pStringTableAddString(i32* %13, i32 %14, i32 0)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, -1
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @String, align 4
  %22 = call i32 @pStringTableAddString(i32* %20, i32 %21, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, -1
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @foo, align 4
  %29 = call i32 @pStringTableAddString(i32* %27, i32 %28, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, -1
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32*, i32** %6, align 8
  %35 = call i32* @pStringTableDuplicate(i32* %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @string, align 4
  %42 = call i32 @pStringTableLookUpString(i32* %40, i32 %41, i32 0)
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = icmp ne i32 %43, -1
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @string, align 4
  %56 = call i32 @pStringTableLookUpString(i32* %54, i32 %55, i32 0)
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* %1, align 4
  %58 = icmp ne i32 %57, -1
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @String, align 4
  %63 = call i32 @pStringTableLookUpString(i32* %61, i32 %62, i32 0)
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* %1, align 4
  %65 = icmp ne i32 %64, -1
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* @String, align 4
  %70 = call i32 @pStringTableLookUpString(i32* %68, i32 %69, i32 0)
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* %1, align 4
  %72 = icmp ne i32 %71, -1
  %73 = zext i1 %72 to i32
  %74 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* @foo, align 4
  %77 = call i32 @pStringTableLookUpString(i32* %75, i32 %76, i32 0)
  store i32 %77, i32* %1, align 4
  %78 = load i32, i32* %1, align 4
  %79 = icmp ne i32 %78, -1
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %82 = load i32, i32* %1, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %1, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.11, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* @foo, align 4
  %91 = call i32 @pStringTableLookUpString(i32* %89, i32 %90, i32 0)
  store i32 %91, i32* %1, align 4
  %92 = load i32, i32* %1, align 4
  %93 = icmp ne i32 %92, -1
  %94 = zext i1 %93 to i32
  %95 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* @string, align 4
  %98 = load i32, i32* @ST_CASE_SENSITIVE_COMPARE, align 4
  %99 = call i32 @pStringTableLookUpString(i32* %96, i32 %97, i32 %98)
  store i32 %99, i32* %1, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* @String, align 4
  %102 = load i32, i32* @ST_CASE_SENSITIVE_COMPARE, align 4
  %103 = call i32 @pStringTableLookUpString(i32* %100, i32 %101, i32 %102)
  store i32 %103, i32* %2, align 4
  %104 = load i32, i32* %1, align 4
  %105 = load i32, i32* %2, align 4
  %106 = icmp ne i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0))
  %109 = load i32, i32* %1, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %1, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.14, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @pStringTableDestroy(i32* %116)
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @pStringTableDestroy(i32* %118)
  ret void
}

declare dso_local i32* @pStringTableInitialize(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pStringTableAddString(i32*, i32, i32) #1

declare dso_local i32* @pStringTableDuplicate(i32*) #1

declare dso_local i32 @pStringTableLookUpString(i32*, i32, i32) #1

declare dso_local i32 @pStringTableDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
