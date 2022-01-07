; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_ffi.c_ffi_checkctype.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_ffi.c_ffi_checkctype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__, i32*, i8*, i8*, i32*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"C type\00", align 1
@CPARSE_MODE_ABSTRACT = common dso_local global i32 0, align 4
@CPARSE_MODE_NOIMPLICIT = common dso_local global i32 0, align 4
@LJ_ERR_FFI_NUMPARAM = common dso_local global i32 0, align 4
@CTID_CTYPEID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i32*, i32*)* @ffi_checkctype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ffi_checkctype(%struct.TYPE_13__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ult i32* %16, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %63, %21
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = call i32 @lj_err_argtype(%struct.TYPE_13__* %23, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %3
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @tvisstr(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = load i32*, i32** %8, align 8
  %31 = call i32* @strV(i32* %30)
  store i32* %31, i32** %9, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 6
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %33, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 5
  store i32* %34, i32** %35, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i8* @strdata(i32* %36)
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 4
  store i8* %37, i8** %38, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i8* @strdata(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  store i8* %40, i8** %41, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  store i32* %42, i32** %43, align 8
  %44 = load i32, i32* @CPARSE_MODE_ABSTRACT, align 4
  %45 = load i32, i32* @CPARSE_MODE_NOIMPLICIT, align 4
  %46 = or i32 %44, %45
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = call i32 @lj_cparse(%struct.TYPE_15__* %10)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %29
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @lj_err_throw(%struct.TYPE_13__* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %29
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %4, align 8
  br label %96

59:                                               ; preds = %25
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @tviscdata(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  br label %22

64:                                               ; preds = %59
  %65 = load i32*, i32** %7, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ult i32* %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = load i32, i32* @LJ_ERR_FFI_NUMPARAM, align 4
  %76 = call i32 @lj_err_arg(%struct.TYPE_13__* %74, i32 1, i32 %75)
  br label %77

77:                                               ; preds = %73, %67, %64
  %78 = load i32*, i32** %8, align 8
  %79 = call %struct.TYPE_14__* @cdataV(i32* %78)
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %12, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CTID_CTYPEID, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %87 = call i64 @cdataptr(%struct.TYPE_14__* %86)
  %88 = inttoptr i64 %87 to i64*
  %89 = load i64, i64* %88, align 8
  br label %94

90:                                               ; preds = %77
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  br label %94

94:                                               ; preds = %90, %85
  %95 = phi i64 [ %89, %85 ], [ %93, %90 ]
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %94, %55
  %97 = load i64, i64* %4, align 8
  ret i64 %97
}

declare dso_local i32 @lj_err_argtype(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local i32* @strV(i32*) #1

declare dso_local i8* @strdata(i32*) #1

declare dso_local i32 @lj_cparse(%struct.TYPE_15__*) #1

declare dso_local i32 @lj_err_throw(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @tviscdata(i32*) #1

declare dso_local i32 @lj_err_arg(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @cdataV(i32*) #1

declare dso_local i64 @cdataptr(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
