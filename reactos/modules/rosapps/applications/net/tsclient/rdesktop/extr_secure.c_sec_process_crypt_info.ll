; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_secure.c_sec_process_crypt_info.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_secure.c_sec_process_crypt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32*, i32* }

@SEC_RANDOM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to parse crypt info\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Generating client random\0A\00", align 1
@SEC_MAX_MODULUS_SIZE = common dso_local global i32 0, align 4
@RSA_NO_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @sec_process_crypt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_process_crypt_info(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* @SEC_RANDOM_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @sec_parse_crypt_info(%struct.TYPE_7__* %19, i32 %20, i32* %10, i32** %5, i32** %6, i32** %7)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = call i32 @DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %106

25:                                               ; preds = %2
  %26 = call i32 @DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @generate_random(i32* %18)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* null, %31
  br i1 %32, label %33, label %88

33:                                               ; preds = %25
  %34 = load i32, i32* @SEC_MAX_MODULUS_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %12, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %13, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SEC_RANDOM_SIZE, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @memset(i32* %37, i32 0, i32 %44)
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %37, i64 %47
  %49 = load i32, i32* @SEC_RANDOM_SIZE, align 4
  %50 = call i32 @memcpy(i32* %48, i32* %18, i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %37, i64 %52
  %54 = load i32, i32* @SEC_RANDOM_SIZE, align 4
  %55 = call i32 @reverse(i32* %53, i32 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @RSA_NO_PADDING, align 4
  %69 = call i32 @RSA_public_encrypt(i32 %59, i32* %37, i32* %63, i32* %67, i32 %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @reverse(i32* %73, i32 %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @RSA_free(i32* %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i32* null, i32** %86, align 8
  %87 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %87)
  br label %101

88:                                               ; preds = %25
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @SEC_RANDOM_SIZE, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @sec_rsa_encrypt(i32* %92, i32* %18, i32 %93, i32 %97, i32* %98, i32* %99)
  br label %101

101:                                              ; preds = %88, %33
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @sec_generate_keys(%struct.TYPE_7__* %102, i32* %18, i32* %103, i32 %104)
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %101, %23
  %107 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %11, align 4
  switch i32 %108, label %110 [
    i32 0, label %109
    i32 1, label %109
  ]

109:                                              ; preds = %106, %106
  ret void

110:                                              ; preds = %106
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sec_parse_crypt_info(%struct.TYPE_7__*, i32, i32*, i32**, i32**, i32**) #2

declare dso_local i32 @DEBUG(i8*) #2

declare dso_local i32 @generate_random(i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @reverse(i32*, i32) #2

declare dso_local i32 @RSA_public_encrypt(i32, i32*, i32*, i32*, i32) #2

declare dso_local i32 @RSA_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @sec_rsa_encrypt(i32*, i32*, i32, i32, i32*, i32*) #2

declare dso_local i32 @sec_generate_keys(%struct.TYPE_7__*, i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
