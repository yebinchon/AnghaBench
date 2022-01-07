; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ccall.c_ccall_classify_struct.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ccall.c_ccall_classify_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64 }

@CCALL_RCL_MEM = common dso_local global i32 0, align 4
@CCALL_RCL_INT = common dso_local global i32 0, align 4
@CTA_SUBTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32*, i32)* @ccall_classify_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccall_classify_struct(i32* %0, %struct.TYPE_7__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 16
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @CCALL_RCL_MEM, align 4
  store i32 %16, i32* %5, align 4
  br label %91

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %80, %17
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %81

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.TYPE_7__* @ctype_get(i32* %24, i64 %27)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %29, %32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ctype_isfield(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %23
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = call %struct.TYPE_7__* @ctype_rawchild(i32* %41, %struct.TYPE_7__* %42)
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @ccall_classify_ct(i32* %40, %struct.TYPE_7__* %43, i32* %44, i32 %45)
  br label %80

47:                                               ; preds = %23
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ctype_isbitfield(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load i32, i32* @CCALL_RCL_INT, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = icmp sge i32 %56, 8
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %54
  store i32 %62, i32* %60, align 4
  br label %79

63:                                               ; preds = %47
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CTA_SUBTYPE, align 4
  %68 = call i64 @ctype_isxattrib(i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load i32*, i32** %6, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = call %struct.TYPE_7__* @ctype_rawchild(i32* %72, %struct.TYPE_7__* %73)
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @ccall_classify_struct(i32* %71, %struct.TYPE_7__* %74, i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %70, %63
  br label %79

79:                                               ; preds = %78, %53
  br label %80

80:                                               ; preds = %79, %39
  br label %18

81:                                               ; preds = %18
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %84, %87
  %89 = load i32, i32* @CCALL_RCL_MEM, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %81, %15
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_7__* @ctype_get(i32*, i64) #1

declare dso_local i64 @ctype_isfield(i32) #1

declare dso_local i32 @ccall_classify_ct(i32*, %struct.TYPE_7__*, i32*, i32) #1

declare dso_local %struct.TYPE_7__* @ctype_rawchild(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @ctype_isbitfield(i32) #1

declare dso_local i64 @ctype_isxattrib(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
