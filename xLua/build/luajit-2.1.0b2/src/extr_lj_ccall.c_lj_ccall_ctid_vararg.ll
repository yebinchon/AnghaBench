; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_ccall.c_lj_ccall_ctid_vararg.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_ccall.c_lj_ccall_ctid_vararg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@CTID_DOUBLE = common dso_local global i32 0, align 4
@CT_PTR = common dso_local global i32 0, align 4
@CTALIGN_PTR = common dso_local global i32 0, align 4
@CTSIZE_PTR = common dso_local global i32 0, align 4
@CTID_P_CCHAR = common dso_local global i32 0, align 4
@CTID_BOOL = common dso_local global i32 0, align 4
@CTID_P_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_ccall_ctid_vararg(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i64 @tvisnumber(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @CTID_DOUBLE, align 4
  store i32 %12, i32* %3, align 4
  br label %93

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @tviscdata(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %79

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.TYPE_5__* @cdataV(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.TYPE_4__* @ctype_get(i32* %22, i32 %23)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %7, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ctype_isrefarray(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %17
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @CT_PTR, align 4
  %33 = load i32, i32* @CTALIGN_PTR, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ctype_cid(i32 %36)
  %38 = or i32 %33, %37
  %39 = call i32 @CTINFO(i32 %32, i32 %38)
  %40 = load i32, i32* @CTSIZE_PTR, align 4
  %41 = call i32 @lj_ctype_intern(i32* %31, i32 %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %93

42:                                               ; preds = %17
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ctype_isstruct(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ctype_isfunc(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %48, %42
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @CT_PTR, align 4
  %57 = load i32, i32* @CTALIGN_PTR, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @CTINFO(i32 %56, i32 %59)
  %61 = load i32, i32* @CTSIZE_PTR, align 4
  %62 = call i32 @lj_ctype_intern(i32* %55, i32 %60, i32 %61)
  store i32 %62, i32* %3, align 4
  br label %93

63:                                               ; preds = %48
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @ctype_isfp(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @CTID_DOUBLE, align 4
  store i32 %76, i32* %3, align 4
  br label %93

77:                                               ; preds = %69, %63
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %93

79:                                               ; preds = %13
  %80 = load i32*, i32** %5, align 8
  %81 = call i64 @tvisstr(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @CTID_P_CCHAR, align 4
  store i32 %84, i32* %3, align 4
  br label %93

85:                                               ; preds = %79
  %86 = load i32*, i32** %5, align 8
  %87 = call i64 @tvisbool(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @CTID_BOOL, align 4
  store i32 %90, i32* %3, align 4
  br label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @CTID_P_VOID, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %89, %83, %77, %75, %54, %30, %11
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @tvisnumber(i32*) #1

declare dso_local i64 @tviscdata(i32*) #1

declare dso_local %struct.TYPE_5__* @cdataV(i32*) #1

declare dso_local %struct.TYPE_4__* @ctype_get(i32*, i32) #1

declare dso_local i64 @ctype_isrefarray(i32) #1

declare dso_local i32 @lj_ctype_intern(i32*, i32, i32) #1

declare dso_local i32 @CTINFO(i32, i32) #1

declare dso_local i32 @ctype_cid(i32) #1

declare dso_local i64 @ctype_isstruct(i32) #1

declare dso_local i64 @ctype_isfunc(i32) #1

declare dso_local i64 @ctype_isfp(i32) #1

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local i64 @tvisbool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
