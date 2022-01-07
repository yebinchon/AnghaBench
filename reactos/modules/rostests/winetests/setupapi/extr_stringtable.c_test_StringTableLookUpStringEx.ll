; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_stringtable.c_test_StringTableLookUpStringEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_stringtable.c_test_StringTableLookUpStringEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_StringTableLookUpStringEx.uilevel = internal global [8 x i8] c"UILEVEL\00", align 1
@.str = private unnamed_addr constant [35 x i8] c"Failed to Initialize String Table\0A\00", align 1
@string = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to add 'string' to string table\0A\00", align 1
@String = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to add 'String' to string table\0A\00", align 1
@foo = common dso_local global i8* null, align 8
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
@.str.15 = private unnamed_addr constant [35 x i8] c"failed to initialize string table\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"failed to add 'UILEVEL' to string table\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"failed find 'UILEVEL' in string table\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"unexpected data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_StringTableLookUpStringEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_StringTableLookUpStringEx() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [4 x i8], align 1
  %10 = call i32* (...) @pStringTableInitialize()
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %7, align 8
  %16 = load i8*, i8** @string, align 8
  %17 = call i32 @pStringTableAddString(i32* %15, i8* %16, i32 0)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, -1
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %7, align 8
  %23 = load i8*, i8** @String, align 8
  %24 = call i32 @pStringTableAddString(i32* %22, i8* %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, -1
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32*, i32** %7, align 8
  %30 = load i8*, i8** @foo, align 8
  %31 = call i32 @pStringTableAddString(i32* %29, i8* %30, i32 0)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, -1
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32*, i32** %7, align 8
  %37 = call i32* @pStringTableDuplicate(i32* %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32*, i32** %7, align 8
  %43 = load i8*, i8** @string, align 8
  %44 = call i32 @pStringTableLookUpStringEx(i32* %42, i8* %43, i32 0, i8* null, i32 0)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* %1, align 4
  %46 = icmp ne i32 %45, -1
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = load i8*, i8** @string, align 8
  %58 = call i32 @pStringTableLookUpStringEx(i32* %56, i8* %57, i32 0, i8* null, i32 0)
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* %1, align 4
  %60 = icmp ne i32 %59, -1
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %63 = load i32*, i32** %7, align 8
  %64 = load i8*, i8** @String, align 8
  %65 = call i32 @pStringTableLookUpStringEx(i32* %63, i8* %64, i32 0, i8* null, i32 0)
  store i32 %65, i32* %1, align 4
  %66 = load i32, i32* %1, align 4
  %67 = icmp ne i32 %66, -1
  %68 = zext i1 %67 to i32
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %70 = load i32*, i32** %8, align 8
  %71 = load i8*, i8** @String, align 8
  %72 = call i32 @pStringTableLookUpStringEx(i32* %70, i8* %71, i32 0, i8* null, i32 0)
  store i32 %72, i32* %1, align 4
  %73 = load i32, i32* %1, align 4
  %74 = icmp ne i32 %73, -1
  %75 = zext i1 %74 to i32
  %76 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %77 = load i32*, i32** %7, align 8
  %78 = load i8*, i8** @foo, align 8
  %79 = call i32 @pStringTableLookUpStringEx(i32* %77, i8* %78, i32 0, i8* null, i32 0)
  store i32 %79, i32* %1, align 4
  %80 = load i32, i32* %1, align 4
  %81 = icmp ne i32 %80, -1
  %82 = zext i1 %81 to i32
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %84 = load i32, i32* %1, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %1, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.11, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load i32*, i32** %8, align 8
  %92 = load i8*, i8** @foo, align 8
  %93 = call i32 @pStringTableLookUpStringEx(i32* %91, i8* %92, i32 0, i8* null, i32 0)
  store i32 %93, i32* %1, align 4
  %94 = load i32, i32* %1, align 4
  %95 = icmp ne i32 %94, -1
  %96 = zext i1 %95 to i32
  %97 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %98 = load i32*, i32** %7, align 8
  %99 = load i8*, i8** @string, align 8
  %100 = load i32, i32* @ST_CASE_SENSITIVE_COMPARE, align 4
  %101 = call i32 @pStringTableLookUpStringEx(i32* %98, i8* %99, i32 %100, i8* null, i32 0)
  store i32 %101, i32* %1, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = load i8*, i8** @String, align 8
  %104 = load i32, i32* @ST_CASE_SENSITIVE_COMPARE, align 4
  %105 = call i32 @pStringTableLookUpStringEx(i32* %102, i8* %103, i32 %104, i8* null, i32 0)
  store i32 %105, i32* %2, align 4
  %106 = load i32, i32* %1, align 4
  %107 = load i32, i32* %2, align 4
  %108 = icmp ne i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0))
  %111 = load i32, i32* %1, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %1, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.14, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @pStringTableDestroy(i32* %118)
  %120 = call i32* @pStringTableInitializeEx(i32 4096, i32 0)
  store i32* %120, i32** %7, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = icmp ne i32* %121, null
  %123 = zext i1 %122 to i32
  %124 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1431655766, i32* %6, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @pStringTableAddStringEx(i32* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_StringTableLookUpStringEx.uilevel, i64 0, i64 0), i32 5, i32* %6, i32 4)
  store i32 %126, i32* %1, align 4
  %127 = load i32, i32* %1, align 4
  %128 = icmp ne i32 %127, -1
  %129 = zext i1 %128 to i32
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  %131 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %132 = call i32 @memset(i8* %131, i32 85, i32 4)
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* @ST_CASE_SENSITIVE_COMPARE, align 4
  %135 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %136 = call i32 @pStringTableLookUpStringEx(i32* %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_StringTableLookUpStringEx.uilevel, i64 0, i64 0), i32 %134, i8* %135, i32 0)
  store i32 %136, i32* %1, align 4
  %137 = load i32, i32* %1, align 4
  %138 = icmp ne i32 %137, -1
  %139 = zext i1 %138 to i32
  %140 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  %141 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %142 = call i32 @memcmp(i8* %141, i32* %6, i32 4)
  %143 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %144 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %145 = call i32 @memset(i8* %144, i32 85, i32 4)
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* @ST_CASE_SENSITIVE_COMPARE, align 4
  %148 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %149 = call i32 @pStringTableLookUpStringEx(i32* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_StringTableLookUpStringEx.uilevel, i64 0, i64 0), i32 %147, i8* %148, i32 2)
  store i32 %149, i32* %1, align 4
  %150 = load i32, i32* %1, align 4
  %151 = icmp ne i32 %150, -1
  %152 = zext i1 %151 to i32
  %153 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  %154 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %155 = call i32 @memcmp(i8* %154, i32* %6, i32 2)
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %160 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %161 = call i32 @memset(i8* %160, i32 85, i32 4)
  %162 = load i32*, i32** %7, align 8
  %163 = load i32, i32* @ST_CASE_SENSITIVE_COMPARE, align 4
  %164 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %165 = call i32 @pStringTableLookUpStringEx(i32* %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_StringTableLookUpStringEx.uilevel, i64 0, i64 0), i32 %163, i8* %164, i32 4)
  store i32 %165, i32* %1, align 4
  %166 = load i32, i32* %1, align 4
  %167 = icmp ne i32 %166, -1
  %168 = zext i1 %167 to i32
  %169 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  %170 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %171 = call i32 @memcmp(i8* %170, i32* %6, i32 4)
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %176 = load i32*, i32** %7, align 8
  %177 = call i32 @pStringTableDestroy(i32* %176)
  %178 = load i32*, i32** %8, align 8
  %179 = call i32 @pStringTableDestroy(i32* %178)
  ret void
}

declare dso_local i32* @pStringTableInitialize(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pStringTableAddString(i32*, i8*, i32) #1

declare dso_local i32* @pStringTableDuplicate(i32*) #1

declare dso_local i32 @pStringTableLookUpStringEx(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @pStringTableDestroy(i32*) #1

declare dso_local i32* @pStringTableInitializeEx(i32, i32) #1

declare dso_local i32 @pStringTableAddStringEx(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcmp(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
