; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_licence.c_licence_send_request.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_licence.c_licence_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEC_LICENCE_NEG = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@LICENCE_TAG_REQUEST = common dso_local global i32 0, align 4
@SEC_RANDOM_SIZE = common dso_local global i32 0, align 4
@SEC_MODULUS_SIZE = common dso_local global i32 0, align 4
@SEC_PADDING_SIZE = common dso_local global i32 0, align 4
@LICENCE_TAG_USER = common dso_local global i32 0, align 4
@LICENCE_TAG_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i8*)* @licence_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @licence_send_request(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* @SEC_LICENCE_NEG, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = trunc i64 %19 to i32
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %13, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = trunc i64 %23 to i32
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %13, align 4
  %27 = add nsw i32 128, %26
  %28 = load i32, i32* %14, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %15, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %15, align 4
  %33 = add nsw i32 %32, 2
  %34 = call i32* @sec_init(i32* %30, i32 %31, i32 %33)
  store i32* %34, i32** %16, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* @False, align 4
  store i32 %38, i32* %6, align 4
  br label %98

39:                                               ; preds = %5
  %40 = load i32*, i32** %16, align 8
  %41 = load i32, i32* @LICENCE_TAG_REQUEST, align 4
  %42 = call i32 @out_uint8(i32* %40, i32 %41)
  %43 = load i32*, i32** %16, align 8
  %44 = call i32 @out_uint8(i32* %43, i32 2)
  %45 = load i32*, i32** %16, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @out_uint16_le(i32* %45, i32 %46)
  %48 = load i32*, i32** %16, align 8
  %49 = call i32 @out_uint32_le(i32* %48, i32 1)
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 @out_uint16(i32* %50, i32 0)
  %52 = load i32*, i32** %16, align 8
  %53 = call i32 @out_uint16_le(i32* %52, i32 65281)
  %54 = load i32*, i32** %16, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* @SEC_RANDOM_SIZE, align 4
  %57 = call i32 @out_uint8p(i32* %54, i8* %55, i32 %56)
  %58 = load i32*, i32** %16, align 8
  %59 = call i32 @out_uint16(i32* %58, i32 0)
  %60 = load i32*, i32** %16, align 8
  %61 = load i32, i32* @SEC_MODULUS_SIZE, align 4
  %62 = load i32, i32* @SEC_PADDING_SIZE, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i32 @out_uint16_le(i32* %60, i32 %63)
  %65 = load i32*, i32** %16, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* @SEC_MODULUS_SIZE, align 4
  %68 = call i32 @out_uint8p(i32* %65, i8* %66, i32 %67)
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* @SEC_PADDING_SIZE, align 4
  %71 = call i32 @out_uint8s(i32* %69, i32 %70)
  %72 = load i32*, i32** %16, align 8
  %73 = load i32, i32* @LICENCE_TAG_USER, align 4
  %74 = call i32 @out_uint16_le(i32* %72, i32 %73)
  %75 = load i32*, i32** %16, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @out_uint16_le(i32* %75, i32 %76)
  %78 = load i32*, i32** %16, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @out_uint8p(i32* %78, i8* %79, i32 %80)
  %82 = load i32*, i32** %16, align 8
  %83 = load i32, i32* @LICENCE_TAG_HOST, align 4
  %84 = call i32 @out_uint16_le(i32* %82, i32 %83)
  %85 = load i32*, i32** %16, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @out_uint16_le(i32* %85, i32 %86)
  %88 = load i32*, i32** %16, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @out_uint8p(i32* %88, i8* %89, i32 %90)
  %92 = load i32*, i32** %16, align 8
  %93 = call i32 @s_mark_end(i32* %92)
  %94 = load i32*, i32** %7, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @sec_send(i32* %94, i32* %95, i32 %96)
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %39, %37
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @sec_init(i32*, i32, i32) #1

declare dso_local i32 @out_uint8(i32*, i32) #1

declare dso_local i32 @out_uint16_le(i32*, i32) #1

declare dso_local i32 @out_uint32_le(i32*, i32) #1

declare dso_local i32 @out_uint16(i32*, i32) #1

declare dso_local i32 @out_uint8p(i32*, i8*, i32) #1

declare dso_local i32 @out_uint8s(i32*, i32) #1

declare dso_local i32 @s_mark_end(i32*) #1

declare dso_local i32 @sec_send(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
