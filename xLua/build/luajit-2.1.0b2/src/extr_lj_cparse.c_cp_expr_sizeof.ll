; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cparse.c_cp_expr_sizeof.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cparse.c_cp_expr_sizeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32 }

@CTSIZE_INVALID = common dso_local global i64 0, align 8
@CTID_A_CCHAR = common dso_local global i64 0, align 8
@LJ_ERR_FFI_INVSIZE = common dso_local global i32 0, align 4
@CTID_UINT32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_14__*, i32)* @cp_expr_sizeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_expr_sizeof(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = call i64 @cp_opt(%struct.TYPE_15__* %9, i8 signext 40)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = call i64 @cp_istypedecl(%struct.TYPE_15__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = call i64 @cp_decl_abstract(%struct.TYPE_15__* %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %25

21:                                               ; preds = %12
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = call i32 @cp_expr_comma(%struct.TYPE_15__* %22, %struct.TYPE_14__* %23)
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = call i32 @cp_check(%struct.TYPE_15__* %26, i8 signext 41)
  br label %32

28:                                               ; preds = %3
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = call i32 @cp_expr_unary(%struct.TYPE_15__* %29, %struct.TYPE_14__* %30)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @lj_ctype_info(i32 %35, i64 %38, i64* %7)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %32
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @CTSIZE_INVALID, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i64, i64* %7, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  br label %62

51:                                               ; preds = %42
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CTID_A_CCHAR, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %59 = load i32, i32* @LJ_ERR_FFI_INVSIZE, align 4
  %60 = call i32 @cp_err(%struct.TYPE_15__* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %61, %46
  br label %69

63:                                               ; preds = %32
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @ctype_align(i32 %64)
  %66 = shl i32 1, %65
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %63, %62
  %70 = load i64, i64* @CTID_UINT32, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  ret void
}

declare dso_local i64 @cp_opt(%struct.TYPE_15__*, i8 signext) #1

declare dso_local i64 @cp_istypedecl(%struct.TYPE_15__*) #1

declare dso_local i64 @cp_decl_abstract(%struct.TYPE_15__*) #1

declare dso_local i32 @cp_expr_comma(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @cp_check(%struct.TYPE_15__*, i8 signext) #1

declare dso_local i32 @cp_expr_unary(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @lj_ctype_info(i32, i64, i64*) #1

declare dso_local i32 @cp_err(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ctype_align(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
