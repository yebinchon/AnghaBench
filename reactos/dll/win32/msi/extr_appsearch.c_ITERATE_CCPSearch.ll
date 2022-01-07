; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ITERATE_CCPSearch.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ITERATE_CCPSearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ITERATE_CCPSearch.success = internal constant [12 x i8] c"CCP_Success\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Found signature %s\0A\00", align 1
@szOne = common dso_local global i32 0, align 4
@ERROR_NO_MORE_ITEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @ITERATE_CCPSearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ITERATE_CCPSearch(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %5, align 8
  store i32* null, i32** %7, align 8
  %11 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @MSI_RecordGetString(i32* %12, i32 1)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @debugstr_w(i32 %14)
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ACTION_AppSearchSigName(%struct.TYPE_5__* %17, i32 %18, i32* %8, i32** %7)
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @debugstr_w(i32 %23)
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @szOne, align 4
  %30 = call i32 @msi_set_property(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @ITERATE_CCPSearch.success, i64 0, i64 0), i32 %29, i32 -1)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @msi_free(i32* %31)
  %33 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %22, %2
  %35 = call i32 @ACTION_FreeSignature(i32* %8)
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

declare dso_local i32 @MSI_RecordGetString(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @ACTION_AppSearchSigName(%struct.TYPE_5__*, i32, i32*, i32**) #1

declare dso_local i32 @msi_set_property(i32, i8*, i32, i32) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i32 @ACTION_FreeSignature(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
