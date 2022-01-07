; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_autocomplete.c_test_init.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_autocomplete.c_test_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_AutoComplete = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IAutoComplete = common dso_local global i32 0, align 4
@REGDB_E_CLASSNOTREG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"CLSID_AutoComplete is not registered\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"no IID_IAutoComplete (0x%08x)\0A\00", align 1
@CLSID_ACLMulti = common dso_local global i32 0, align 4
@IID_IACList = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"CLSID_ACLMulti is not registered\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"no IID_IACList (0x%08x)\0A\00", align 1
@hEdit = common dso_local global i32 0, align 4
@GWLP_USERDATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Expected the edit control user data to be zero\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Init returned 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @test_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @test_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %8 = bitcast i32** %3 to i32*
  %9 = call i64 @CoCreateInstance(i32* @CLSID_AutoComplete, i32* null, i32 %7, i32* @IID_IAutoComplete, i32* %8)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @win_skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  br label %87

15:                                               ; preds = %0
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %2, align 8
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %23 = bitcast i32** %5 to i32*
  %24 = call i64 @CoCreateInstance(i32* @CLSID_ACLMulti, i32* null, i32 %22, i32* @IID_IACList, i32* %23)
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = call i32 @win_skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @IAutoComplete_Release(i32* %30)
  store i32* null, i32** %1, align 8
  br label %87

32:                                               ; preds = %15
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %2, align 8
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @hEdit, align 4
  %40 = load i32, i32* @GWLP_USERDATA, align 4
  %41 = call i64 @GetWindowLongPtrA(i32 %39, i32 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @hEdit, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 @IAutoComplete_Init(i32* %46, i32 %47, i32* %48, i32* null, i32* null)
  store i64 %49, i64* %2, align 8
  %50 = load i64, i64* %2, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %2, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* @hEdit, align 4
  %57 = load i32, i32* @GWLP_USERDATA, align 4
  %58 = call i64 @GetWindowLongPtrA(i32 %56, i32 %57)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %64 = bitcast i32** %4 to i32*
  %65 = call i64 @CoCreateInstance(i32* @CLSID_AutoComplete, i32* null, i32 %63, i32* @IID_IAutoComplete, i32* %64)
  store i64 %65, i64* %2, align 8
  %66 = load i64, i64* %2, align 8
  %67 = load i64, i64* @S_OK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %2, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* @hEdit, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = call i64 @IAutoComplete_Init(i32* %72, i32 %73, i32* %74, i32* null, i32* null)
  store i64 %75, i64* %2, align 8
  %76 = load i64, i64* %2, align 8
  %77 = load i64, i64* @S_OK, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %2, align 8
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @IAutoComplete_Release(i32* %82)
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @IUnknown_Release(i32* %84)
  %86 = load i32*, i32** %3, align 8
  store i32* %86, i32** %1, align 8
  br label %87

87:                                               ; preds = %32, %28, %13
  %88 = load i32*, i32** %1, align 8
  ret i32* %88
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IAutoComplete_Release(i32*) #1

declare dso_local i64 @GetWindowLongPtrA(i32, i32) #1

declare dso_local i64 @IAutoComplete_Init(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
