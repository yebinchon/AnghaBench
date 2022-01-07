; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cconv.c_lj_cconv_bf_tv.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cconv.c_lj_cconv_bf_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@CTF_BOOL = common dso_local global i32 0, align 4
@CTID_BOOL = common dso_local global i32 0, align 4
@CTF_UNSIGNED = common dso_local global i32 0, align 4
@CTID_UINT32 = common dso_local global i32 0, align 4
@CTID_INT32 = common dso_local global i32 0, align 4
@LJ_ERR_FFI_NYIPACKBIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_cconv_bf_tv(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @ctype_isbitfield(i32 %19)
  %21 = call i32 @lua_assert(i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @CTF_BOOL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ctype_bitbsz(i32 %27)
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = call i32 @lua_assert(i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = load i32, i32* @CTID_BOOL, align 4
  %35 = call i32 @ctype_get(%struct.TYPE_8__* %33, i32 %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @lj_cconv_ct_tv(%struct.TYPE_8__* %32, i32 %35, i32* %14, i32* %36, i32 0)
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %12, align 4
  br label %56

39:                                               ; preds = %4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @CTF_UNSIGNED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @CTID_UINT32, align 4
  br label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @CTID_INT32, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %15, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @ctype_get(%struct.TYPE_8__* %51, i32 %52)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @lj_cconv_ct_tv(%struct.TYPE_8__* %50, i32 %53, i32* %12, i32* %54, i32 0)
  br label %56

56:                                               ; preds = %48, %26
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @ctype_bitpos(i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @ctype_bitbsz(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @ctype_bitcsz(i32 %62)
  %64 = mul nsw i32 8, %63
  %65 = icmp slt i32 %61, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @lua_assert(i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %56
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @ctype_bitcsz(i32 %72)
  %74 = mul nsw i32 8, %73
  %75 = icmp sle i32 %71, %74
  br label %76

76:                                               ; preds = %70, %56
  %77 = phi i1 [ false, %56 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @lua_assert(i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @ctype_bitcsz(i32 %83)
  %85 = mul nsw i32 8, %84
  %86 = icmp sgt i32 %82, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %76
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @LJ_ERR_FFI_NYIPACKBIT, align 4
  %92 = call i32 @lj_err_caller(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %76
  %94 = load i32, i32* %11, align 4
  %95 = shl i32 1, %94
  %96 = sub i32 %95, 1
  %97 = load i32, i32* %10, align 4
  %98 = shl i32 %96, %97
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %10, align 4
  %101 = shl i32 %99, %100
  %102 = load i32, i32* %13, align 4
  %103 = and i32 %101, %102
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @ctype_bitcsz(i32 %104)
  switch i32 %105, label %133 [
    i32 4, label %106
    i32 2, label %115
    i32 1, label %124
  ]

106:                                              ; preds = %93
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %13, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = load i32, i32* %12, align 4
  %113 = or i32 %111, %112
  %114 = load i32*, i32** %7, align 8
  store i32 %113, i32* %114, align 4
  br label %135

115:                                              ; preds = %93
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %13, align 4
  %119 = xor i32 %118, -1
  %120 = and i32 %117, %119
  %121 = load i32, i32* %12, align 4
  %122 = or i32 %120, %121
  %123 = load i32*, i32** %7, align 8
  store i32 %122, i32* %123, align 4
  br label %135

124:                                              ; preds = %93
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %13, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %126, %128
  %130 = load i32, i32* %12, align 4
  %131 = or i32 %129, %130
  %132 = load i32*, i32** %7, align 8
  store i32 %131, i32* %132, align 4
  br label %135

133:                                              ; preds = %93
  %134 = call i32 @lua_assert(i32 0)
  br label %135

135:                                              ; preds = %133, %124, %115, %106
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @ctype_isbitfield(i32) #1

declare dso_local i32 @ctype_bitbsz(i32) #1

declare dso_local i32 @lj_cconv_ct_tv(%struct.TYPE_8__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ctype_get(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ctype_bitpos(i32) #1

declare dso_local i32 @ctype_bitcsz(i32) #1

declare dso_local i32 @lj_err_caller(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
