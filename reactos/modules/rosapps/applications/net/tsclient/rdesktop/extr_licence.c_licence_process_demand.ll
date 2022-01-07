; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_licence.c_licence_process_demand.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_licence.c_licence_process_demand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@SEC_MODULUS_SIZE = common dso_local global i32 0, align 4
@LICENCE_SIGNATURE_SIZE = common dso_local global i32 0, align 4
@LICENCE_HWID_SIZE = common dso_local global i32 0, align 4
@SEC_RANDOM_SIZE = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @licence_process_demand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @licence_process_demand(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @SEC_MODULUS_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32, i32* @LICENCE_SIGNATURE_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %22 = load i32, i32* @LICENCE_HWID_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @SEC_RANDOM_SIZE, align 4
  %28 = call i32 @in_uint8p(i32 %25, i32* %26, i32 %27)
  %29 = mul nuw i64 4, %16
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(i32* %18, i32 0, i32 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @licence_generate_keys(%struct.TYPE_10__* %32, i32* %18, i32* %33, i32* %18)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = call i32 @load_licence(%struct.TYPE_10__* %35, i32** %11)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %2
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = call i32 @licence_generate_hwid(%struct.TYPE_10__* %40, i32* %24)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nuw i64 4, %23
  %47 = trunc i64 %46 to i32
  %48 = call i32 @sec_sign(i32* %21, i32 16, i32 %45, i32 16, i32* %24, i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @RC4_set_key(i32* %13, i32 16, i32 %52)
  %54 = mul nuw i64 4, %23
  %55 = trunc i64 %54 to i32
  %56 = call i32 @RC4(i32* %13, i32 %55, i32* %24, i32* %24)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @licence_present(%struct.TYPE_10__* %57, i32* %18, i32* %18, i32* %58, i32 %59, i32* %24, i32* %21)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %39
  %63 = load i32, i32* @False, align 4
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %77

64:                                               ; preds = %39
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @free(i32* %65)
  %67 = load i32, i32* @True, align 4
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %77

68:                                               ; preds = %2
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @licence_send_request(%struct.TYPE_10__* %69, i32* %18, i32* %18, i32 %72, i32 %75)
  store i32 %76, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %77

77:                                               ; preds = %68, %64, %62
  %78 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @in_uint8p(i32, i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @licence_generate_keys(%struct.TYPE_10__*, i32*, i32*, i32*) #2

declare dso_local i32 @load_licence(%struct.TYPE_10__*, i32**) #2

declare dso_local i32 @licence_generate_hwid(%struct.TYPE_10__*, i32*) #2

declare dso_local i32 @sec_sign(i32*, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @RC4_set_key(i32*, i32, i32) #2

declare dso_local i32 @RC4(i32*, i32, i32*, i32*) #2

declare dso_local i32 @licence_present(%struct.TYPE_10__*, i32*, i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @licence_send_request(%struct.TYPE_10__*, i32*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
