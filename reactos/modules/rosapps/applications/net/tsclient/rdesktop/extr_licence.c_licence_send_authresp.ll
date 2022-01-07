; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_licence.c_licence_send_authresp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_licence.c_licence_send_authresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEC_LICENCE_NEG = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@LICENCE_TAG_AUTHRESP = common dso_local global i32 0, align 4
@LICENCE_TOKEN_SIZE = common dso_local global i32 0, align 4
@LICENCE_HWID_SIZE = common dso_local global i32 0, align 4
@LICENCE_SIGNATURE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @licence_send_authresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @licence_send_authresp(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* @SEC_LICENCE_NEG, align 4
  store i32 %13, i32* %10, align 4
  store i32 58, i32* %11, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %11, align 4
  %17 = add nsw i32 %16, 2
  %18 = call i32* @sec_init(i32* %14, i32 %15, i32 %17)
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @False, align 4
  store i32 %22, i32* %5, align 4
  br label %60

23:                                               ; preds = %4
  %24 = load i32*, i32** %12, align 8
  %25 = load i32, i32* @LICENCE_TAG_AUTHRESP, align 4
  %26 = call i32 @out_uint8(i32* %24, i32 %25)
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @out_uint8(i32* %27, i32 2)
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @out_uint16_le(i32* %29, i32 %30)
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @out_uint16_le(i32* %32, i32 1)
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* @LICENCE_TOKEN_SIZE, align 4
  %36 = call i32 @out_uint16_le(i32* %34, i32 %35)
  %37 = load i32*, i32** %12, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @LICENCE_TOKEN_SIZE, align 4
  %40 = call i32 @out_uint8p(i32* %37, i32* %38, i32 %39)
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @out_uint16_le(i32* %41, i32 1)
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* @LICENCE_HWID_SIZE, align 4
  %45 = call i32 @out_uint16_le(i32* %43, i32 %44)
  %46 = load i32*, i32** %12, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* @LICENCE_HWID_SIZE, align 4
  %49 = call i32 @out_uint8p(i32* %46, i32* %47, i32 %48)
  %50 = load i32*, i32** %12, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* @LICENCE_SIGNATURE_SIZE, align 4
  %53 = call i32 @out_uint8p(i32* %50, i32* %51, i32 %52)
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @s_mark_end(i32* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @sec_send(i32* %56, i32* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %23, %21
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32* @sec_init(i32*, i32, i32) #1

declare dso_local i32 @out_uint8(i32*, i32) #1

declare dso_local i32 @out_uint16_le(i32*, i32) #1

declare dso_local i32 @out_uint8p(i32*, i32*, i32) #1

declare dso_local i32 @s_mark_end(i32*) #1

declare dso_local i32 @sec_send(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
