; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_run.c_parse_procedure.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_run.c_parse_procedure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parse_procedure.delimiterW = internal constant [2 x i8] c"\22\00", align 1
@emptyW = common dso_local global i32 0, align 4
@SCRIPTPROC_HOSTMANAGESSOURCE = common dso_local global i32 0, align 4
@SCRIPTPROC_IMPLICIT_THIS = common dso_local global i32 0, align 4
@SCRIPTPROC_IMPLICIT_PARENTS = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"ParseProcedureText failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"disp = NULL\0A\00", align 1
@IID_IDispatchEx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not get IDispatchEx iface: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @parse_procedure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_procedure(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @a2bstr(i8* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @emptyW, align 4
  %14 = load i32, i32* @SCRIPTPROC_HOSTMANAGESSOURCE, align 4
  %15 = load i32, i32* @SCRIPTPROC_IMPLICIT_THIS, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SCRIPTPROC_IMPLICIT_PARENTS, align 4
  %18 = or i32 %16, %17
  %19 = call i64 @IActiveScriptParseProcedure2_ParseProcedureText(i32* %11, i32 %12, i32* null, i32 %13, i32* null, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @parse_procedure.delimiterW, i64 0, i64 0), i32 0, i32 0, i32 %18, i32** %6)
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @SysFreeString(i32 %20)
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %8, align 8
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %6, align 8
  %33 = bitcast i32** %5 to i8**
  %34 = call i64 @IDispatch_QueryInterface(i32* %32, i32* @IID_IDispatchEx, i8** %33)
  store i64 %34, i64* %8, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @IDispatch_Release(i32* %35)
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %8, align 8
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  %43 = load i32*, i32** %5, align 8
  ret i32* %43
}

declare dso_local i32 @a2bstr(i8*) #1

declare dso_local i64 @IActiveScriptParseProcedure2_ParseProcedureText(i32*, i32, i32*, i32, i32*, i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IDispatch_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
