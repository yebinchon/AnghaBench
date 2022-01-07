; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_Context_QueryInterface.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_Context_QueryInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@IID_IComThreadingInfo = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@IID_IContextCallback = common dso_local global i32 0, align 4
@IID_IObjContext = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"interface not implemented %s\0A\00", align 1
@E_NOINTERFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32**)* @Context_QueryInterface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Context_QueryInterface(%struct.TYPE_3__* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %8 = load i32**, i32*** %7, align 8
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @IsEqualIID(i32 %9, i32* @IID_IComThreadingInfo)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @IsEqualIID(i32 %13, i32* @IID_IUnknown)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12, %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32**, i32*** %7, align 8
  store i32* %18, i32** %19, align 8
  br label %38

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @IsEqualIID(i32 %21, i32* @IID_IContextCallback)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32**, i32*** %7, align 8
  store i32* %26, i32** %27, align 8
  br label %37

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @IsEqualIID(i32 %29, i32* @IID_IObjContext)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32**, i32*** %7, align 8
  store i32* %34, i32** %35, align 8
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %24
  br label %38

38:                                               ; preds = %37, %16
  %39 = load i32**, i32*** %7, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32**, i32*** %7, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @IUnknown_AddRef(i32* %44)
  %46 = load i32, i32* @S_OK, align 4
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @debugstr_guid(i32 %48)
  %50 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @IsEqualIID(i32, i32*) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_guid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
