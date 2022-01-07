; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_decl_constinit.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_decl_constinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@CTF_CONST = common dso_local global i32 0, align 4
@LJ_ERR_FFI_INVTYPE = common dso_local global i32 0, align 4
@CT_CONSTVAL = common dso_local global i32 0, align 4
@CTF_UNSIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_12__**, i32)* @cp_decl_constinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_decl_constinit(%struct.TYPE_14__* %0, %struct.TYPE_12__** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.TYPE_12__* @ctype_get(i32 %14, i32 %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %7, align 8
  br label %17

17:                                               ; preds = %23, %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ctype_isattrib(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ctype_cid(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.TYPE_12__* @ctype_get(i32 %30, i32 %31)
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %7, align 8
  br label %17

33:                                               ; preds = %17
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ctype_isinteger(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @CTF_CONST, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %49, 4
  br i1 %50, label %51, label %55

51:                                               ; preds = %48, %43, %33
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = load i32, i32* @LJ_ERR_FFI_INVTYPE, align 4
  %54 = call i32 @cp_err(%struct.TYPE_14__* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = call i32 @cp_check(%struct.TYPE_14__* %56, i8 signext 61)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = call i32 @cp_expr_sub(%struct.TYPE_14__* %58, %struct.TYPE_13__* %10, i32 0)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %64 = call i32 @lj_ctype_new(i32 %62, %struct.TYPE_12__** %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* @CT_CONSTVAL, align 4
  %66 = load i32, i32* @CTF_CONST, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @CTINFO(i32 %65, i32 %68)
  %70 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 4, %73
  %75 = mul nsw i32 8, %74
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, %75
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @CTF_UNSIGNED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %55
  %84 = load i32, i32* %9, align 4
  %85 = sub nsw i32 4, %84
  %86 = mul nsw i32 8, %85
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, %86
  store i32 %89, i32* %87, align 4
  br label %98

90:                                               ; preds = %55
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = sub nsw i32 4, %93
  %95 = mul nsw i32 8, %94
  %96 = ashr i32 %92, %95
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %90, %83
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* %11, align 4
  ret i32 %104
}

declare dso_local %struct.TYPE_12__* @ctype_get(i32, i32) #1

declare dso_local i64 @ctype_isattrib(i32) #1

declare dso_local i32 @ctype_cid(i32) #1

declare dso_local i32 @ctype_isinteger(i32) #1

declare dso_local i32 @cp_err(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @cp_check(%struct.TYPE_14__*, i8 signext) #1

declare dso_local i32 @cp_expr_sub(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @lj_ctype_new(i32, %struct.TYPE_12__**) #1

declare dso_local i32 @CTINFO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
