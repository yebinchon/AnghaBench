; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_ffi.c_ffi_pairs.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_ffi.c_ffi_pairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@LJ_ERR_FFI_BADMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ffi_pairs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffi_pairs(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @ctype_cts(i32* %9)
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.TYPE_5__* @ffi_checkcdata(i32* %11, i32 1)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.TYPE_4__* @ctype_raw(i32* %15, i32 %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %7, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ctype_isptr(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ctype_cid(i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %23, %2
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32* @lj_ctype_meta(i32* %29, i32 %30, i32 %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %28
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @LJ_ERR_FFI_BADMM, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @lj_ctype_repr(i32* %38, i32 %39, i32* null)
  %41 = call i32 @strdata(i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @G(i32* %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @mmname_str(i32 %43, i32 %44)
  %46 = call i32 @strdata(i32 %45)
  %47 = call i32 @lj_err_callerv(i32* %36, i32 %37, i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %35, %28
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @lj_meta_tailcall(i32* %49, i32* %50)
  ret i32 %51
}

declare dso_local i32* @ctype_cts(i32*) #1

declare dso_local %struct.TYPE_5__* @ffi_checkcdata(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @ctype_raw(i32*, i32) #1

declare dso_local i64 @ctype_isptr(i32) #1

declare dso_local i32 @ctype_cid(i32) #1

declare dso_local i32* @lj_ctype_meta(i32*, i32, i32) #1

declare dso_local i32 @lj_err_callerv(i32*, i32, i32, i32) #1

declare dso_local i32 @strdata(i32) #1

declare dso_local i32 @lj_ctype_repr(i32*, i32, i32*) #1

declare dso_local i32 @mmname_str(i32, i32) #1

declare dso_local i32 @G(i32*) #1

declare dso_local i32 @lj_meta_tailcall(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
