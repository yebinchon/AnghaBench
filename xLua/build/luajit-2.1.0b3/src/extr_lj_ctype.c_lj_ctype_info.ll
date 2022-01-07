; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ctype.c_lj_ctype_info.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ctype.c_lj_ctype_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@CTA_QUAL = common dso_local global i32 0, align 4
@CTA_ALIGN = common dso_local global i32 0, align 4
@CTFP_ALIGNED = common dso_local global i32 0, align 4
@CTF_ALIGN = common dso_local global i32 0, align 4
@CTMASK_CID = common dso_local global i32 0, align 4
@CTSIZE_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_ctype_info(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_3__* @ctype_get(i32* %10, i32 %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %8, align 8
  br label %13

13:                                               ; preds = %101, %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @ctype_isenum(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %101

21:                                               ; preds = %13
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @ctype_isattrib(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @CTA_QUAL, align 4
  %28 = call i64 @ctype_isxattrib(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %56

36:                                               ; preds = %25
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @CTA_ALIGN, align 4
  %39 = call i64 @ctype_isxattrib(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @CTFP_ALIGNED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @CTFP_ALIGNED, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @CTALIGN(i32 %50)
  %52 = add nsw i32 %47, %51
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %46, %41, %36
  br label %56

56:                                               ; preds = %55, %30
  br label %100

57:                                               ; preds = %21
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @CTFP_ALIGNED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @CTF_ALIGN, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %62, %57
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @CTF_ALIGN, align 4
  %71 = load i32, i32* @CTMASK_CID, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = and i32 %69, %73
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @ctype_hassize(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %68
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @ctype_isfunc(i32 %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %80, %68
  %85 = phi i1 [ true, %68 ], [ %83, %80 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @lua_assert(i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @ctype_isfunc(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* @CTSIZE_INVALID, align 4
  br label %97

93:                                               ; preds = %84
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  br label %97

97:                                               ; preds = %93, %91
  %98 = phi i32 [ %92, %91 ], [ %96, %93 ]
  %99 = load i32*, i32** %6, align 8
  store i32 %98, i32* %99, align 4
  br label %106

100:                                              ; preds = %56
  br label %101

101:                                              ; preds = %100, %20
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @ctype_cid(i32 %103)
  %105 = call %struct.TYPE_3__* @ctype_get(i32* %102, i32 %104)
  store %struct.TYPE_3__* %105, %struct.TYPE_3__** %8, align 8
  br label %13

106:                                              ; preds = %97
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_3__* @ctype_get(i32*, i32) #1

declare dso_local i64 @ctype_isenum(i32) #1

declare dso_local i64 @ctype_isattrib(i32) #1

declare dso_local i64 @ctype_isxattrib(i32, i32) #1

declare dso_local i32 @CTALIGN(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @ctype_hassize(i32) #1

declare dso_local i64 @ctype_isfunc(i32) #1

declare dso_local i32 @ctype_cid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
