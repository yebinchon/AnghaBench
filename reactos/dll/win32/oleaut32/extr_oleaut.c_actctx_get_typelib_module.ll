; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_oleaut.c_actctx_get_typelib_module.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_oleaut.c_actctx_get_typelib_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifacepsredirect_data = type { i32 }
%struct.tlibredirect_data = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }

@ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"need larger module buffer, %u\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32)* @actctx_get_typelib_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @actctx_get_typelib_module(i32* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifacepsredirect_data*, align 8
  %9 = alloca %struct.tlibredirect_data*, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 24, i32* %12, align 8
  %13 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @FindActCtxSectionGuid(i32 0, i32* null, i32 %13, i32* %14, %struct.TYPE_3__* %10)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %4, align 4
  br label %72

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ifacepsredirect_data*
  store %struct.ifacepsredirect_data* %22, %struct.ifacepsredirect_data** %8, align 8
  %23 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION, align 4
  %24 = load %struct.ifacepsredirect_data*, %struct.ifacepsredirect_data** %8, align 8
  %25 = getelementptr inbounds %struct.ifacepsredirect_data, %struct.ifacepsredirect_data* %24, i32 0, i32 0
  %26 = call i32 @FindActCtxSectionGuid(i32 0, i32* null, i32 %23, i32* %25, %struct.TYPE_3__* %10)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %4, align 4
  br label %72

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.tlibredirect_data*
  store %struct.tlibredirect_data* %33, %struct.tlibredirect_data** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %9, align 8
  %38 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = bitcast i32* %41 to i64*
  store i64* %42, i64** %11, align 8
  %43 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %9, align 8
  %44 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %46, 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp uge i64 %47, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %30
  %52 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %9, align 8
  %53 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %4, align 4
  br label %72

57:                                               ; preds = %30
  %58 = load i64*, i64** %6, align 8
  %59 = load i64*, i64** %11, align 8
  %60 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %9, align 8
  %61 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @memcpy(i64* %58, i64* %59, i32 %62)
  %64 = load i64*, i64** %6, align 8
  %65 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %9, align 8
  %66 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = udiv i64 %68, 8
  %70 = getelementptr inbounds i64, i64* %64, i64 %69
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %57, %51, %28, %17
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @FindActCtxSectionGuid(i32, i32*, i32, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
