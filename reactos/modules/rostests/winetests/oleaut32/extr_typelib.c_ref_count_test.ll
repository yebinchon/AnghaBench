; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_ref_count_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_ref_count_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Loading type library\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not load type library\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"ITypeLib_GetTypeInfo failed on index = 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"ITypeLib destroyed while ITypeInfo has back pointer\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"ITypeLib_GetTypeInfo returned different pointers for same indexes\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"ITypeLib should be destroyed here.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ref_count_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ref_count_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = call i32 @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @LoadTypeLib(i32 %9, i32** %3)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %61

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @ITypeLib_GetTypeInfo(i32* %21, i32 1, i32** %4)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @ITypeLib_Release(i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %20
  br label %61

37:                                               ; preds = %20
  %38 = load i32*, i32** %3, align 8
  %39 = call i64 @ITypeLib_GetTypeInfo(i32* %38, i32 1, i32** %5)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = icmp eq i32* %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @ITypeLib_AddRef(i32* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @ITypeInfo_Release(i32* %52)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @ITypeInfo_Release(i32* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @ITypeLib_Release(i32* %56)
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %61

61:                                               ; preds = %37, %36, %19
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i64 @LoadTypeLib(i32, i32**) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @ITypeLib_GetTypeInfo(i32*, i32, i32**) #1

declare dso_local i32 @ITypeLib_Release(i32*) #1

declare dso_local i32 @ITypeLib_AddRef(i32*) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
