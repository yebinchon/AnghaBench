; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_safearray.c_SAFEARRAY_SetFeatures.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_safearray.c_SAFEARRAY_SetFeatures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@VT_DISPATCH = common dso_local global i64 0, align 8
@FADF_HAVEIID = common dso_local global i8* null, align 8
@IID_IDispatch = common dso_local global i32 0, align 4
@VT_UNKNOWN = common dso_local global i64 0, align 8
@IID_IUnknown = common dso_local global i32 0, align 4
@VT_RECORD = common dso_local global i64 0, align 8
@FADF_RECORD = common dso_local global i8* null, align 8
@FADF_HAVEVARTYPE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_5__*)* @SAFEARRAY_SetFeatures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SAFEARRAY_SetFeatures(i64 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @VT_DISPATCH, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i8*, i8** @FADF_HAVEIID, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = call i32 @SafeArraySetIID(%struct.TYPE_5__* %12, i32* @IID_IDispatch)
  br label %41

14:                                               ; preds = %2
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @VT_UNKNOWN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i8*, i8** @FADF_HAVEIID, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = call i32 @SafeArraySetIID(%struct.TYPE_5__* %22, i32* @IID_IUnknown)
  br label %40

24:                                               ; preds = %14
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @VT_RECORD, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i8*, i8** @FADF_RECORD, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %39

32:                                               ; preds = %24
  %33 = load i8*, i8** @FADF_HAVEVARTYPE, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @SAFEARRAY_SetHiddenDWORD(%struct.TYPE_5__* %36, i64 %37)
  br label %39

39:                                               ; preds = %32, %28
  br label %40

40:                                               ; preds = %39, %18
  br label %41

41:                                               ; preds = %40, %8
  ret void
}

declare dso_local i32 @SafeArraySetIID(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @SAFEARRAY_SetHiddenDWORD(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
