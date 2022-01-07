; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_activex.c_parse_procedure_a.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_activex.c_parse_procedure_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IActiveScriptParseProcedure2 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Could not get IActiveScriptParseProcedure2: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ParseProcedureText failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"disp == NULL\0A\00", align 1
@IID_IDispatchEx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Could not get IDispatchEx iface: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @parse_procedure_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_procedure_a(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32** %5 to i8**
  %12 = call i64 @IActiveScriptParse_QueryInterface(i32* %10, i32* @IID_IActiveScriptParseProcedure2, i8** %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @S_OK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %9, align 8
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @a2bstr(i8* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @IActiveScriptParseProcedure2_ParseProcedureText(i32* %21, i32 %22, i32* null, i32* null, i32* null, i32* null, i32* null, i32 0, i32 0, i32 0, i32** %7)
  store i64 %23, i64* %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @SysFreeString(i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @IActiveScriptParseProcedure2_Release(i32* %26)
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %9, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32*, i32** %7, align 8
  %39 = bitcast i32** %6 to i8**
  %40 = call i64 @IDispatch_QueryInterface(i32* %38, i32* @IID_IDispatchEx, i8** %39)
  store i64 %40, i64* %9, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @IDispatch_Release(i32* %41)
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %9, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %47)
  %49 = load i32*, i32** %6, align 8
  ret i32* %49
}

declare dso_local i64 @IActiveScriptParse_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @a2bstr(i8*) #1

declare dso_local i64 @IActiveScriptParseProcedure2_ParseProcedureText(i32*, i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32**) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @IActiveScriptParseProcedure2_Release(i32*) #1

declare dso_local i64 @IDispatch_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
