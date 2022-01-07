; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_secure.c_sec_parse_public_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_secure.c_sec_parse_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@SEC_RSA_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"RSA magic 0x%x\0A\00", align 1
@False = common dso_local global i32 0, align 4
@SEC_PADDING_SIZE = common dso_local global i64 0, align 8
@SEC_MAX_MODULUS_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Bad server public key size (%u bits)\0A\00", align 1
@SEC_EXPONENT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32**, i32**)* @sec_parse_public_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_parse_public_key(%struct.TYPE_5__* %0, i32 %1, i32** %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i64, i64* %10, align 8
  %14 = call i32 @in_uint32_le(i32 %12, i64 %13)
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @SEC_RSA_MAGIC, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @False, align 4
  store i32 %21, i32* %5, align 4
  br label %62

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @in_uint32_le(i32 %23, i64 %24)
  %26 = load i64, i64* @SEC_PADDING_SIZE, align 8
  %27 = load i64, i64* %11, align 8
  %28 = sub nsw i64 %27, %26
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp slt i64 %29, 64
  br i1 %30, label %35, label %31

31:                                               ; preds = %22
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @SEC_MAX_MODULUS_SIZE, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31, %22
  %36 = load i64, i64* %11, align 8
  %37 = mul nsw i64 %36, 8
  %38 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @False, align 4
  store i32 %39, i32* %5, align 4
  br label %62

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @in_uint8s(i32 %41, i64 8)
  %43 = load i32, i32* %7, align 4
  %44 = load i32**, i32*** %9, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @SEC_EXPONENT_SIZE, align 8
  %47 = call i32 @in_uint8p(i32 %43, i32* %45, i64 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load i32**, i32*** %8, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @in_uint8p(i32 %48, i32* %50, i64 %51)
  %53 = load i32, i32* %7, align 4
  %54 = load i64, i64* @SEC_PADDING_SIZE, align 8
  %55 = call i32 @in_uint8s(i32 %53, i64 %54)
  %56 = load i64, i64* %11, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @s_check(i32 %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %40, %35, %18
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @in_uint32_le(i32, i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i32 @in_uint8s(i32, i64) #1

declare dso_local i32 @in_uint8p(i32, i32*, i64) #1

declare dso_local i32 @s_check(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
