; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_main.c_cp_from_charset_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_main.c_cp_from_charset_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@mlang = common dso_local global i32 0, align 4
@CLSID_CMultiLanguage = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IMultiLanguage2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Could not create CMultiLanguage instance\0A\00", align 1
@CP_UTF8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"GetCharsetInfo failed: %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cp_from_charset_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @mlang, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %11 = bitcast i32** %6 to i8**
  %12 = call i32 @CoCreateInstance(i32* @CLSID_CMultiLanguage, i32* null, i32 %10, i32* @IID_IMultiLanguage2, i8** %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @FAILED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @CP_UTF8, align 4
  store i32 %18, i32* %2, align 4
  br label %41

19:                                               ; preds = %9
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @InterlockedCompareExchangePointer(i8** bitcast (i32* @mlang to i8**), i32* %20, i32* null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @IMultiLanguage2_Release(i32* %24)
  br label %26

26:                                               ; preds = %23, %19
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* @mlang, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @IMultiLanguage2_GetCharsetInfo(i32 %28, i32 %29, %struct.TYPE_3__* %4)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @FAILED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @CP_UTF8, align 4
  store i32 %37, i32* %2, align 4
  br label %41

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %34, %16
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @InterlockedCompareExchangePointer(i8**, i32*, i32*) #1

declare dso_local i32 @IMultiLanguage2_Release(i32*) #1

declare dso_local i32 @IMultiLanguage2_GetCharsetInfo(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
